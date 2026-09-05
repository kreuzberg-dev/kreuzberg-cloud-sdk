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

echo "== JobResult"
job=""
if [ -n "$key" ]; then
  job="$(curl -fsS -X POST "$api/v1/extract" -H "Authorization: Bearer $key" \
    -F "files=@$root/scripts/pro-contract-check.sh;filename=sample.txt" |
    python3 -c 'import json,sys; d=json.load(sys.stdin); print(d.get("job_id") or d["jobs"][0]["id"])' 2>/dev/null || true)"
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
