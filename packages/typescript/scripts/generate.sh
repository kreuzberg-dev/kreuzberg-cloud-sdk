#!/usr/bin/env bash
#
# Generate the two TypeScript schema sets (Enterprise + Pro) from the vendored
# OpenAPI specs. Emits src/_generated/{api,pro}.d.ts via openapi-typescript.
#
# The two schema sets are generated separately and never merged — mirrors
# xberg-enterprise ADR-0072 (operationId collisions + topology honesty).
#
# The vendored Enterprise spec carries two dangling $refs (CodeDataAttribute,
# CodeDataNodeKind — referenced by CodeDataNode but never defined upstream).
# openapi-python-client tolerates them; openapi-typescript's redoc bundler
# rejects them. We stub the missing schemas in a throwaway patched copy (only
# when absent, so a future upstream fix is preserved) rather than editing the
# vendored spec, which `task spec:check` compares against xberg-enterprise.
set -euo pipefail

PKG_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
REPO_ROOT="$(cd "${PKG_DIR}/../.." && pwd)"
API_SPEC="${REPO_ROOT}/spec/api/openapi.yaml"
PRO_SPEC="${REPO_ROOT}/spec/pro/openapi.yaml"
OUT_DIR="${PKG_DIR}/src/_generated"

mkdir -p "${OUT_DIR}"
PATCHED_API="$(mktemp -t xberg-api-spec.XXXXXX.yaml)"
trap 'rm -f "${PATCHED_API}"' EXIT

# shellcheck disable=SC2016  # the yq expression is single-quoted on purpose: $ref is literal text, not a shell var
yq eval '
  .components.schemas.CodeDataAttribute = (.components.schemas.CodeDataAttribute // {"type": "object", "additionalProperties": true, "description": "Stub for upstream dangling $ref (schema omitted from vendored spec)."}) |
  .components.schemas.CodeDataNodeKind = (.components.schemas.CodeDataNodeKind // {"type": "string", "description": "Stub for upstream dangling $ref (schema omitted from vendored spec)."})
' "${API_SPEC}" >"${PATCHED_API}"

cd "${PKG_DIR}"
pnpm exec openapi-typescript "${PATCHED_API}" -o "${OUT_DIR}/api.d.ts"
pnpm exec openapi-typescript "${PRO_SPEC}" -o "${OUT_DIR}/pro.d.ts"
