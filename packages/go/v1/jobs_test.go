package xberg_test

import (
	"context"
	"fmt"
	"net/http"
	"net/http/httptest"
	"strings"
	"sync/atomic"
	"testing"
	"time"

	xberg "github.com/xberg-io/sdks/packages/go/v1"
)

// jobUUID is a valid UUID used across job fixtures — the generated JobResponse
// types its id as a UUID, so non-UUID fixture ids fail to decode.
const jobUUID = "550e8400-e29b-41d4-a716-446655440000"

func TestGetJob_ReturnsParsedJob(t *testing.T) {
	t.Parallel()
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.URL.Path != "/v1/jobs/"+jobUUID {
			t.Errorf("path = %q, want /v1/jobs/%s", r.URL.Path, jobUUID)
		}
		fmt.Fprintf(w, `{
			"id":%q,
			"filename":"a.pdf",
			"status":"completed",
			"created_at":"2025-12-21T10:00:00Z",
			"result":{"content":"hello world"}
		}`, jobUUID)
	}))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	job, err := client.GetJob(context.Background(), jobUUID)
	if err != nil {
		t.Fatalf("GetJob: %v", err)
	}
	if job.Id.String() != jobUUID {
		t.Errorf("Id = %q, want %s", job.Id.String(), jobUUID)
	}
	if job.Status != xberg.JobStatusCompleted {
		t.Errorf("Status = %q, want completed", job.Status)
	}
	if job.Result == nil || job.Result.Content != "hello world" {
		t.Errorf("Result.Content = %v, want 'hello world'", job.Result)
	}
	if !job.CreatedAt.Equal(time.Date(2025, 12, 21, 10, 0, 0, 0, time.UTC)) {
		t.Errorf("CreatedAt = %v, want 2025-12-21T10:00:00Z", job.CreatedAt)
	}
}

func TestGetJob_RejectsEmptyID(t *testing.T) {
	t.Parallel()
	client := mustClient(t, xberg.WithBaseURL("https://example.test"))
	_, err := client.GetJob(context.Background(), "")
	if err == nil {
		t.Errorf("GetJob(\"\") returned nil error")
	}
}

func TestGetJob_NotFound(t *testing.T) {
	t.Parallel()
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, _ *http.Request) {
		w.WriteHeader(http.StatusNotFound)
		_, _ = w.Write([]byte(`{"error":"Job not found"}`))
	}))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	_, err := client.GetJob(context.Background(), "missing")
	var notFound *xberg.NotFoundError
	if !asError(err, &notFound) {
		t.Fatalf("expected NotFoundError, got %T: %v", err, err)
	}
	if notFound.Status != http.StatusNotFound {
		t.Errorf("Status = %d, want 404", notFound.Status)
	}
}

// jobStatusHandler serves GET /v1/jobs/{id} returning the given status, adding
// a result body on terminal-success statuses.
func jobStatusHandler(status string) http.HandlerFunc {
	return func(w http.ResponseWriter, _ *http.Request) {
		extra := ""
		if status == "completed" || status == "partial_success" {
			extra = `,"result":{"content":"done"}`
		}
		fmt.Fprintf(
			w,
			`{"id":%q,"filename":"a.pdf","status":%q,"created_at":"2025-12-21T10:00:00Z"%s}`,
			jobUUID, status, extra,
		)
	}
}

func TestWaitForJob_ImmediateCompletion(t *testing.T) {
	t.Parallel()
	server := httptest.NewServer(jobStatusHandler("completed"))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	job, err := client.WaitForJob(context.Background(), jobUUID, nil)
	if err != nil {
		t.Fatalf("WaitForJob: %v", err)
	}
	if job.Result == nil || job.Result.Content != "done" {
		t.Errorf("Result.Content = %v, want done", job.Result)
	}
}

func TestWaitForJob_PollsUntilTerminal(t *testing.T) {
	t.Parallel()
	var calls atomic.Int32
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, _ *http.Request) {
		count := calls.Add(1)
		status := "processing"
		extra := ""
		if count >= 3 {
			status = "completed"
			extra = `,"result":{"content":"finished"}`
		}
		fmt.Fprintf(
			w,
			`{"id":%q,"filename":"a.pdf","status":%q,"created_at":"2025-12-21T10:00:00Z"%s}`,
			jobUUID, status, extra,
		)
	}))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	job, err := client.WaitForJob(context.Background(), jobUUID, &xberg.WaitOptions{
		Timeout:      2 * time.Second,
		PollInterval: 5 * time.Millisecond,
		Backoff:      xberg.BackoffConstant,
	})
	if err != nil {
		t.Fatalf("WaitForJob: %v", err)
	}
	if job.Result == nil || job.Result.Content != "finished" {
		t.Errorf("Result.Content = %v, want finished", job.Result)
	}
	if got := calls.Load(); got < 3 {
		t.Errorf("server saw %d calls, want >=3", got)
	}
}

func TestWaitForJob_TimesOut(t *testing.T) {
	t.Parallel()
	server := httptest.NewServer(jobStatusHandler("processing"))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	_, err := client.WaitForJob(context.Background(), jobUUID, &xberg.WaitOptions{
		Timeout:      40 * time.Millisecond,
		PollInterval: 5 * time.Millisecond,
		Backoff:      xberg.BackoffConstant,
	})
	var timeout *xberg.TimeoutError
	if !asError(err, &timeout) {
		t.Fatalf("expected TimeoutError, got %T: %v", err, err)
	}
	if timeout.JobID != jobUUID {
		t.Errorf("TimeoutError.JobID = %q, want %s", timeout.JobID, jobUUID)
	}
}

func TestWaitForJob_FailedStatusReturnsError(t *testing.T) {
	t.Parallel()
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, _ *http.Request) {
		fmt.Fprintf(w, `{
			"id":%q,"filename":"a.pdf","status":"failed","created_at":"2025-12-21T10:00:00Z",
			"result":{"content":"OCR engine crashed"}
		}`, jobUUID)
	}))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	_, err := client.WaitForJob(context.Background(), jobUUID, nil)
	if err == nil {
		t.Fatalf("expected error for failed job")
	}
	if !strings.Contains(err.Error(), "OCR engine crashed") {
		t.Errorf("error %q does not surface server message", err)
	}
}

func TestWaitForJob_ExponentialBackoffIncreases(t *testing.T) {
	t.Parallel()
	var timestamps []time.Time
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, _ *http.Request) {
		timestamps = append(timestamps, time.Now())
		status := "processing"
		extra := ""
		if len(timestamps) >= 4 {
			status = "completed"
			extra = `,"result":{"content":"done"}`
		}
		fmt.Fprintf(
			w,
			`{"id":%q,"filename":"a.pdf","status":%q,"created_at":"2025-12-21T10:00:00Z"%s}`,
			jobUUID, status, extra,
		)
	}))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	if _, err := client.WaitForJob(context.Background(), jobUUID, &xberg.WaitOptions{
		Timeout:      2 * time.Second,
		PollInterval: 10 * time.Millisecond,
		Backoff:      xberg.BackoffExponential,
	}); err != nil {
		t.Fatalf("WaitForJob: %v", err)
	}
	if len(timestamps) < 4 {
		t.Fatalf("got %d polls, want >=4", len(timestamps))
	}
	gap1 := timestamps[1].Sub(timestamps[0])
	gap2 := timestamps[2].Sub(timestamps[1])
	if gap2 < gap1 {
		t.Errorf("expected exponential growth, gap1=%v gap2=%v", gap1, gap2)
	}
}

func TestWaitForJobs_ParallelCompletion(t *testing.T) {
	t.Parallel()
	ids := []string{
		"11111111-1111-1111-1111-111111111111",
		"22222222-2222-2222-2222-222222222222",
		"33333333-3333-3333-3333-333333333333",
	}
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		id := strings.TrimPrefix(r.URL.Path, "/v1/jobs/")
		fmt.Fprintf(
			w,
			`{"id":%q,"filename":"a.pdf","status":"completed","created_at":"2025-12-21T10:00:00Z","result":{"content":%q}}`,
			id, "result-"+id,
		)
	}))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	results, err := client.WaitForJobs(context.Background(), ids, nil)
	if err != nil {
		t.Fatalf("WaitForJobs: %v", err)
	}
	for i, result := range results {
		want := "result-" + ids[i]
		if result.Result == nil || result.Result.Content != want {
			t.Errorf("results[%d].Result = %v, want content %q", i, result.Result, want)
		}
	}
}

func TestExtractAndWait_HappyPath(t *testing.T) {
	t.Parallel()
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		switch {
		case r.Method == http.MethodPost && r.URL.Path == "/v1/extract":
			w.WriteHeader(http.StatusAccepted)
			fmt.Fprintf(w, `{"job_ids":[%q],"status":"pending"}`, jobUUID)
		case r.Method == http.MethodGet && r.URL.Path == "/v1/jobs/"+jobUUID:
			fmt.Fprintf(w, `{
				"id":%q,"filename":"a.pdf","status":"completed",
				"created_at":"2025-12-21T10:00:00Z","result":{"content":"the text"}
			}`, jobUUID)
		default:
			t.Errorf("unexpected request %s %s", r.Method, r.URL.Path)
		}
	}))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	job, err := client.ExtractAndWait(
		context.Background(),
		xberg.FileSource{Name: "a.pdf", Reader: strings.NewReader("hello")},
		nil,
	)
	if err != nil {
		t.Fatalf("ExtractAndWait: %v", err)
	}
	if job.Result == nil || job.Result.Content != "the text" {
		t.Errorf("Result.Content = %v, want 'the text'", job.Result)
	}
}

func TestExtractAndWait_PropagatesExtractError(t *testing.T) {
	t.Parallel()
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, _ *http.Request) {
		w.WriteHeader(http.StatusBadRequest)
		_, _ = w.Write([]byte(`{"error":"bad input"}`))
	}))
	defer server.Close()
	client := mustClient(t, xberg.WithBaseURL(server.URL))
	_, err := client.ExtractAndWait(
		context.Background(),
		xberg.FileSource{Name: "a.pdf", Reader: strings.NewReader("hello")},
		nil,
	)
	var validation *xberg.ValidationError
	if !asError(err, &validation) {
		t.Fatalf("expected ValidationError, got %T: %v", err, err)
	}
}
