#!/usr/bin/env bash
#
# Generate the two TypeScript schema sets (Enterprise + Pro) from the vendored
# OpenAPI specs. Emits src/_generated/{api,pro}.d.ts via openapi-typescript.
#
# The two schema sets are generated separately and never merged — mirrors
# xberg-enterprise ADR-0072 (operationId collisions + topology honesty).
set -euo pipefail

PKG_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
REPO_ROOT="$(cd "${PKG_DIR}/../.." && pwd)"
API_SPEC="${REPO_ROOT}/spec/api/openapi.yaml"
PRO_SPEC="${REPO_ROOT}/spec/pro/openapi.yaml"
OUT_DIR="${PKG_DIR}/src/_generated"

mkdir -p "${OUT_DIR}"

cd "${PKG_DIR}"
pnpm exec openapi-typescript "${API_SPEC}" -o "${OUT_DIR}/api.d.ts"
pnpm exec openapi-typescript "${PRO_SPEC}" -o "${OUT_DIR}/pro.d.ts"
