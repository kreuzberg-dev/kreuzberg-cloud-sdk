package xberg_test

import (
	"context"
	"net/http"
	"net/http/httptest"
	"strings"
	"sync/atomic"
	"testing"

	xberg "github.com/xberg-io/sdks/packages/go/v1"
)

// -- base-url policy ----------------------------------------------------------

func TestNew_EnterpriseDefaultsBaseURL(t *testing.T) {
	t.Parallel()
	client, err := xberg.New(xberg.WithTarget(xberg.TargetEnterprise))
	if err != nil {
		t.Fatalf("New: %v", err)
	}
	if got := client.BaseURL(); got != xberg.DefaultEnterpriseBaseURL {
		t.Errorf("BaseURL = %q, want %q", got, xberg.DefaultEnterpriseBaseURL)
	}
}

func TestNew_NoTargetDefaultsToEnterpriseBaseURL(t *testing.T) {
	t.Parallel()
	client, err := xberg.New()
	if err != nil {
		t.Fatalf("New: %v", err)
	}
	if got := client.BaseURL(); got != xberg.DefaultEnterpriseBaseURL {
		t.Errorf("BaseURL = %q, want %q", got, xberg.DefaultEnterpriseBaseURL)
	}
}

func TestNew_ProRequiresBaseURL(t *testing.T) {
	t.Parallel()
	_, err := xberg.New(xberg.WithTarget(xberg.TargetPro))
	if err == nil {
		t.Fatalf("New(WithTarget(Pro)) returned nil error, want a base-URL error")
	}
	if !strings.Contains(err.Error(), "no default base URL") {
		t.Errorf("error = %q, want it to mention 'no default base URL'", err.Error())
	}
}

func TestNew_ProAcceptsExplicitBaseURL(t *testing.T) {
	t.Parallel()
	client, err := xberg.New(xberg.WithTarget(xberg.TargetPro), xberg.WithBaseURL("https://pro.example.test"))
	if err != nil {
		t.Fatalf("New: %v", err)
	}
	if got := client.BaseURL(); got != "https://pro.example.test" {
		t.Errorf("BaseURL = %q, want the explicit Pro URL", got)
	}
}

// -- tier gating (explicit target) --------------------------------------------

func TestTierGate_ProOnlyMethodOnEnterpriseTarget(t *testing.T) {
	t.Parallel()
	// The base URL points at a server that fails the test if it is ever hit —
	// the gate must reject before any request is issued.
	server := httptest.NewServer(http.HandlerFunc(func(_ http.ResponseWriter, r *http.Request) {
		t.Errorf("unexpected HTTP call to %s; gate should short-circuit", r.URL.Path)
	}))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL), xberg.WithTarget(xberg.TargetEnterprise))
	_, err := client.Login(context.Background(), xberg.LoginRequest{IdToken: "x"})
	var tierErr *xberg.TierError
	if !asError(err, &tierErr) {
		t.Fatalf("expected TierError, got %T: %v", err, err)
	}
	if tierErr.Required != "pro" || tierErr.Actual != "enterprise" {
		t.Errorf("TierError = %+v, want required=pro actual=enterprise", tierErr)
	}
	if !strings.Contains(err.Error(), "not available on the \"enterprise\" tier") {
		t.Errorf("error = %q, want it to mention the enterprise tier", err.Error())
	}
}

func TestTierGate_EnterpriseOnlyMethodOnProTarget(t *testing.T) {
	t.Parallel()
	server := httptest.NewServer(http.HandlerFunc(func(_ http.ResponseWriter, r *http.Request) {
		t.Errorf("unexpected HTTP call to %s; gate should short-circuit", r.URL.Path)
	}))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL), xberg.WithTarget(xberg.TargetPro))
	_, err := client.Usage(context.Background(), nil)
	var tierErr *xberg.TierError
	if !asError(err, &tierErr) {
		t.Fatalf("expected TierError, got %T: %v", err, err)
	}
	if tierErr.Required != "enterprise" || tierErr.Actual != "pro" {
		t.Errorf("TierError = %+v, want required=enterprise actual=pro", tierErr)
	}
}

func TestProMethod_LoginReachesEndpoint(t *testing.T) {
	t.Parallel()
	var called atomic.Bool
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.URL.Path != "/auth/login" || r.Method != http.MethodPost {
			t.Errorf("unexpected request %s %s", r.Method, r.URL.Path)
		}
		called.Store(true)
		_, _ = w.Write([]byte(`{"token":"session-jwt","pending_invitations":0,` +
			`"user":{"id":"u1","email":"a@b.test"}}`))
	}))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL), xberg.WithTarget(xberg.TargetPro))
	resp, err := client.Login(context.Background(), xberg.LoginRequest{IdToken: "verified"})
	if err != nil {
		t.Fatalf("Login: %v", err)
	}
	if !called.Load() {
		t.Errorf("server was not called")
	}
	if resp.Token != "session-jwt" {
		t.Errorf("Token = %q, want session-jwt", resp.Token)
	}
}

func TestEnterpriseMethod_UsageReachesEndpoint(t *testing.T) {
	t.Parallel()
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.URL.Path != "/v1/usage" {
			t.Errorf("path = %q, want /v1/usage", r.URL.Path)
		}
		_, _ = w.Write([]byte(`{"pages":42}`))
	}))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL), xberg.WithTarget(xberg.TargetEnterprise))
	body, err := client.Usage(context.Background(), nil)
	if err != nil {
		t.Fatalf("Usage: %v", err)
	}
	if !strings.Contains(string(body), `"pages":42`) {
		t.Errorf("body = %s, want it to contain pages=42", body)
	}
}

// -- tier gating (capability probe via /healthz) ------------------------------

func TestTierProbe_DiscoversTierAndCaches(t *testing.T) {
	t.Parallel()
	var healthzCalls atomic.Int32
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		switch r.URL.Path {
		case "/healthz":
			healthzCalls.Add(1)
			_, _ = w.Write([]byte(`{"status":"ok","tier":"enterprise"}`))
		case "/v1/usage":
			_, _ = w.Write([]byte(`{"pages":7}`))
		default:
			t.Errorf("unexpected request %s", r.URL.Path)
		}
	}))
	defer server.Close()
	// target omitted -> tier discovered from /healthz, then cached.
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	for i := 0; i < 2; i++ {
		if _, err := client.Usage(context.Background(), nil); err != nil {
			t.Fatalf("Usage call %d: %v", i, err)
		}
	}
	if got := healthzCalls.Load(); got != 1 {
		t.Errorf("healthz probed %d times, want exactly 1 (cached)", got)
	}
}

func TestTierProbe_GatesWhenProbedTierMismatches(t *testing.T) {
	t.Parallel()
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.URL.Path == "/v1/usage" {
			t.Errorf("usage endpoint must not be hit when the probed tier is pro")
		}
		_, _ = w.Write([]byte(`{"status":"ok","tier":"pro"}`))
	}))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	_, err := client.Usage(context.Background(), nil)
	var tierErr *xberg.TierError
	if !asError(err, &tierErr) {
		t.Fatalf("expected TierError, got %T: %v", err, err)
	}
	if tierErr.Actual != "pro" {
		t.Errorf("TierError.Actual = %q, want pro", tierErr.Actual)
	}
}
