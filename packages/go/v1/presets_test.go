package xberg_test

import (
	"context"
	"io"
	"net/http"
	"net/http/httptest"
	"sync/atomic"
	"testing"

	xberg "github.com/xberg-io/sdks/packages/go/v1"
)

const presetSummaryBody = `[{
	"id":"invoice-v1",
	"version":"1.2.0",
	"description":"Invoice extraction",
	"category":"finance",
	"schema_name":"Invoice",
	"fingerprint":"sha256:abc",
	"emit_citations":true,
	"preferred_call_mode":"tool",
	"tags":["invoice","finance"]
}]`

const presetDetailBody = `{
	"id":"invoice-v1",
	"version":"1.2.0",
	"description":"Invoice extraction",
	"category":"finance",
	"schema_name":"Invoice",
	"schema":{"type":"object"},
	"system_prompt":"extract the invoice",
	"fingerprint":"sha256:abc",
	"emit_citations":true,
	"preferred_call_mode":"tool",
	"sample":{"input_url":"/v1/presets/invoice-v1/sample/input.pdf",
	          "output_url":"/v1/presets/invoice-v1/sample/output.json"}
}`

// presetsAreShared asserts the curated preset registry is reachable from both
// targets: GET /v1/presets, /v1/presets/{id} and /v1/presets/{id}/sample/{name}
// are declared by both specs, so no preset method may be tier-gated.
func TestPresets_ReachesEndpointOnBothTargets(t *testing.T) {
	t.Parallel()
	for _, target := range []xberg.Target{xberg.TargetPro, xberg.TargetEnterprise} {
		t.Run(string(target), func(t *testing.T) {
			t.Parallel()
			var called atomic.Bool
			server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
				if r.URL.Path == "/healthz" {
					t.Errorf("an ungated method must not probe /healthz")
				}
				if r.URL.Path != "/v1/presets" {
					t.Errorf("path = %q, want /v1/presets", r.URL.Path)
				}
				called.Store(true)
				_, _ = io.WriteString(w, presetSummaryBody)
			}))
			defer server.Close()
			client := mustClient(t, xberg.WithBaseURL(server.URL), xberg.WithTarget(target))

			presets, err := client.Presets(context.Background())
			if err != nil {
				t.Fatalf("Presets on %s: %v", target, err)
			}
			if !called.Load() {
				t.Fatalf("server was never called on target %s", target)
			}
			if len(presets) != 1 {
				t.Fatalf("len(presets) = %d, want 1", len(presets))
			}
			if presets[0].Id != "invoice-v1" {
				t.Errorf("Id = %q, want invoice-v1", presets[0].Id)
			}
			if presets[0].SchemaName != "Invoice" {
				t.Errorf("SchemaName = %q, want Invoice", presets[0].SchemaName)
			}
			if !presets[0].EmitCitations {
				t.Errorf("EmitCitations = false, want true")
			}
		})
	}
}

func TestGetPreset_ReturnsPresetDetail(t *testing.T) {
	t.Parallel()
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.URL.Path != "/v1/presets/invoice-v1" {
			t.Errorf("path = %q, want /v1/presets/invoice-v1", r.URL.Path)
		}
		_, _ = io.WriteString(w, presetDetailBody)
	}))
	defer server.Close()
	// Pro is the target the old enterprise-only gate rejected outright.
	client := mustClient(t, xberg.WithBaseURL(server.URL), xberg.WithTarget(xberg.TargetPro))

	preset, err := client.GetPreset(context.Background(), "invoice-v1")
	if err != nil {
		t.Fatalf("GetPreset: %v", err)
	}
	if preset.Id != "invoice-v1" || preset.Version != "1.2.0" {
		t.Errorf("preset = %+v, want invoice-v1 @ 1.2.0", preset)
	}
	if preset.SystemPrompt != "extract the invoice" {
		t.Errorf("SystemPrompt = %q, want 'extract the invoice'", preset.SystemPrompt)
	}
	if preset.Sample == nil {
		t.Fatalf("Sample = nil, want the bundled sample pointers")
	}
	if preset.Sample.InputUrl != "/v1/presets/invoice-v1/sample/input.pdf" {
		t.Errorf("Sample.InputUrl = %q, want the sample input path", preset.Sample.InputUrl)
	}
}

func TestGetPreset_EscapesPresetID(t *testing.T) {
	t.Parallel()
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.URL.Path != "/v1/presets/a b/c" {
			t.Errorf("decoded path = %q, want '/v1/presets/a b/c'", r.URL.Path)
		}
		if r.URL.EscapedPath() != "/v1/presets/a%20b%2Fc" {
			t.Errorf("escaped path = %q, want /v1/presets/a%%20b%%2Fc", r.URL.EscapedPath())
		}
		_, _ = io.WriteString(w, presetDetailBody)
	}))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL), xberg.WithTarget(xberg.TargetEnterprise))
	if _, err := client.GetPreset(context.Background(), "a b/c"); err != nil {
		t.Fatalf("GetPreset: %v", err)
	}
}

func TestGetPresetSample_ReturnsRawBytes(t *testing.T) {
	t.Parallel()
	sample := []byte("%PDF-1.7\nnot really a pdf\n")
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.URL.Path != "/v1/presets/invoice-v1/sample/input.pdf" {
			t.Errorf("path = %q, want the sample route", r.URL.Path)
		}
		// The route serves the sample's own media type, so the SDK must not
		// insist on JSON.
		if accept := r.Header.Get("Accept"); accept != "*/*" {
			t.Errorf("Accept = %q, want */*", accept)
		}
		w.Header().Set("Content-Type", "application/pdf")
		_, _ = w.Write(sample)
	}))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL), xberg.WithTarget(xberg.TargetPro))

	got, err := client.GetPresetSample(context.Background(), "invoice-v1", "input.pdf")
	if err != nil {
		t.Fatalf("GetPresetSample: %v", err)
	}
	if string(got) != string(sample) {
		t.Errorf("sample = %q, want %q", got, sample)
	}
}

func TestGetPresetSample_MapsErrorResponses(t *testing.T) {
	t.Parallel()
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, _ *http.Request) {
		w.WriteHeader(http.StatusNotFound)
		_, _ = io.WriteString(w, `{"error":"sample not found"}`)
	}))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL), xberg.WithTarget(xberg.TargetPro))
	_, err := client.GetPresetSample(context.Background(), "invoice-v1", "nope.pdf")
	var notFound *xberg.NotFoundError
	if !asError(err, &notFound) {
		t.Fatalf("expected NotFoundError, got %T: %v", err, err)
	}
}
