package xberg

import (
	"io"
	"time"
)

// terminalJobStatuses lists the statuses for which the server will produce no
// further updates. WaitForJob polls until one of these is observed. The
// [JobStatus] values are defined by the generated Enterprise schema set.
var terminalJobStatuses = map[JobStatus]struct{}{
	JobStatusCompleted:      {},
	JobStatusPartialSuccess: {},
	JobStatusFailed:         {},
	JobStatusCancelled:      {},
}

// IsTerminalStatus reports whether the status will produce no further updates.
func IsTerminalStatus(status JobStatus) bool {
	_, ok := terminalJobStatuses[status]
	return ok
}

// SandboxKey is the response from POST /v1/sandbox/key. The endpoint mints a
// short-lived, anonymous API key for the public sandbox project. It is
// deliberately NOT part of either OpenAPI spec (an out-of-band onboarding
// route), so it is modeled by hand here. ~keep: documents why this bypasses the
// generated schema sets.
type SandboxKey struct {
	APIKey         string    `json:"api_key"`
	ExpiresAt      time.Time `json:"expires_at"`
	PagesRemaining int64     `json:"pages_remaining"`
}

// BackoffKind selects the polling backoff strategy used by [Client.WaitForJob].
type BackoffKind int

const (
	// BackoffExponential doubles the poll interval each cycle (capped).
	BackoffExponential BackoffKind = iota
	// BackoffConstant keeps the poll interval fixed.
	BackoffConstant
)

// WaitOptions configures [Client.WaitForJob]. Zero-value fields fall back to
// sensible defaults (5 minute timeout, 1 second interval, exponential backoff).
type WaitOptions struct {
	Timeout      time.Duration
	PollInterval time.Duration
	Backoff      BackoffKind
}

// ExtractAndWaitOptions configures [Client.ExtractAndWait].
type ExtractAndWaitOptions struct {
	Extraction *ExtractionOptions
	Wait       *WaitOptions
}

// FileSource describes a file to upload as a multipart part. Reader is read
// in full; Name is used for Content-Disposition and Content-Type sniffing.
type FileSource struct {
	Name   string
	Reader io.Reader
}
