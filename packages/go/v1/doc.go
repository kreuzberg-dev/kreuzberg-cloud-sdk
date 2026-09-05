// Package xberg is the official Go client for the Xberg Enterprise and Xberg
// Pro document-processing APIs.
//
// One [Client] speaks to either product. The shared surface — extraction,
// jobs (including job results), audit, the curated preset registry, and the RAG
// API — is written once and carries no tier gate. Tier-specific methods are
// capability-gated: they probe the connected instance (GET /healthz's tier, or
// an explicit target set via [WithTarget]) and return a clear [TierError]
// instead of a raw 404 when invoked against the wrong tier.
//
// Both products authenticate identically via a Bearer token. Enterprise
// defaults the base URL to [DefaultEnterpriseBaseURL]; Pro ships no default and
// requires [WithBaseURL].
//
// Most users should construct a [Client] via [New] and pass a context.Context
// to each request method.
package xberg
