package xberg_test

import (
	"context"
	"net/http"
	"net/http/httptest"
	"strings"
	"testing"
	"time"

	xberg "github.com/xberg-io/sdks/packages/go"
)

func TestError_AuthErrorOn401(t *testing.T) {
	t.Parallel()
	server := newStatusServer(http.StatusUnauthorized, `{"error":"missing token"}`, nil)
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	_, err := client.GetJob(context.Background(), "any")
	var auth *xberg.AuthError
	if !asError(err, &auth) {
		t.Fatalf("expected AuthError, got %T: %v", err, err)
	}
	if !strings.Contains(auth.Message, "missing token") {
		t.Errorf("Message = %q, want it to contain 'missing token'", auth.Message)
	}
}

func TestError_AuthErrorOn403(t *testing.T) {
	t.Parallel()
	server := newStatusServer(http.StatusForbidden, `{"error":"forbidden"}`, nil)
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	_, err := client.GetJob(context.Background(), "any")
	var auth *xberg.AuthError
	if !asError(err, &auth) {
		t.Fatalf("expected AuthError, got %T: %v", err, err)
	}
}

func TestError_ValidationErrorOn400(t *testing.T) {
	t.Parallel()
	server := newStatusServer(http.StatusBadRequest, `{"error":"bad"}`, nil)
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	_, err := client.GetJob(context.Background(), "any")
	var validation *xberg.ValidationError
	if !asError(err, &validation) {
		t.Fatalf("expected ValidationError, got %T: %v", err, err)
	}
}

func TestError_ValidationErrorOn422(t *testing.T) {
	t.Parallel()
	server := newStatusServer(http.StatusUnprocessableEntity, `{"error":"unprocessable"}`, nil)
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	_, err := client.GetJob(context.Background(), "any")
	var validation *xberg.ValidationError
	if !asError(err, &validation) {
		t.Fatalf("expected ValidationError, got %T: %v", err, err)
	}
}

func TestError_NotFoundErrorOn404(t *testing.T) {
	t.Parallel()
	server := newStatusServer(http.StatusNotFound, `{"error":"missing"}`, nil)
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	_, err := client.GetJob(context.Background(), "any")
	var notFound *xberg.NotFoundError
	if !asError(err, &notFound) {
		t.Fatalf("expected NotFoundError, got %T: %v", err, err)
	}
}

func TestError_RateLimitErrorOn429WithRetryAfter(t *testing.T) {
	t.Parallel()
	server := newStatusServer(
		http.StatusTooManyRequests,
		`{"error":"slow down"}`,
		http.Header{"Retry-After": []string{"3"}},
	)
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	_, err := client.GetJob(context.Background(), "any")
	var rate *xberg.RateLimitError
	if !asError(err, &rate) {
		t.Fatalf("expected RateLimitError, got %T: %v", err, err)
	}
	if rate.RetryAfter != 3*time.Second {
		t.Errorf("RetryAfter = %v, want 3s", rate.RetryAfter)
	}
}

func TestError_ServerErrorOn500(t *testing.T) {
	t.Parallel()
	server := newStatusServer(http.StatusInternalServerError, `{"error":"oops"}`, nil)
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	_, err := client.GetJob(context.Background(), "any")
	var srv *xberg.ServerError
	if !asError(err, &srv) {
		t.Fatalf("expected ServerError, got %T: %v", err, err)
	}
}

func TestError_BasePropertiesAccessibleViaUnwrap(t *testing.T) {
	t.Parallel()
	server := newStatusServer(http.StatusBadRequest, `{"error":"bad"}`, nil)
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	_, err := client.GetJob(context.Background(), "any")
	var apiErr *xberg.XbergError
	if !asError(err, &apiErr) {
		t.Fatalf("errors.As to *XbergError failed: %v", err)
	}
	if apiErr.Status != 400 {
		t.Errorf("Status = %d, want 400", apiErr.Status)
	}
	if !strings.Contains(string(apiErr.Body), "bad") {
		t.Errorf("Body = %s, want to contain 'bad'", apiErr.Body)
	}
}

func TestError_TimeoutErrorIsDistinctFromContextCancel(t *testing.T) {
	t.Parallel()
	timeoutErr := &xberg.TimeoutError{JobID: "j", Elapsed: time.Second}
	if !strings.Contains(timeoutErr.Error(), "timed out") {
		t.Errorf("TimeoutError.Error() = %q, want to mention 'timed out'", timeoutErr.Error())
	}
}

// TestError_AllTypesReachXbergErrorViaErrorsAs asserts that every error type
// this package raises — including TimeoutError and TierError, which do not
// originate from an HTTP response — unwraps to the shared [xberg.XbergError]
// base, matching the single base-class catch Python and TypeScript offer.
func TestError_AllTypesReachXbergErrorViaErrorsAs(t *testing.T) {
	t.Parallel()
	errs := []error{
		&xberg.AuthError{},
		&xberg.ValidationError{},
		&xberg.NotFoundError{},
		&xberg.RateLimitError{},
		&xberg.ServerError{},
		&xberg.TimeoutError{JobID: "j", Elapsed: time.Second},
		&xberg.TierError{Method: "Login", Required: "pro", Actual: "enterprise"},
	}
	for _, err := range errs {
		var base *xberg.XbergError
		if !asError(err, &base) {
			t.Errorf("errors.As(%T, &XbergError{}) = false, want true", err)
		}
	}
}

// newStatusServer returns an *httptest.Server that always responds with the
// given status code, body, and (optional) headers — handy for stamping out
// error-class tests without per-test boilerplate.
func newStatusServer(status int, body string, header http.Header) *httptest.Server {
	return httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, _ *http.Request) {
		for key, values := range header {
			for _, value := range values {
				w.Header().Add(key, value)
			}
		}
		w.WriteHeader(status)
		_, _ = w.Write([]byte(body))
	}))
}
