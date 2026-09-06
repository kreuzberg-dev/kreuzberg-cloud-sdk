package xberg

import (
	"encoding/json"
	"errors"
	"fmt"
	"net/http"
	"strconv"
	"time"
)

// XbergError is the base error type returned for any non-2xx HTTP response. It
// carries the HTTP status code, a human-readable message extracted from the
// response body when possible, and the raw body for callers that need
// programmatic access to vendor-specific error fields.
//
// [TimeoutError] and [TierError] also embed XbergError (with a zero Status,
// since neither originates from an HTTP response) so that a single
// errors.As(err, &XbergError{}) reaches every error the SDK raises — matching
// the base-class catch used by the Python and TypeScript SDKs
// (`except XbergError`, `instanceof XbergError`).
type XbergError struct {
	Status  int
	Message string
	Body    json.RawMessage
}

// Error implements the error interface. A zero Status means no HTTP response
// backs this error (a decode failure on a stream, say), so the status is left
// out rather than rendered as a misleading "HTTP 0".
func (e *XbergError) Error() string {
	if e.Status == 0 {
		if e.Message != "" {
			return "xberg: " + e.Message
		}
		return "xberg: error"
	}
	if e.Message != "" {
		return fmt.Sprintf("xberg: HTTP %d: %s", e.Status, e.Message)
	}
	return fmt.Sprintf("xberg: HTTP %d", e.Status)
}

// AuthError wraps 401 Unauthorized responses.
type AuthError struct{ XbergError }

// Error overrides the embedded XbergError.Error to surface the error type.
func (e *AuthError) Error() string {
	return "xberg: authentication failed: " + e.XbergError.Error()
}

// Unwrap exposes the embedded XbergError so errors.As(err, &xbergErr) works.
func (e *AuthError) Unwrap() error { return &e.XbergError }

// ValidationError wraps 400 Bad Request and 422 Unprocessable Entity responses.
type ValidationError struct{ XbergError }

// Error overrides XbergError.Error for type clarity in stack traces.
func (e *ValidationError) Error() string {
	return "xberg: validation failed: " + e.XbergError.Error()
}

// Unwrap exposes the embedded XbergError.
func (e *ValidationError) Unwrap() error { return &e.XbergError }

// NotFoundError wraps 404 Not Found responses.
type NotFoundError struct{ XbergError }

// Error overrides XbergError.Error.
func (e *NotFoundError) Error() string {
	return "xberg: not found: " + e.XbergError.Error()
}

// Unwrap exposes the embedded XbergError.
func (e *NotFoundError) Unwrap() error { return &e.XbergError }

// RateLimitError wraps 429 Too Many Requests responses. RetryAfter is parsed
// from the Retry-After header when present (zero duration otherwise).
type RateLimitError struct {
	XbergError
	RetryAfter time.Duration
}

// Error overrides XbergError.Error.
func (e *RateLimitError) Error() string {
	if e.RetryAfter > 0 {
		return fmt.Sprintf("xberg: rate limited (retry after %s): %s",
			e.RetryAfter, e.XbergError.Error())
	}
	return "xberg: rate limited: " + e.XbergError.Error()
}

// Unwrap exposes the embedded XbergError.
func (e *RateLimitError) Unwrap() error { return &e.XbergError }

// ServerError wraps 5xx responses.
type ServerError struct{ XbergError }

// Error overrides XbergError.Error.
func (e *ServerError) Error() string {
	return "xberg: server error: " + e.XbergError.Error()
}

// Unwrap exposes the embedded XbergError.
func (e *ServerError) Unwrap() error { return &e.XbergError }

// TimeoutError is returned by [Client.WaitForJob] when the configured
// [WaitOptions.Timeout] elapses before the job reaches a terminal status. It
// is distinct from a context cancellation: callers should use errors.Is or
// errors.As to disambiguate. It embeds [XbergError] (see that type's doc
// comment) purely so errors.As(err, &XbergError{}) also matches it; the
// embedded Status is always 0 since no HTTP response backs this error.
type TimeoutError struct {
	XbergError
	JobID   string
	Elapsed time.Duration
}

// Error implements error.
func (e *TimeoutError) Error() string {
	return fmt.Sprintf(
		"xberg: timed out waiting for job %s after %s",
		e.JobID, e.Elapsed,
	)
}

// Unwrap exposes the embedded XbergError.
func (e *TimeoutError) Unwrap() error { return &e.XbergError }

// TierError is returned when a tier-specific method is invoked against the
// wrong product tier — e.g. calling a Pro-only method on an Enterprise
// instance. It is raised before the underlying request is issued, so callers
// get a clear, typed failure instead of a raw 404. Python and TypeScript have
// no equivalent — they raise their bare base error for a tier mismatch — so
// this type is strictly more specific than either; it embeds [XbergError] (see
// that type's doc comment) for the same errors.As parity, with Status always
// 0 since no HTTP response backs this error either.
type TierError struct {
	XbergError
	// Method is the SDK method that was called (e.g. "Login").
	Method string
	// Required is the tier the method needs ("enterprise" or "pro").
	Required string
	// Actual is the tier the connected instance reports.
	Actual string
}

// Error implements error.
func (e *TierError) Error() string {
	return fmt.Sprintf(
		"xberg: %s() is not available on the %q tier (requires the %q tier)",
		e.Method, e.Actual, e.Required,
	)
}

// Unwrap exposes the embedded XbergError.
func (e *TierError) Unwrap() error { return &e.XbergError }

// ConnectionError is returned when the round-trip never produced an HTTP
// response at all: DNS resolution failed, the connection was refused or reset,
// the TLS handshake failed, or the dial timed out. Status is always 0 because
// there is no response to take one from — matching Python's
// XbergError(status_code=None) and TypeScript's { status: 0 } for the same
// failure. It embeds [XbergError] (see that type's doc comment) so the base
// errors.As catch reaches it.
//
// It is retryable. Python retries httpx.TransportError and TypeScript retries a
// thrown fetch up to the configured attempt budget; without a type the retry
// engine can classify, [WithRetries] would be silently inert in Go for an
// entire class of failure that the other two clients ride out.
type ConnectionError struct {
	XbergError
	// Method and URL identify the request that could not be completed.
	Method string
	URL    string
	// Cause is the underlying transport error from the HTTP client.
	Cause error
}

// Error implements error.
func (e *ConnectionError) Error() string {
	return fmt.Sprintf("xberg: %s %s: %s", e.Method, e.URL, e.Cause)
}

// Unwrap exposes both the embedded [XbergError] — so errors.As(err,
// &XbergError{}) matches, as it does for every other error here — and the
// transport cause, so errors.Is against a net or syscall error still reaches
// through.
func (e *ConnectionError) Unwrap() []error { return []error{&e.XbergError, e.Cause} }

// errorBody is the canonical error envelope used by the API service.
type errorBody struct {
	Error   string `json:"error,omitempty"`
	Message string `json:"message,omitempty"`
}

// classifyHTTPError converts a non-2xx HTTP response into a typed error.
//
// The body has already been read by the caller — we accept it as raw bytes so
// the caller can close the response without re-buffering.
func classifyHTTPError(status int, body []byte, header http.Header) error {
	rawBody := json.RawMessage(body)
	message := extractMessage(body)
	base := XbergError{Status: status, Message: message, Body: rawBody}

	switch {
	case status == http.StatusUnauthorized || status == http.StatusForbidden:
		return &AuthError{XbergError: base}
	case status == http.StatusBadRequest || status == http.StatusUnprocessableEntity:
		return &ValidationError{XbergError: base}
	case status == http.StatusNotFound:
		return &NotFoundError{XbergError: base}
	case status == http.StatusTooManyRequests:
		return &RateLimitError{XbergError: base, RetryAfter: parseRetryAfter(header)}
	case status >= 500:
		return &ServerError{XbergError: base}
	default:
		return &base
	}
}

func extractMessage(body []byte) string {
	if len(body) == 0 {
		return ""
	}
	var envelope errorBody
	if err := json.Unmarshal(body, &envelope); err == nil {
		if envelope.Error != "" {
			return envelope.Error
		}
		if envelope.Message != "" {
			return envelope.Message
		}
	}
	return string(body)
}

func parseRetryAfter(header http.Header) time.Duration {
	value := header.Get("Retry-After")
	if value == "" {
		return 0
	}
	if seconds, err := strconv.Atoi(value); err == nil {
		return time.Duration(seconds) * time.Second
	}
	if when, err := http.ParseTime(value); err == nil {
		delta := time.Until(when)
		if delta > 0 {
			return delta
		}
	}
	return 0
}

// IsRetryable reports whether an error should trigger a transport-level retry.
// A [ConnectionError] (no response at all), 429, and 502/503/504 are
// retryable; everything else is terminal.
func IsRetryable(err error) bool {
	var conn *ConnectionError
	if errors.As(err, &conn) {
		return true
	}
	var rate *RateLimitError
	if errors.As(err, &rate) {
		return true
	}
	var srv *ServerError
	if errors.As(err, &srv) {
		switch srv.Status {
		case http.StatusBadGateway, http.StatusServiceUnavailable, http.StatusGatewayTimeout:
			return true
		}
	}
	return false
}
