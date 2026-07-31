package xberg_test

import (
	"context"
	"encoding/json"
	"fmt"
	"io"
	"mime"
	"mime/multipart"
	"net/http"
	"net/http/httptest"
	"strings"
	"testing"

	xberg "github.com/xberg-io/sdks/packages/go/v1"
)

// UUID fixtures for extract tests — the generated JobResponse types its id as a
// UUID, and Extract fetches each returned job via GetJob.
const (
	extractJobA = "aaaaaaaa-1111-1111-1111-111111111111"
	extractJobB = "bbbbbbbb-2222-2222-2222-222222222222"
	extractJobC = "cccccccc-3333-3333-3333-333333333333"
)

// jobBody renders a minimal terminal GET /v1/jobs/{id} response body.
func jobBody(id, filename, status string) string {
	return fmt.Sprintf(
		`{"id":%q,"filename":%q,"status":%q,"created_at":"2025-12-21T10:00:00Z"}`,
		id, filename, status,
	)
}

func TestExtract_SubmitsSingleFileAndReturnsJob(t *testing.T) {
	t.Parallel()
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		switch {
		case r.Method == http.MethodPost && r.URL.Path == "/v1/extract":
			if got := r.Header.Get("Authorization"); got != "Bearer test-key" {
				t.Errorf("Authorization = %q, want %q", got, "Bearer test-key")
			}
			w.WriteHeader(http.StatusAccepted)
			fmt.Fprintf(w, `{"job_ids":[%q],"status":"pending"}`, extractJobA)
		case r.Method == http.MethodGet && r.URL.Path == "/v1/jobs/"+extractJobA:
			_, _ = w.Write([]byte(jobBody(extractJobA, "invoice.pdf", "pending")))
		default:
			t.Errorf("unexpected request %s %s", r.Method, r.URL.Path)
		}
	}))
	defer server.Close()

	client := mustClient(t, xberg.WithBaseURL(server.URL), xberg.WithAPIKey("test-key"))
	job, err := client.Extract(
		context.Background(),
		xberg.FileSource{Name: "invoice.pdf", Reader: strings.NewReader("hello")},
		nil,
	)
	if err != nil {
		t.Fatalf("Extract: %v", err)
	}
	if job.Id.String() != extractJobA {
		t.Errorf("Job.Id = %q, want %s", job.Id.String(), extractJobA)
	}
	if job.Filename != "invoice.pdf" {
		t.Errorf("Job.Filename = %q, want invoice.pdf", job.Filename)
	}
	if job.Status != xberg.JobStatusPending {
		t.Errorf("Job.Status = %q, want pending", job.Status)
	}
}

func TestExtract_MultipartBodyShape(t *testing.T) {
	t.Parallel()
	type capture struct {
		filenames    []string
		contentTypes []string
		options      string
		webhook      string
	}
	var got capture
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.Method == http.MethodGet {
			id := strings.TrimPrefix(r.URL.Path, "/v1/jobs/")
			_, _ = w.Write([]byte(jobBody(id, "f.pdf", "pending")))
			return
		}
		mediaType, params, err := mime.ParseMediaType(r.Header.Get("Content-Type"))
		if err != nil || !strings.HasPrefix(mediaType, "multipart/") {
			t.Errorf("content-type = %q, want multipart/...", r.Header.Get("Content-Type"))
		}
		reader := multipart.NewReader(r.Body, params["boundary"])
		for {
			part, err := reader.NextPart()
			if err == io.EOF {
				break
			}
			if err != nil {
				t.Fatalf("multipart read: %v", err)
			}
			body, _ := io.ReadAll(part)
			switch part.FormName() {
			case "file":
				got.filenames = append(got.filenames, part.FileName())
				got.contentTypes = append(got.contentTypes, part.Header.Get("Content-Type"))
			case "options":
				got.options = string(body)
			case "webhook":
				got.webhook = string(body)
			}
		}
		w.WriteHeader(http.StatusAccepted)
		fmt.Fprintf(w, `{"job_ids":[%q,%q],"status":"pending"}`, extractJobA, extractJobB)
	}))
	defer server.Close()

	client := mustClient(t, xberg.WithBaseURL(server.URL))
	_, err := client.ExtractBatch(
		context.Background(),
		[]xberg.FileSource{
			{Name: "a.pdf", Reader: strings.NewReader("aaaa")},
			{Name: "b.png", Reader: strings.NewReader("bbbb")},
		},
		&xberg.ExtractionOptions{
			ExtractionConfig: map[string]any{
				"output_format": "markdown",
				"disable_ocr":   false,
			},
		},
	)
	if err != nil {
		t.Fatalf("ExtractBatch: %v", err)
	}
	want := []string{"a.pdf", "b.png"}
	for i, name := range want {
		if got.filenames[i] != name {
			t.Errorf("filenames[%d] = %q, want %q", i, got.filenames[i], name)
		}
	}
	if got.contentTypes[0] != "application/pdf" {
		t.Errorf("contentTypes[0] = %q, want application/pdf", got.contentTypes[0])
	}
	if got.contentTypes[1] != "image/png" {
		t.Errorf("contentTypes[1] = %q, want image/png", got.contentTypes[1])
	}
	if !strings.Contains(got.options, `"output_format":"markdown"`) {
		t.Errorf("options = %q, missing output_format=markdown", got.options)
	}
	if !strings.Contains(got.options, `"disable_ocr":false`) {
		t.Errorf("options = %q, missing disable_ocr=false", got.options)
	}
	if got.webhook != `{"url":""}` {
		t.Errorf("webhook = %q, want empty webhook stub", got.webhook)
	}
}

func TestExtractBatch_RejectsEmptySlice(t *testing.T) {
	t.Parallel()
	client := mustClient(t, xberg.WithBaseURL("https://example.test"))
	if _, err := client.ExtractBatch(context.Background(), nil, nil); err == nil {
		t.Errorf("ExtractBatch(nil) returned nil error")
	}
}

func TestExtractBatch_RejectsMissingFilename(t *testing.T) {
	t.Parallel()
	client := mustClient(t, xberg.WithBaseURL("https://example.test"))
	_, err := client.ExtractBatch(
		context.Background(),
		[]xberg.FileSource{{Name: "", Reader: strings.NewReader("x")}},
		nil,
	)
	if err == nil {
		t.Errorf("ExtractBatch with empty Name returned nil error")
	}
}

func TestExtractBatch_RejectsMissingReader(t *testing.T) {
	t.Parallel()
	client := mustClient(t, xberg.WithBaseURL("https://example.test"))
	_, err := client.ExtractBatch(
		context.Background(),
		[]xberg.FileSource{{Name: "x.pdf", Reader: nil}},
		nil,
	)
	if err == nil {
		t.Errorf("ExtractBatch with nil Reader returned nil error")
	}
}

func TestExtractBatch_ReturnsJobsInOrder(t *testing.T) {
	t.Parallel()
	ids := []string{extractJobA, extractJobB, extractJobC}
	files := []string{"1.pdf", "2.pdf", "3.pdf"}
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.Method == http.MethodGet {
			id := strings.TrimPrefix(r.URL.Path, "/v1/jobs/")
			idx := 0
			for i, candidate := range ids {
				if candidate == id {
					idx = i
				}
			}
			_, _ = w.Write([]byte(jobBody(id, files[idx], "pending")))
			return
		}
		w.WriteHeader(http.StatusAccepted)
		fmt.Fprintf(w, `{"job_ids":[%q,%q,%q],"status":"pending"}`, ids[0], ids[1], ids[2])
	}))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	jobs, err := client.ExtractBatch(
		context.Background(),
		[]xberg.FileSource{
			{Name: "1.pdf", Reader: strings.NewReader("1")},
			{Name: "2.pdf", Reader: strings.NewReader("2")},
			{Name: "3.pdf", Reader: strings.NewReader("3")},
		},
		nil,
	)
	if err != nil {
		t.Fatalf("ExtractBatch: %v", err)
	}
	for i, job := range jobs {
		if job.Id.String() != ids[i] {
			t.Errorf("jobs[%d].Id = %q, want %q", i, job.Id.String(), ids[i])
		}
		if job.Filename != files[i] {
			t.Errorf("jobs[%d].Filename = %q, want %q", i, job.Filename, files[i])
		}
	}
}

func TestExtractBatch_ServerReturnsMismatchedJobCount(t *testing.T) {
	t.Parallel()
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, _ *http.Request) {
		w.WriteHeader(http.StatusAccepted)
		fmt.Fprintf(w, `{"job_ids":[%q],"status":"pending"}`, extractJobA)
	}))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	_, err := client.ExtractBatch(
		context.Background(),
		[]xberg.FileSource{
			{Name: "a.pdf", Reader: strings.NewReader("aa")},
			{Name: "b.pdf", Reader: strings.NewReader("bb")},
		},
		nil,
	)
	if err == nil {
		t.Errorf("expected error on mismatched job count, got nil")
	}
}

func TestExtract_OptionsAreOptional(t *testing.T) {
	t.Parallel()
	var receivedOptions bool
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.Method == http.MethodGet {
			id := strings.TrimPrefix(r.URL.Path, "/v1/jobs/")
			_, _ = w.Write([]byte(jobBody(id, "a.pdf", "pending")))
			return
		}
		_, params, _ := mime.ParseMediaType(r.Header.Get("Content-Type"))
		reader := multipart.NewReader(r.Body, params["boundary"])
		for {
			part, err := reader.NextPart()
			if err == io.EOF {
				break
			}
			if err != nil {
				t.Fatalf("read multipart: %v", err)
			}
			if part.FormName() == "options" {
				receivedOptions = true
			}
		}
		w.WriteHeader(http.StatusAccepted)
		fmt.Fprintf(w, `{"job_ids":[%q],"status":"pending"}`, extractJobA)
	}))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	if _, err := client.Extract(
		context.Background(),
		xberg.FileSource{Name: "a.pdf", Reader: strings.NewReader("a")},
		nil,
	); err != nil {
		t.Fatalf("Extract: %v", err)
	}
	if receivedOptions {
		t.Errorf("server received options part when none was passed")
	}
}

func TestExtract_PropagatesAPIError(t *testing.T) {
	t.Parallel()
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, _ *http.Request) {
		w.WriteHeader(http.StatusBadRequest)
		_ = json.NewEncoder(w).Encode(map[string]string{"error": "no document"})
	}))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	_, err := client.Extract(
		context.Background(),
		xberg.FileSource{Name: "x.pdf", Reader: strings.NewReader("x")},
		nil,
	)
	if err == nil {
		t.Fatalf("expected error, got nil")
	}
	var validation *xberg.ValidationError
	if !asError(err, &validation) {
		t.Fatalf("expected ValidationError, got %T: %v", err, err)
	}
	if !strings.Contains(validation.Message, "no document") {
		t.Errorf("error message = %q, want it to contain 'no document'", validation.Message)
	}
}
