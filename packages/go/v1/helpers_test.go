package xberg_test

import (
	"errors"
	"io"
	"net/http"
	"net/http/httptest"
	"testing"

	xberg "github.com/xberg-io/sdks/packages/go/v1"
)

// recordedRequest captures the single request a method under test issues, so
// assertions can pin the exact HTTP method, path, query and body.
type recordedRequest struct {
	method      string
	path        string
	query       string
	body        string
	contentType string
}

// targetClient spins up a client pinned to target whose transport records the
// request it issues and answers with the given status and response body.
func targetClient(
	t *testing.T,
	target xberg.Target,
	status int,
	response string,
	seen *recordedRequest,
) *xberg.Client {
	t.Helper()
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		body, err := io.ReadAll(r.Body)
		if err != nil {
			t.Errorf("reading request body: %v", err)
		}
		seen.method = r.Method
		seen.path = r.URL.Path
		seen.query = r.URL.RawQuery
		seen.body = string(body)
		seen.contentType = r.Header.Get("Content-Type")
		w.WriteHeader(status)
		if response != "" {
			_, _ = io.WriteString(w, response)
		}
	}))
	t.Cleanup(server.Close)
	return mustClient(t, xberg.WithBaseURL(server.URL), xberg.WithTarget(target))
}

// mustClient builds a Client with the given options, failing the test on
// configuration errors. Used to keep test bodies focused on assertions.
func mustClient(t *testing.T, opts ...xberg.Option) *xberg.Client {
	t.Helper()
	client, err := xberg.New(opts...)
	if err != nil {
		t.Fatalf("xberg.New: %v", err)
	}
	return client
}

// asError is a generic wrapper around errors.As that returns a bool, so test
// bodies can write `if !asError(err, &target)` without juggling pointer types.
func asError[T error](err error, target *T) bool {
	return errors.As(err, target)
}
