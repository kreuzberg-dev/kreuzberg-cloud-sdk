#!/usr/bin/env bash
# Mint a project API key against a running Pro instance and print it.
#
# The admin key is the operator credential the container generates on first
# boot; a project key is what an SDK caller actually uses. Minting one exercises
# POST /v1/projects and POST /v1/projects/{id}/api-keys -- the two operations no
# SDK could reach before, and the reason a published Pro image older than those
# routes cannot be used for SDK testing at all.
set -euo pipefail

api="${1:-http://127.0.0.1:8080}"
container="${PRO_CONTAINER:-xberg-enterprise-pro-1}"

admin_key="${XBERG_ADMIN_KEY:-}"
if [ -z "$admin_key" ]; then
  admin_key="$(docker exec "$container" cat /data/admin-key 2>/dev/null || true)"
fi
if [ -z "$admin_key" ]; then
  echo "no admin key: set XBERG_ADMIN_KEY, or start the stack so $container holds /data/admin-key" >&2
  exit 1
fi

slug="sdk-$(date +%s)"
project="$(curl -fsS -X POST "$api/v1/projects" \
  -H "Authorization: Bearer $admin_key" -H 'Content-Type: application/json' \
  -d "{\"name\":\"SDK contract check\",\"slug\":\"$slug\"}" |
  python3 -c 'import json,sys; print(json.load(sys.stdin)["id"])')"

curl -fsS -X POST "$api/v1/projects/$project/api-keys" \
  -H "Authorization: Bearer $admin_key" -H 'Content-Type: application/json' \
  -d '{"name":"sdk-contract-check"}' |
  python3 -c 'import json,sys; d=json.load(sys.stdin); print(d.get("key") or d.get("api_key") or json.dumps(d))'
