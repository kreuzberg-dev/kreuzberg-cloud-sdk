# Contributing to xberg-io-sdk

[← Back to README](README.md)

Official client SDKs for the extraction API served by Xberg Enterprise and Xberg Pro. Each language
ships one package with one dual-target client, generated from the upstream OpenAPI 3.1 specifications.

## Layout

```text
packages/
  python/         # PyPI distribution (httpx-based, sync + async)
  typescript/     # npm distribution (ESM-only, openapi-fetch)
  go/v1/          # Go module (oapi-codegen)
spec/
  api/openapi.yaml   # Vendored Xberg Enterprise (services/api) spec
  pro/openapi.yaml   # Vendored Xberg Pro (services/pro) spec
tasks/            # Per-language Taskfile fragments
scripts/
  sync-versions.py  # Propagates the root VERSION file into every per-package manifest
VERSION           # Single source of truth for the SDK version across all three packages
```

## Development

This repo is part of the [`xberg-io`](https://github.com/xberg-io) polyrepo.

```sh
task setup       # install pnpm + uv + Go deps, install pre-commit hooks
task generate    # regenerate clients from spec/api + spec/pro
task test        # run all language test suites
task lint        # prek run --all-files
task build       # build all language packages
```

Both OpenAPI specs are vendored from `xberg-enterprise`. The sources of truth are the utoipa-generated
specs emitted by `services/api` (Enterprise) and `services/pro` (Pro), committed at
`xberg-enterprise/services/{api,pro}/spec/openapi.json`. To refresh:

```sh
task spec:fetch  # copy + JSON→YAML for both specs from ../xberg-enterprise
task spec:check  # fail if either vendored spec drifted from the sibling copy
```

Cross-repo sync is release-triggered: `xberg-enterprise` publishes the versioned specs and dispatches
into this repo, which opens a regenerate-and-commit PR pinned to that API version. A weekly `spec-sync`
workflow remains as a fallback safety net.

## Pre-commit hooks

Install the git hooks with `task setup` (or `poly hooks install` directly). On
every commit, poly runs lint, format, and file-safety checks; the commit-msg
hook validates the message. Run all hooks manually with
`poly hooks run pre-commit --all-files`.

## Versioning

The single source of truth is the root `VERSION` file. `scripts/sync-versions.py` (run via `task version:sync`) propagates that value into every per-package manifest:

- `packages/python/pyproject.toml` (`project.version`)
- `packages/python/src/xberg_io_sdk/__init__.py` (`__version__`)
- `packages/typescript/package.json` (`version`)
- `packages/go/v1/version.go` (`const Version`)

Go module versions for the module path itself live in git tags only (`packages/go/v1/vX.Y.Z`), created automatically by the release workflow.

Tasks:

- `task version:show` — print current version
- `task version:set -- X.Y.Z` — set explicit version, propagate, validate
- `task version:bump:patch` / `bump:minor` / `bump:major` — semver-aware wrappers

## Releasing

Releases use a single unified `vX.Y.Z` tag that drives all three publishes from one workflow run.

1. `task version:set -- X.Y.Z` — propagates the new version to every manifest.
2. `task release:check` — pre-flight: validates semver, runs lint + test + build.
3. Commit: `git commit -am "chore(release): vX.Y.Z"` and open a PR to `main`.
4. After merge to `main`: `git checkout main && git pull && task release:tag` creates the annotated `vX.Y.Z` tag locally (refuses to run on a dirty tree).
5. `git push origin vX.Y.Z` — pushes the tag, triggering `.github/workflows/publish.yaml`:
   - Validates every manifest matches the tag's version.
   - Pre-checks PyPI + npm registries; skips already-published versions.
   - Builds + publishes Python (PyPI, OIDC trusted publisher) and TypeScript (npm, `--provenance`, org `NPM_TOKEN`).
   - Creates the Go module subtag `packages/go/v1/vX.Y.Z` via `xberg-io/actions/finalize-release@v1`.
   - Auto-generates a GitHub Release with notes.
6. `workflow_dispatch` supports `dry_run=true` and `force_republish=true` for staged verification before tagging.

## Code style & checks

Run `prek run --all-files` to validate formatting, linting, and type checking across all languages. Pre-commit hooks enforce this automatically.

## Contact

- Issues: <https://github.com/xberg-io/sdks/issues>
- Email: <contact@xberg.io>
- Discord: <https://discord.gg/xt9WY3GnKR>
