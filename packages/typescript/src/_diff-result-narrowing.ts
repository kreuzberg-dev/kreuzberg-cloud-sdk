/**
 * Compile-time-only proof that {@link DiffResult} (issue #12) narrows on
 * `status` without a type assertion.
 *
 * `diff`/`getDiffJob` answer `200` with the computed `DiffResponse` or `202`
 * with the `DiffAsyncAccepted` polling envelope — two schemas that share no
 * field to discriminate on other than the HTTP status this union reattaches.
 * If a future change dropped the discriminant (or widened either arm's
 * `body` back to the full union), the assignments below would stop
 * type-checking.
 *
 * Nothing imports this file — `tsdown`'s entry graph starts at `index.ts` and
 * never reaches it, so it is never bundled or published — but it lives under
 * `src/`, which `tsc --noEmit` (part of `pnpm run lint`) type-checks in full.
 */
import type { DiffAsyncAccepted, DiffResponse, DiffResult } from "./types.js";

function expectDiffResponse(_value: DiffResponse): void {}
function expectDiffAsyncAccepted(_value: DiffAsyncAccepted): void {}

function checkDiffResultNarrowing(result: DiffResult): void {
  if (result.status === 200) {
    expectDiffResponse(result.body);
  } else {
    expectDiffAsyncAccepted(result.body);
  }
}

void checkDiffResultNarrowing;
