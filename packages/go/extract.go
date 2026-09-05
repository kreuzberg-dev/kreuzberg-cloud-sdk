package xberg

import (
	"bytes"
	"context"
	"encoding/json"
	"fmt"
	"io"
	"mime/multipart"
	"net/textproto"
	"strings"
)

// Extract submits a single document for asynchronous extraction and returns the
// queued [JobResponse]. Use [Client.WaitForJob] (or [Client.ExtractAndWait] for
// a one-shot helper) to obtain the extraction result.
//
// Part of the shared surface (Enterprise + Pro).
func (c *Client) Extract(
	ctx context.Context,
	file FileSource,
	opts *ExtractionOptions,
) (*JobResponse, error) {
	jobs, err := c.ExtractBatch(ctx, []FileSource{file}, opts)
	if err != nil {
		return nil, err
	}
	if len(jobs) == 0 {
		return nil, fmt.Errorf("xberg: server accepted extract request but returned no job IDs")
	}
	return jobs[0], nil
}

// ExtractBatch submits multiple documents in a single multipart request. The
// server returns one job ID per file (in submission order); each is then
// fetched via [Client.GetJob] so callers receive fully-typed [JobResponse]
// values, mirroring the Python SDK.
//
// Part of the shared surface (Enterprise + Pro).
func (c *Client) ExtractBatch(
	ctx context.Context,
	files []FileSource,
	opts *ExtractionOptions,
) ([]*JobResponse, error) {
	if len(files) == 0 {
		return nil, fmt.Errorf("xberg: ExtractBatch requires at least one file")
	}
	if err := validateFileSources(files); err != nil {
		return nil, err
	}
	body, contentType, err := buildMultipartBody(files, opts)
	if err != nil {
		return nil, err
	}
	var resp ExtractResponse
	spec := requestSpec{
		method:          methodPost,
		path:            "/v1/extract",
		body:            bytes.NewReader(body),
		bodyContentType: contentType,
		rewindBody: func() (io.Reader, error) {
			return bytes.NewReader(body), nil
		},
	}
	if err := c.doJSON(ctx, spec, &resp); err != nil {
		return nil, err
	}
	jobIDs := []string{}
	if resp.JobIds != nil {
		jobIDs = *resp.JobIds
	}
	if len(jobIDs) == 0 {
		return nil, fmt.Errorf("xberg: extract response contained no job IDs")
	}
	if len(jobIDs) != len(files) {
		return nil, fmt.Errorf("xberg: expected %d job IDs, got %d", len(files), len(jobIDs))
	}
	jobs := make([]*JobResponse, len(jobIDs))
	for i, id := range jobIDs {
		job, err := c.GetJob(ctx, id)
		if err != nil {
			return nil, err
		}
		jobs[i] = job
	}
	return jobs, nil
}

// buildMultipartBody serializes files and optional ExtractionOptions into a
// multipart/form-data body matching the API's documented wire format:
//
//	parts: file (one per document) + optional "options" (JSON string) + "webhook" (JSON string)
func buildMultipartBody(
	files []FileSource,
	opts *ExtractionOptions,
) ([]byte, string, error) {
	var buf bytes.Buffer
	writer := multipart.NewWriter(&buf)
	if err := writeFileParts(writer, files); err != nil {
		return nil, "", err
	}
	if opts != nil {
		encoded, err := json.Marshal(opts)
		if err != nil {
			return nil, "", fmt.Errorf("xberg: encoding options: %w", err)
		}
		if err := writer.WriteField("options", string(encoded)); err != nil {
			return nil, "", fmt.Errorf("xberg: writing options field: %w", err)
		}
	}
	if err := writer.WriteField("webhook", `{"url":""}`); err != nil {
		return nil, "", fmt.Errorf("xberg: writing webhook field: %w", err)
	}
	if err := writer.Close(); err != nil {
		return nil, "", fmt.Errorf("xberg: closing multipart writer: %w", err)
	}
	return buf.Bytes(), writer.FormDataContentType(), nil
}

// writeFileParts appends one "file" part per document to writer, tagging each
// with a filename and a sniffed media type. Shared by the extraction and
// auto-tune submissions, which use the same repeated "file" part convention.
func writeFileParts(writer *multipart.Writer, files []FileSource) error {
	for _, file := range files {
		header := textproto.MIMEHeader{}
		header.Set(
			"Content-Disposition",
			fmt.Sprintf(
				`form-data; name="file"; filename=%q`,
				strings.ReplaceAll(file.Name, `"`, `\"`),
			),
		)
		header.Set("Content-Type", sniffContentType(file.Name))
		part, err := writer.CreatePart(header)
		if err != nil {
			return fmt.Errorf("xberg: creating multipart part: %w", err)
		}
		if _, err := io.Copy(part, file.Reader); err != nil {
			return fmt.Errorf("xberg: copying file %q into multipart body: %w", file.Name, err)
		}
	}
	return nil
}

// validateFileSources rejects file sources that cannot be serialized into a
// multipart body, naming the offending index so the caller can fix it.
func validateFileSources(files []FileSource) error {
	for i, f := range files {
		if f.Name == "" {
			return fmt.Errorf("xberg: file %d: Name must not be empty", i)
		}
		if f.Reader == nil {
			return fmt.Errorf("xberg: file %d (%s): Reader must not be nil", i, f.Name)
		}
	}
	return nil
}

// sniffContentType picks a reasonable multipart Content-Type for a filename.
// We map a small set of common extensions; everything else falls back to the
// generic application/octet-stream which the server accepts.
func sniffContentType(filename string) string {
	lower := strings.ToLower(filename)
	switch {
	case strings.HasSuffix(lower, ".pdf"):
		return "application/pdf"
	case strings.HasSuffix(lower, ".png"):
		return "image/png"
	case strings.HasSuffix(lower, ".jpg"), strings.HasSuffix(lower, ".jpeg"):
		return "image/jpeg"
	case strings.HasSuffix(lower, ".txt"):
		return "text/plain"
	case strings.HasSuffix(lower, ".md"):
		return "text/markdown"
	case strings.HasSuffix(lower, ".csv"):
		return "text/csv"
	case strings.HasSuffix(lower, ".docx"):
		return "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
	default:
		return "application/octet-stream"
	}
}
