#!/usr/bin/env bash
# Check a running Pro instance against the vendored spec.
#
# This is the check the mocked suites cannot make. Their fixtures were written
# from the same misreading as the client, so they agreed with each other and
# with nothing else: `GET /v1/jobs/{id}/result` was typed against the job
# METADATA schema and every test still passed. Here the server decides.
set -euo pipefail

api="${1:-http://127.0.0.1:8080}"
root="$(cd "$(dirname "$0")/.." && pwd)"
failures=0

# Run an assertion without `set -e` killing the script on the first failure:
# the point is to report every mismatch, not just the earliest.
assert() { # name, then the command to run
  local name="$1"
  shift
  if "$@"; then
    printf '  PASS  %s\n' "$name"
  else
    printf '  FAIL  %s\n' "$name"
    failures=$((failures + 1))
  fi
}

tier_is_pro() {
  [ "$(printf '%s' "$health" | python3 -c 'import json,sys; print(json.load(sys.stdin)["tier"])')" = "pro" ]
}

surface_matches_vendored_spec() {
  python3 "$root/scripts/pro_compare_surface.py" "$root/spec/pro/openapi.yaml" /tmp/pro-live-spec.json
}

key_was_minted() { [ -n "$key" ]; }

job_result_matches_schema() {
  python3 "$root/scripts/pro_check_job_result.py" /tmp/pro-job-result.json "$root/spec/pro/openapi.yaml"
}

echo "== tier"
health="$(curl -fsS "$api/healthz")"
assert "/healthz reports tier=pro" tier_is_pro

echo "== served surface vs vendored spec"
curl -fsS "$api/api-doc/openapi.json" > /tmp/pro-live-spec.json
assert "every vendored Pro operation is served" surface_matches_vendored_spec

echo "== control plane (the 13 operations no SDK could reach)"
key="$("$root/scripts/pro-project-key.sh" "$api" || true)"
assert "minted a project API key" key_was_minted

echo "== paths the tier-dependent and tier-gated operations depend on"
# Saved presets are why the client was wrong: Enterprise spells the collection
# `/v1/saved_presets` and Pro spells it `/v1/saved-presets`, and neither serves
# the other's spelling. The client now picks the spelling from the probed tier,
# so assert that premise against the server instead of trusting it.
status_of() { # path
  curl -o /dev/null -s -w '%{http_code}' "$api$1" -H "Authorization: Bearer $key"
}
serves() { [ "$(status_of "$1")" != "404" ]; }
does_not_serve() { [ "$(status_of "$1")" = "404" ]; }

assert "Pro serves /v1/saved-presets (hyphen)" serves /v1/saved-presets
assert "Pro does not serve /v1/saved_presets (underscore)" does_not_serve /v1/saved_presets
assert "Pro serves /v1/auto-tune" serves /v1/auto-tune
assert "Pro serves /v1/auto-tune/capabilities" serves /v1/auto-tune/capabilities
assert "Pro serves /v1/tuning-profiles" serves /v1/tuning-profiles
# Enrich and extraction events are Enterprise-only and the client gates them to
# that tier, so confirm Pro really does not answer them.
assert "Pro does not serve /v1/enrich" does_not_serve /v1/enrich
assert "Pro does not serve /v1/extractions" does_not_serve /v1/extractions

echo "== JobResult"
# /v1/extract is application/json only: an ExtractRequest carrying base64
# document bytes. A multipart POST here returns 415.
job=""
if [ -n "$key" ]; then
  printf 'contract check sample document\n' |
    python3 -c 'import base64,json,sys; print(json.dumps({"documents":[{"filename":"sample.txt","mime_type":"text/plain","data":base64.b64encode(sys.stdin.buffer.read()).decode()}]}))' \
      > /tmp/pro-extract-request.json
  job="$(curl -fsS -X POST "$api/v1/extract" \
    -H "Authorization: Bearer $key" -H 'Content-Type: application/json' \
    --data @/tmp/pro-extract-request.json |
    python3 -c 'import json,sys; print(json.load(sys.stdin)["job_ids"][0])' 2>/dev/null || true)"
fi

if [ -z "$job" ]; then
  printf '  FAIL  %s\n' "could not submit an extraction, so JobResult went unchecked"
  failures=$((failures + 1))
else
  for _ in $(seq 1 60); do
    status="$(curl -fsS "$api/v1/jobs/$job" -H "Authorization: Bearer $key" |
      python3 -c 'import json,sys; print(json.load(sys.stdin)["status"])')"
    case "$status" in completed | partial_success | failed | cancelled) break ;; esac
    sleep 2
  done
  curl -fsS "$api/v1/jobs/$job/result" -H "Authorization: Bearer $key" > /tmp/pro-job-result.json
  assert "GET /v1/jobs/{id}/result matches the JobResult schema" job_result_matches_schema
fi

echo
if [ "$failures" -eq 0 ]; then
  echo "contract check: PASS"
else
  echo "contract check: $failures FAILED"
fi
exit "$failures"
