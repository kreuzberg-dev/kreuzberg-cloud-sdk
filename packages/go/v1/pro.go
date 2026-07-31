package xberg

import (
	"context"
	"encoding/json"
	"net/url"
)

// This file holds the Pro-only surface. Every method is capability-gated: it
// verifies the connected instance is the Pro tier (an explicit [WithTarget], or
// probed from GET /healthz) and returns a [TierError] rather than issuing a
// request that would 404 on Enterprise.

// AuthConfig fetches the instance's accepted auth methods (GET /auth/config).
// Pro only.
func (c *Client) AuthConfig(ctx context.Context) (*AuthConfigResponse, error) {
	if err := c.requireTier(ctx, TargetPro, "AuthConfig"); err != nil {
		return nil, err
	}
	var out AuthConfigResponse
	if err := c.getJSON(ctx, "/auth/config", &out); err != nil {
		return nil, err
	}
	return &out, nil
}

// Login exchanges a verified OIDC ID token for a Pro session JWT
// (POST /auth/login). Pro only.
func (c *Client) Login(ctx context.Context, body LoginRequest) (*LoginResponse, error) {
	if err := c.requireTier(ctx, TargetPro, "Login"); err != nil {
		return nil, err
	}
	var out LoginResponse
	if err := c.callJSON(ctx, methodPost, "/auth/login", body, &out); err != nil {
		return nil, err
	}
	return &out, nil
}

// ListSavedPresets lists saved presets (GET /v1/saved-presets). Pro only.
func (c *Client) ListSavedPresets(ctx context.Context) (*ListSavedPresetsResponse, error) {
	if err := c.requireTier(ctx, TargetPro, "ListSavedPresets"); err != nil {
		return nil, err
	}
	var out ListSavedPresetsResponse
	if err := c.getJSON(ctx, "/v1/saved-presets", &out); err != nil {
		return nil, err
	}
	return &out, nil
}

// CreateSavedPreset creates a saved preset (POST /v1/saved-presets). Pro only.
func (c *Client) CreateSavedPreset(ctx context.Context, body CreateSavedPresetRequest) (*CreateSavedPresetResponse, error) {
	if err := c.requireTier(ctx, TargetPro, "CreateSavedPreset"); err != nil {
		return nil, err
	}
	var out CreateSavedPresetResponse
	if err := c.callJSON(ctx, methodPost, "/v1/saved-presets", body, &out); err != nil {
		return nil, err
	}
	return &out, nil
}

// DeleteSavedPreset deletes a saved preset (DELETE /v1/saved-presets/{id}).
// Pro only.
func (c *Client) DeleteSavedPreset(ctx context.Context, presetID string) (json.RawMessage, error) {
	if err := c.requireTier(ctx, TargetPro, "DeleteSavedPreset"); err != nil {
		return nil, err
	}
	var out json.RawMessage
	if err := c.callJSON(ctx, "DELETE", "/v1/saved-presets/"+url.PathEscape(presetID), nil, &out); err != nil {
		return nil, err
	}
	return out, nil
}

// GetJobResult fetches a job's stored result document
// (GET /v1/jobs/{id}/result). Pro only.
func (c *Client) GetJobResult(ctx context.Context, jobID string) (*GetJobResponse, error) {
	if err := c.requireTier(ctx, TargetPro, "GetJobResult"); err != nil {
		return nil, err
	}
	var out GetJobResponse
	if err := c.getJSON(ctx, "/v1/jobs/"+url.PathEscape(jobID)+"/result", &out); err != nil {
		return nil, err
	}
	return &out, nil
}

// GetRagConfig fetches a project's RAG config
// (GET /v1/projects/{projectID}/rag-config). Pro only.
func (c *Client) GetRagConfig(ctx context.Context, projectID string) (*RagConfigResponse, error) {
	if err := c.requireTier(ctx, TargetPro, "GetRagConfig"); err != nil {
		return nil, err
	}
	var out RagConfigResponse
	if err := c.getJSON(ctx, "/v1/projects/"+url.PathEscape(projectID)+"/rag-config", &out); err != nil {
		return nil, err
	}
	return &out, nil
}

// SetRagConfig updates a project's RAG config
// (PUT /v1/projects/{projectID}/rag-config). Pro only.
func (c *Client) SetRagConfig(ctx context.Context, projectID string, body SetRagConfigRequest) (*RagConfigResponse, error) {
	if err := c.requireTier(ctx, TargetPro, "SetRagConfig"); err != nil {
		return nil, err
	}
	var out RagConfigResponse
	if err := c.callJSON(ctx, "PUT", "/v1/projects/"+url.PathEscape(projectID)+"/rag-config", body, &out); err != nil {
		return nil, err
	}
	return &out, nil
}
