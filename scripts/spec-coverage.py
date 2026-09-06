#!/usr/bin/env python3
"""Report which vendored spec operations the client reaches, and fail on an unplanned gap.

Nothing asserted this before, which is how `cancel_job` and `delete_documents`
stayed missing from every client while sitting outside the READMEs' exclusion
lists -- so they read as covered, in four hand-maintained places that agreed
with each other and with nothing else.

The Python sync client is the reference surface: `scripts/generate-reference.py`
already fails when the three languages diverge, so proving coverage once proves
it everywhere. Requests are matched by the `(verb, path)` pair they put on the
wire, with template parameter names erased -- the same normalisation
`xberg-enterprise`'s own `spec-parity.test.sh` uses, because a parameter's name
is local to the document while the URL a caller builds is not.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

import yaml

REPO_ROOT = Path(__file__).resolve().parent.parent
CLIENT = REPO_ROOT / "packages" / "python" / "src" / "xberg_io_sdk" / "client.py"

# `spec/backend/openapi.yaml` -- the Enterprise control plane -- is deliberately
# absent. It is vendored and generates types in all three languages, but no
# client method reaches any of its 48 operations yet, so listing it here would
# fail the build on every one of them. Add it in the same change that lands the
# control-plane methods, not before.
SPECS = {
    "enterprise": REPO_ROOT / "spec" / "api" / "openapi.yaml",
    "pro": REPO_ROOT / "spec" / "pro" / "openapi.yaml",
}

VERBS = ("get", "put", "post", "delete", "patch", "head", "options")

# Operations no client exposes, on purpose. Each needs a reason, because an
# entry here is the difference between a decision and an oversight -- which is
# exactly the distinction that went missing when this list lived only in prose.
DELIBERATE_EXCLUSIONS = {
    ("GET", "/readyz"): "infrastructure probe; /healthz is the tier probe and is used",
    ("GET", "/v1/oauth/callback"): "browser redirect target in Pro's login flow, not a client call",
    ("DELETE", "/auth/account"): "Pro account erasure, deliberately console-only",
}

# Operations a client will expose but does not yet, each with the issue that
# will close it. Distinct from DELIBERATE_EXCLUSIONS on purpose: an exclusion
# says "never", a tracked gap says "not yet", and collapsing the two is how a
# gap quietly becomes a decision nobody made. Empty right now: the last entry
# (#9, the crawl-event SSE stream) was removed by the change that implemented
# it, which is the only way an entry may leave -- `main` fails on a tracked gap
# the client has since started reaching.
TRACKED_GAPS: dict[tuple[str, str], str] = {}

# Requests the client builds through a helper rather than a literal, so the
# regex below cannot see them. Keep this list short: every entry is a place the
# check trusts a human instead of the source.
HELPER_BUILT = {
    ("GET", "/v1/saved_presets"),
    ("POST", "/v1/saved_presets"),
    ("GET", "/v1/saved_presets/{}"),
    ("PATCH", "/v1/saved_presets/{}"),
    ("DELETE", "/v1/saved_presets/{}"),
    ("GET", "/v1/saved-presets"),
    ("POST", "/v1/saved-presets"),
    ("GET", "/v1/saved-presets/{}"),
    ("PATCH", "/v1/saved-presets/{}"),
    ("DELETE", "/v1/saved-presets/{}"),
}

# `stream` is in the alternation because a streaming response cannot go through
# `_request_*` -- that is the retry engine, and retrying a partly-consumed
# stream replays events -- so `stream_crawl_events` opens its own connection via
# `_request_stream`. It still spells the route as a literal at the call site,
# which is the only thing this check needs to keep reading the source rather
# than a hand-maintained list.
_REQUEST = re.compile(
    r"""_request_(?:json|bytes|none|stream)"""
    r"""\(\s*["'](GET|POST|PUT|PATCH|DELETE|HEAD|OPTIONS)["']\s*,\s*f?["']([^"']+)["']""",
)

# Several routes are built from a module-level constant rather than a literal
# -- `self._request_json("GET", _AUTO_TUNE_PATH)` and the f-strings that
# interpolate it. Reading the constants and substituting them is what makes the
# regex see those calls; without it fourteen implemented operations report as
# missing. The same constant-prefixed shape hid sites from an earlier
# path-escaping sweep, so it is worth handling rather than special-casing.
_CONSTANT = re.compile(r'^(_[A-Z][A-Z0-9_]*)\s*=\s*"(/[^"]*)"', re.MULTILINE)
_CONSTANT_REQUEST = re.compile(
    r"""_request_(?:json|bytes|none|stream)"""
    r"""\(\s*["'](GET|POST|PUT|PATCH|DELETE|HEAD|OPTIONS)["']\s*,\s*"""
    r"""(?:(_[A-Z][A-Z0-9_]*)|f"\{(_[A-Z][A-Z0-9_]*)\}([^"]*)")""",
)


def erase_parameters(path: str) -> str:
    """Reduce every path template parameter to `{}` so the two sides compare on wire shape."""
    return re.sub(r"\{[^}]*\}", "{}", path)


def client_requests() -> set[tuple[str, str]]:
    """Every `(verb, path)` the hand-written client issues."""
    source = CLIENT.read_text(encoding="utf-8")
    constants = dict(_CONSTANT.findall(source))
    found = {(verb, erase_parameters(path)) for verb, path in _REQUEST.findall(source)}
    for verb, bare, prefixed, suffix in _CONSTANT_REQUEST.findall(source):
        name = bare or prefixed
        route = constants.get(name)
        if route is None:
            continue
        found.add((verb, erase_parameters(route + suffix)))
    return found | HELPER_BUILT


def spec_operations(path: Path) -> set[tuple[str, str]]:
    """Every `(verb, path)` a spec declares."""
    document = yaml.safe_load(path.read_text(encoding="utf-8"))
    return {
        (verb.upper(), erase_parameters(route))
        for route, item in document["paths"].items()
        for verb in item
        if verb in VERBS
    }


def main() -> int:
    """Print per-tier coverage and fail on any operation that is neither covered nor excluded."""
    covered = client_requests()
    excluded = {(verb, erase_parameters(route)) for verb, route in DELIBERATE_EXCLUSIONS}
    tracked = {(verb, erase_parameters(route)) for verb, route in TRACKED_GAPS}
    failures: list[str] = []

    for tier, spec_path in SPECS.items():
        operations = spec_operations(spec_path)
        reached = operations & covered
        gaps = sorted(operations - covered - excluded - tracked)
        total = len(operations)
        pending = len(operations & tracked)
        print(  # noqa: T201
            f"{tier:<11} {len(reached)}/{total} reached, "
            f"{len(operations & excluded)} excluded, {pending} tracked as pending"
        )
        for verb, route in gaps:
            failures.append(f"{tier}: {verb} {route} is in the spec, in no client, and not excluded")

    declared = set().union(*(spec_operations(p) for p in SPECS.values()))
    for verb, route in sorted(excluded - declared):
        failures.append(f"exclusion for {verb} {route} names an operation no spec declares")
    for verb, route in sorted(tracked & covered):
        failures.append(f"{verb} {route} is now implemented -- remove it from TRACKED_GAPS")

    if failures:
        sys.stderr.write("spec coverage gaps:\n")
        for line in failures:
            sys.stderr.write(f"  {line}\n")
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
