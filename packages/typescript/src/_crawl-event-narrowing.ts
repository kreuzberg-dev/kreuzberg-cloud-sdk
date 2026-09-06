/**
 * Compile-time-only proof that {@link CrawlEvent} (issue #9) narrows on `kind`
 * without a type assertion, and that `switch` over the four variants is
 * exhaustive.
 *
 * `streamCrawlEvents` yields one union covering all four wire shapes, and only
 * two of its fields — `crawl_job_id` and `ts` — are common to every variant.
 * If a future spec sync dropped the `kind` literal from a variant (widening it
 * to `string`), added a fifth kind, or moved a field between variants, the
 * assignments below would stop type-checking.
 *
 * Nothing imports this file — `tsdown`'s entry graph starts at `index.ts` and
 * never reaches it, so it is never bundled or published — but it lives under
 * `src/`, which `tsc --noEmit` (part of `pnpm run lint`) type-checks in full.
 */
import type { CrawlCompleteEvent, CrawlDiscoveredEvent, CrawlErrorEvent, CrawlEvent, CrawlPageEvent } from "./types.js";

function expectPage(_value: CrawlPageEvent): void {}
function expectDiscovered(_value: CrawlDiscoveredEvent): void {}
function expectComplete(_value: CrawlCompleteEvent): void {}
function expectError(_value: CrawlErrorEvent): void {}
function expectString(_value: string): void {}
function expectNumber(_value: number): void {}

function checkCrawlEventNarrowing(event: CrawlEvent): void {
  // Present on every variant, so readable before any narrowing.
  expectString(event.crawl_job_id);
  expectString(event.ts);

  switch (event.kind) {
    case "page":
      expectPage(event);
      expectNumber(event.status_code);
      expectNumber(event.depth);
      break;
    case "discovered":
      expectDiscovered(event);
      expectNumber(event.depth);
      break;
    case "complete":
      expectComplete(event);
      expectNumber(event.pages_crawled);
      break;
    case "error":
      expectError(event);
      expectString(event.error);
      break;
    default: {
      // Reached only if a fifth variant appears; `never` is what makes that a
      // compile error rather than a silently unhandled event kind.
      const unhandled: never = event;
      return unhandled;
    }
  }
}

void checkCrawlEventNarrowing;
