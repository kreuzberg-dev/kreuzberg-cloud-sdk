package xberg

import (
	"context"
	"errors"
	"fmt"
	"net/url"
	"sync"
	"time"
)

// Default poll/timeout values used when [WaitOptions] is nil or has zero
// fields. Tuned to be friendly for long-running extractions while remaining
// snappy for fast jobs (sub-second OCR-free PDFs).
const (
	defaultWaitTimeout      = 5 * time.Minute
	defaultWaitPollInterval = 1 * time.Second
	maxWaitPollInterval     = 30 * time.Second
)

// GetJob fetches the current status of a single job by ID.
//
// Part of the shared surface (Enterprise + Pro).
func (c *Client) GetJob(ctx context.Context, jobID string) (*JobResponse, error) {
	if jobID == "" {
		return nil, fmt.Errorf("xberg: GetJob requires a non-empty jobID")
	}
	var job JobResponse
	if err := c.getJSON(ctx, "/v1/jobs/"+url.PathEscape(jobID), &job); err != nil {
		return nil, err
	}
	return &job, nil
}

// ListJobs lists jobs via GET /v1/jobs (paginated). A non-positive limit or
// offset is omitted from the query string.
//
// Part of the shared surface (Enterprise + Pro).
func (c *Client) ListJobs(ctx context.Context, limit, offset int) (*ListJobsResponse, error) {
	path := "/v1/jobs" + pageQuery(limit, offset)
	var out ListJobsResponse
	if err := c.getJSON(ctx, path, &out); err != nil {
		return nil, err
	}
	return &out, nil
}

// Audit fetches audit-log entries via GET /v1/audit. An empty action or a
// non-positive limit/offset is omitted from the query string.
//
// Part of the shared surface (Enterprise + Pro).
func (c *Client) Audit(ctx context.Context, action string, limit, offset int) (*ListAuditEntriesResponse, error) {
	q := url.Values{}
	if action != "" {
		q.Set("action", action)
	}
	if limit > 0 {
		q.Set("limit", fmt.Sprintf("%d", limit))
	}
	if offset > 0 {
		q.Set("offset", fmt.Sprintf("%d", offset))
	}
	path := "/v1/audit"
	if encoded := q.Encode(); encoded != "" {
		path += "?" + encoded
	}
	var out ListAuditEntriesResponse
	if err := c.getJSON(ctx, path, &out); err != nil {
		return nil, err
	}
	return &out, nil
}

// WaitForJob polls GET /v1/jobs/{id} until the job reaches a terminal status or
// the configured timeout elapses. It returns the terminal [JobResponse] on a
// successful state (completed / partial_success); a failed or cancelled job
// yields an error wrapping the server-supplied message.
//
// Part of the shared surface (Enterprise + Pro).
func (c *Client) WaitForJob(
	ctx context.Context,
	jobID string,
	opts *WaitOptions,
) (*JobResponse, error) {
	options := normaliseWaitOptions(opts)
	start := time.Now()
	deadline := start.Add(options.Timeout)
	pollInterval := options.PollInterval
	for {
		job, err := c.GetJob(ctx, jobID)
		if err != nil {
			return nil, err
		}
		if IsTerminalStatus(job.Status) {
			return jobFromTerminal(jobID, job)
		}
		if !time.Now().Before(deadline) {
			return nil, &TimeoutError{JobID: jobID, Elapsed: time.Since(start)}
		}
		wait := pollInterval
		if remaining := time.Until(deadline); remaining < wait {
			wait = remaining
		}
		select {
		case <-ctx.Done():
			return nil, ctx.Err()
		case <-time.After(wait):
		}
		if options.Backoff == BackoffExponential {
			pollInterval = nextPollInterval(pollInterval)
		}
	}
}

// WaitForJobs concurrently waits for a slice of job IDs and returns their
// results in submission order. Errors from individual jobs are propagated
// immediately — the first error cancels the remaining waits.
//
// Part of the shared surface (Enterprise + Pro).
func (c *Client) WaitForJobs(
	ctx context.Context,
	jobIDs []string,
	opts *WaitOptions,
) ([]*JobResponse, error) {
	if len(jobIDs) == 0 {
		return nil, nil
	}
	results := make([]*JobResponse, len(jobIDs))
	errs := make([]error, len(jobIDs))
	groupCtx, cancel := context.WithCancel(ctx)
	defer cancel()
	var waitGroup sync.WaitGroup
	for index, jobID := range jobIDs {
		waitGroup.Add(1)
		go func(i int, id string) {
			defer waitGroup.Done()
			result, err := c.WaitForJob(groupCtx, id, opts)
			results[i] = result
			if err != nil {
				errs[i] = err
				cancel()
			}
		}(index, jobID)
	}
	waitGroup.Wait()
	for _, err := range errs {
		if err != nil && !errors.Is(err, context.Canceled) {
			return results, err
		}
	}
	for _, err := range errs {
		if err != nil {
			return results, err
		}
	}
	return results, nil
}

// ExtractAndWait is a convenience wrapper that submits a single document and
// blocks until extraction completes, returning the terminal [JobResponse]. The
// extraction options and wait policy can be overridden via opts; either field
// may be nil to accept defaults.
//
// Part of the shared surface (Enterprise + Pro).
func (c *Client) ExtractAndWait(
	ctx context.Context,
	file FileSource,
	opts *ExtractAndWaitOptions,
) (*JobResponse, error) {
	var extraction *ExtractionOptions
	var wait *WaitOptions
	if opts != nil {
		extraction = opts.Extraction
		wait = opts.Wait
	}
	job, err := c.Extract(ctx, file, extraction)
	if err != nil {
		return nil, err
	}
	return c.WaitForJob(ctx, job.Id.String(), wait)
}

func normaliseWaitOptions(opts *WaitOptions) WaitOptions {
	out := WaitOptions{
		Timeout:      defaultWaitTimeout,
		PollInterval: defaultWaitPollInterval,
		Backoff:      BackoffExponential,
	}
	if opts == nil {
		return out
	}
	if opts.Timeout > 0 {
		out.Timeout = opts.Timeout
	}
	if opts.PollInterval > 0 {
		out.PollInterval = opts.PollInterval
	}
	out.Backoff = opts.Backoff
	return out
}

func nextPollInterval(current time.Duration) time.Duration {
	next := current * 2
	if next > maxWaitPollInterval {
		return maxWaitPollInterval
	}
	return next
}

// jobFromTerminal returns a terminal job or maps a failed/cancelled state to an
// error carrying the server-supplied detail when present.
func jobFromTerminal(jobID string, job *JobResponse) (*JobResponse, error) {
	switch job.Status {
	case JobStatusCompleted, JobStatusPartialSuccess:
		return job, nil
	case JobStatusFailed:
		if detail := jobFailureDetail(job); detail != "" {
			return nil, fmt.Errorf("xberg: job %s failed: %s", jobID, detail)
		}
		return nil, fmt.Errorf("xberg: job %s failed", jobID)
	case JobStatusCancelled:
		return nil, fmt.Errorf("xberg: job %s was cancelled", jobID)
	default:
		return nil, fmt.Errorf(
			"xberg: job %s reached unrecognized terminal status %q", jobID, job.Status,
		)
	}
}

// jobFailureDetail best-effort extracts a human-readable failure message from a
// terminal job's inlined extraction result.
func jobFailureDetail(job *JobResponse) string {
	if job.Result != nil && job.Result.Content != "" {
		return job.Result.Content
	}
	return ""
}

// pageQuery builds a "?limit=&offset=" suffix, omitting non-positive values.
func pageQuery(limit, offset int) string {
	q := url.Values{}
	if limit > 0 {
		q.Set("limit", fmt.Sprintf("%d", limit))
	}
	if offset > 0 {
		q.Set("offset", fmt.Sprintf("%d", offset))
	}
	if encoded := q.Encode(); encoded != "" {
		return "?" + encoded
	}
	return ""
}
