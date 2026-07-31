package xberg

import (
	"context"
	"fmt"
	"net/http"
	"sync"
	"time"
)

// DefaultEnterpriseBaseURL is the production endpoint of the Xberg Enterprise
// API. It is the default base URL for the enterprise target (and when no target
// is given); the Pro target ships no default and requires an explicit base URL.
const DefaultEnterpriseBaseURL = "https://api.xberg.io"

// DefaultBaseURL is retained as an alias of [DefaultEnterpriseBaseURL] for
// callers written against the single-target client.
const DefaultBaseURL = DefaultEnterpriseBaseURL

const userAgent = "xberg-io-sdk-go/" + Version

// Target selects which product a [Client] talks to. When unset the tier is
// discovered lazily from GET /healthz before the first tier-specific call.
type Target string

const (
	// TargetEnterprise selects Xberg Enterprise (defaults the base URL).
	TargetEnterprise Target = "enterprise"
	// TargetPro selects Xberg Pro (requires an explicit base URL).
	TargetPro Target = "pro"
)

// Option configures a Client constructed via New.
type Option func(*clientConfig)

// WithBaseURL overrides the base URL of the API. For the enterprise target it
// defaults to [DefaultEnterpriseBaseURL]; the Pro target requires it.
func WithBaseURL(u string) Option {
	return func(c *clientConfig) {
		c.baseURL = u
		c.baseURLSet = true
	}
}

// WithAPIKey sets the bearer token sent on every request.
func WithAPIKey(key string) Option {
	return func(c *clientConfig) { c.apiKey = key }
}

// WithTarget pins the product this client talks to, skipping the /healthz
// capability probe. Pass [TargetEnterprise] or [TargetPro].
func WithTarget(t Target) Option {
	return func(c *clientConfig) { c.target = t }
}

// WithHTTPClient sets a custom *http.Client. Useful for testing or for
// installing transport-level middleware (retries, tracing, etc.).
func WithHTTPClient(httpClient *http.Client) Option {
	return func(c *clientConfig) { c.httpClient = httpClient }
}

// WithUserAgent overrides the default User-Agent header.
func WithUserAgent(ua string) Option {
	return func(c *clientConfig) { c.userAgent = ua }
}

// WithTimeout sets a per-request timeout that wraps the caller's context for
// every HTTP call. Zero or negative values disable the wrapper (the caller's
// context governs the deadline).
func WithTimeout(d time.Duration) Option {
	return func(c *clientConfig) { c.timeout = d }
}

// WithRetries sets the maximum number of automatic retry attempts on
// retryable HTTP responses (429, 502, 503, 504). Default: 0 (no retries).
func WithRetries(n int) Option {
	return func(c *clientConfig) { c.retries = n }
}

type clientConfig struct {
	baseURL    string
	baseURLSet bool
	apiKey     string
	userAgent  string
	httpClient *http.Client
	timeout    time.Duration
	retries    int
	target     Target
}

// Client is the dual-target client for Xberg Enterprise and Xberg Pro. One
// Client speaks to either product: the shared surface (extraction, jobs, audit,
// RAG) is written once, and tier-specific methods are capability-gated against
// the connected instance's tier (an explicit [WithTarget], else probed from
// GET /healthz).
type Client struct {
	cfg clientConfig

	tierMu     sync.Mutex
	tierProbed bool
	probedTier string
}

// New constructs a Client. With no options it targets the Enterprise production
// API. Selecting [TargetPro] without a base URL is a configuration error, since
// the Pro spec ships no default server.
func New(opts ...Option) (*Client, error) {
	cfg := clientConfig{
		userAgent: userAgent,
		httpClient: &http.Client{
			Timeout: 30 * time.Second,
		},
	}
	for _, opt := range opts {
		opt(&cfg)
	}
	if err := resolveBaseURL(&cfg); err != nil {
		return nil, err
	}
	return &Client{cfg: cfg}, nil
}

// resolveBaseURL enforces the base-URL policy: an explicit empty base URL is
// rejected; an unset base URL defaults to Enterprise unless the Pro target is
// selected, which has no default.
func resolveBaseURL(cfg *clientConfig) error {
	if cfg.baseURLSet {
		if cfg.baseURL == "" {
			return fmt.Errorf("xberg: base URL must not be empty")
		}
		return nil
	}
	if cfg.target == TargetPro {
		return fmt.Errorf(
			"xberg: Xberg Pro has no default base URL (its spec ships no servers block); " +
				"pass WithBaseURL pointing at your Pro instance",
		)
	}
	cfg.baseURL = DefaultEnterpriseBaseURL
	return nil
}

// HTTPClient returns the underlying *http.Client. Useful for tests that need
// to inspect the configured transport.
func (c *Client) HTTPClient() *http.Client { return c.cfg.httpClient }

// BaseURL returns the configured base URL.
func (c *Client) BaseURL() string { return c.cfg.baseURL }

// Target returns the explicitly configured target, or the empty [Target] when
// the tier is discovered lazily from GET /healthz.
func (c *Client) Target() Target { return c.cfg.target }

// authorize attaches User-Agent + Authorization headers to a request.
//
// This is exported only via the per-operation wrappers; kept package-private so
// it cannot be misused by callers.
func (c *Client) authorize(_ context.Context, req *http.Request) error {
	if c.cfg.userAgent != "" {
		req.Header.Set("User-Agent", c.cfg.userAgent)
	}
	if c.cfg.apiKey != "" {
		req.Header.Set("Authorization", "Bearer "+c.cfg.apiKey)
	}
	return nil
}

// resolveTier returns the effective tier: an explicit [WithTarget] if set,
// otherwise the value probed once from GET /healthz and cached thereafter.
func (c *Client) resolveTier(ctx context.Context) (string, error) {
	if c.cfg.target != "" {
		return string(c.cfg.target), nil
	}
	c.tierMu.Lock()
	defer c.tierMu.Unlock()
	if c.tierProbed {
		return c.probedTier, nil
	}
	var health struct {
		Tier string `json:"tier"`
	}
	spec := requestSpec{method: methodGet, path: "/healthz"}
	if err := c.doJSON(ctx, spec, &health); err != nil {
		return "", err
	}
	c.tierProbed = true
	c.probedTier = health.Tier
	return c.probedTier, nil
}

// requireTier returns a [TierError] when the connected tier does not match the
// tier a method requires, without issuing the underlying (wrong-tier) request.
func (c *Client) requireTier(ctx context.Context, required Target, method string) error {
	tier, err := c.resolveTier(ctx)
	if err != nil {
		return err
	}
	if tier != string(required) {
		actual := tier
		if actual == "" {
			actual = "unknown"
		}
		return &TierError{Method: method, Required: string(required), Actual: actual}
	}
	return nil
}
