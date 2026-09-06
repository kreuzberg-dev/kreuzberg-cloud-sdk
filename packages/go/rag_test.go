package xberg_test

import (
	"context"
	"encoding/json"
	"io"
	"net/http"
	"net/http/httptest"
	"strings"
	"testing"

	xberg "github.com/xberg-io/sdks/packages/go"
)

// TestDeleteRagCollection_ReturnsNilErrorOn204 is a regression test for the
// bug where DeleteRagCollection always decoded the response body into a
// json.RawMessage, so the 204 No Content the spec documents surfaced as
// "xberg: decoding response: EOF" on a successful delete.
func TestDeleteRagCollection_ReturnsNilErrorOn204(t *testing.T) {
	t.Parallel()
	var gotMethod, gotPath string
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		gotMethod = r.Method
		gotPath = r.URL.Path
		w.WriteHeader(http.StatusNoContent)
	}))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	if err := client.DeleteRagCollection(context.Background(), "my-docs"); err != nil {
		t.Fatalf("DeleteRagCollection: %v", err)
	}
	if gotMethod != http.MethodDelete {
		t.Errorf("method = %q, want DELETE", gotMethod)
	}
	if gotPath != "/v1/rag/collections/my-docs" {
		t.Errorf("path = %q, want /v1/rag/collections/my-docs", gotPath)
	}
}

func TestDeleteRagCollection_NotFound(t *testing.T) {
	t.Parallel()
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, _ *http.Request) {
		w.WriteHeader(http.StatusNotFound)
		_, _ = w.Write([]byte(`{"error":"collection not found"}`))
	}))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	err := client.DeleteRagCollection(context.Background(), "missing")
	var notFound *xberg.NotFoundError
	if !asError(err, &notFound) {
		t.Fatalf("expected NotFoundError, got %T: %v", err, err)
	}
}

func TestDeleteRagDocuments_IssuesDeleteWithBodyAndDecodesResponse(t *testing.T) {
	t.Parallel()
	var gotMethod, gotPath, gotBody string
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		gotMethod = r.Method
		gotPath = r.URL.Path
		body, err := io.ReadAll(r.Body)
		if err != nil {
			t.Fatalf("reading request body: %v", err)
		}
		gotBody = string(body)
		_, _ = w.Write([]byte(`{"deleted_count":5}`))
	}))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	requestBody := map[string]any{"ids": []string{"550e8400-e29b-41d4-a716-446655440000"}}
	got, err := client.DeleteRagDocuments(context.Background(), "my-docs", requestBody)
	if err != nil {
		t.Fatalf("DeleteRagDocuments: %v", err)
	}
	if gotMethod != http.MethodDelete {
		t.Errorf("method = %q, want DELETE", gotMethod)
	}
	if gotPath != "/v1/rag/collections/my-docs/documents" {
		t.Errorf("path = %q, want /v1/rag/collections/my-docs/documents", gotPath)
	}
	if !strings.Contains(gotBody, "550e8400-e29b-41d4-a716-446655440000") {
		t.Errorf("request body = %q, want it to carry the document id", gotBody)
	}
	var decoded struct {
		DeletedCount int `json:"deleted_count"`
	}
	if err := json.Unmarshal(got, &decoded); err != nil {
		t.Fatalf("decoding response: %v", err)
	}
	if decoded.DeletedCount != 5 {
		t.Errorf("deleted_count = %d, want 5", decoded.DeletedCount)
	}
}
