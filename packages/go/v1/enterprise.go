package xberg

import (
	"context"
	"encoding/json"
	"net/url"
)

// This file holds the Enterprise-only surface. Every method is capability-gated
// against the Enterprise tier (an explicit [WithTarget], or probed from GET
// /healthz), returning a [TierError] rather than a request that would 404 on
// Pro. Response bodies are returned as [json.RawMessage] — matching the
// Python/TS SDKs, which expose these endpoints untyped.

// Versions lists a document's versions (GET /v1/documents/{id}/versions).
// Enterprise only.
func (c *Client) Versions(ctx context.Context, documentID string) (json.RawMessage, error) {
	if err := c.requireTier(ctx, TargetEnterprise, "Versions"); err != nil {
		return nil, err
	}
	return c.enterpriseGet(ctx, "/v1/documents/"+url.PathEscape(documentID)+"/versions")
}

// Diff diffs document versions (GET /v1/documents/{id}/diff). Query parameters
// (e.g. "from", "to") are passed through verbatim. Enterprise only.
func (c *Client) Diff(ctx context.Context, documentID string, params map[string]string) (json.RawMessage, error) {
	if err := c.requireTier(ctx, TargetEnterprise, "Diff"); err != nil {
		return nil, err
	}
	path := "/v1/documents/" + url.PathEscape(documentID) + "/diff" + encodeParams(params)
	return c.enterpriseGet(ctx, path)
}

// GetDiffJob polls a diff job (GET /v1/documents/{id}/diff/{diffJobID}).
// Enterprise only.
func (c *Client) GetDiffJob(ctx context.Context, documentID, diffJobID string) (json.RawMessage, error) {
	if err := c.requireTier(ctx, TargetEnterprise, "GetDiffJob"); err != nil {
		return nil, err
	}
	path := "/v1/documents/" + url.PathEscape(documentID) + "/diff/" + url.PathEscape(diffJobID)
	return c.enterpriseGet(ctx, path)
}

// Presets lists read-only managed presets (GET /v1/presets). Enterprise only.
func (c *Client) Presets(ctx context.Context) (json.RawMessage, error) {
	if err := c.requireTier(ctx, TargetEnterprise, "Presets"); err != nil {
		return nil, err
	}
	return c.enterpriseGet(ctx, "/v1/presets")
}

// GetPreset fetches a managed preset (GET /v1/presets/{id}). Enterprise only.
func (c *Client) GetPreset(ctx context.Context, presetID string) (json.RawMessage, error) {
	if err := c.requireTier(ctx, TargetEnterprise, "GetPreset"); err != nil {
		return nil, err
	}
	return c.enterpriseGet(ctx, "/v1/presets/"+url.PathEscape(presetID))
}

// PresignUpload requests a presigned upload URL (POST /v1/uploads/presign).
// Enterprise only.
func (c *Client) PresignUpload(ctx context.Context, body any) (json.RawMessage, error) {
	if err := c.requireTier(ctx, TargetEnterprise, "PresignUpload"); err != nil {
		return nil, err
	}
	return c.enterpriseSend(ctx, methodPost, "/v1/uploads/presign", body)
}

// ConfirmUpload confirms a presigned upload (POST /v1/uploads/confirm).
// Enterprise only.
func (c *Client) ConfirmUpload(ctx context.Context, body any) (json.RawMessage, error) {
	if err := c.requireTier(ctx, TargetEnterprise, "ConfirmUpload"); err != nil {
		return nil, err
	}
	return c.enterpriseSend(ctx, methodPost, "/v1/uploads/confirm", body)
}

// Usage fetches usage/metering data (GET /v1/usage). Query parameters are
// passed through verbatim. Enterprise only.
func (c *Client) Usage(ctx context.Context, params map[string]string) (json.RawMessage, error) {
	if err := c.requireTier(ctx, TargetEnterprise, "Usage"); err != nil {
		return nil, err
	}
	return c.enterpriseGet(ctx, "/v1/usage"+encodeParams(params))
}

func (c *Client) enterpriseGet(ctx context.Context, path string) (json.RawMessage, error) {
	var out json.RawMessage
	if err := c.getJSON(ctx, path, &out); err != nil {
		return nil, err
	}
	return out, nil
}

func (c *Client) enterpriseSend(ctx context.Context, method, path string, body any) (json.RawMessage, error) {
	var out json.RawMessage
	if err := c.callJSON(ctx, method, path, body, &out); err != nil {
		return nil, err
	}
	return out, nil
}

// encodeParams renders a sorted "?k=v" query suffix, or "" when params is empty.
func encodeParams(params map[string]string) string {
	if len(params) == 0 {
		return ""
	}
	q := url.Values{}
	for k, v := range params {
		q.Set(k, v)
	}
	return "?" + q.Encode()
}
