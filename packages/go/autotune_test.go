package xberg_test

import (
	"context"
	"mime"
	"net/http"
	"strings"
	"testing"

	xberg "github.com/xberg-io/sdks/packages/go"
)

const (
	autoTuneJobID     = "at-1"
	tuningProfileID   = "tp-1"
	autoTuneStatusRun = `{"auto_tune_job_id":"at-1","status":"running","trials_completed":2,"trials_total":8}`
	tuningProfileBody = `{"id":"tp-1","name":"invoice-tuned","created_at":"2025-01-01T00:00:00Z",
		"profile":{"ocr":"tesseract"},"scores":{"f1":0.92}}`
)

// autoTuneTargets are the tiers auto-tune must be reachable from: both specs
// declare the routes, so none of these methods may be tier-gated.
var autoTuneTargets = []xberg.Target{xberg.TargetEnterprise, xberg.TargetPro}

func TestListAutoTuneJobs_ReachesEndpointOnBothTargets(t *testing.T) {
	t.Parallel()
	for _, target := range autoTuneTargets {
		t.Run(string(target), func(t *testing.T) {
			t.Parallel()
			var seen recordedRequest
			client := targetClient(t, target, http.StatusOK, `{"jobs":[{"auto_tune_job_id":"at-1",
				"status":"completed","trials_completed":8,"trials_total":8,
				"created_at":"2025-01-01T00:00:00Z"}],"total":1}`, &seen)

			page, err := client.ListAutoTuneJobs(context.Background(), 10, 20)
			if err != nil {
				t.Fatalf("ListAutoTuneJobs: %v", err)
			}
			if seen.method != http.MethodGet || seen.path != "/v1/auto-tune" {
				t.Errorf("request = %s %s, want GET /v1/auto-tune", seen.method, seen.path)
			}
			if seen.query != "limit=10&offset=20" {
				t.Errorf("query = %q, want limit=10&offset=20", seen.query)
			}
			if page.Total != 1 || len(page.Jobs) != 1 || page.Jobs[0].AutoTuneJobId != autoTuneJobID {
				t.Fatalf("page = %+v, want one job %s", page, autoTuneJobID)
			}
		})
	}
}

func TestSubmitAutoTune_PostsMultipartRequestAndFiles(t *testing.T) {
	t.Parallel()
	var seen recordedRequest
	client := targetClient(t, xberg.TargetEnterprise, http.StatusCreated,
		`{"auto_tune_job_id":"at-1","status":"queued"}`, &seen)

	created, err := client.SubmitAutoTune(context.Background(),
		xberg.CreateAutoTuneJobRequest{
			Documents: []xberg.AutoTuneDocumentInput{{
				Filename:        "a.pdf",
				GroundTruth:     "expected text",
				GroundTruthKind: xberg.Markdown,
			}},
		},
		[]xberg.FileSource{{Name: "a.pdf", Reader: strings.NewReader("%PDF-1.7")}},
	)
	if err != nil {
		t.Fatalf("SubmitAutoTune: %v", err)
	}
	if seen.method != http.MethodPost || seen.path != "/v1/auto-tune" {
		t.Errorf("request = %s %s, want POST /v1/auto-tune", seen.method, seen.path)
	}
	mediaType, _, err := mime.ParseMediaType(seen.contentType)
	if err != nil || mediaType != "multipart/form-data" {
		t.Fatalf("Content-Type = %q, want multipart/form-data", seen.contentType)
	}
	if !strings.Contains(seen.body, `name="request"`) {
		t.Errorf("body has no request part:\n%s", seen.body)
	}
	if !strings.Contains(seen.body, `name="file"; filename="a.pdf"`) {
		t.Errorf("body has no file part:\n%s", seen.body)
	}
	if !strings.Contains(seen.body, `"ground_truth":"expected text"`) {
		t.Errorf("request part does not carry the ground truth:\n%s", seen.body)
	}
	if created.AutoTuneJobId != autoTuneJobID || created.Status != "queued" {
		t.Errorf("created = %+v, want at-1/queued", created)
	}
}

func TestSubmitAutoTune_RejectsEmptyFileSet(t *testing.T) {
	t.Parallel()
	client := mustClient(t, xberg.WithBaseURL("https://example.test"))
	_, err := client.SubmitAutoTune(context.Background(), xberg.CreateAutoTuneJobRequest{}, nil)
	if err == nil || !strings.Contains(err.Error(), "at least one file") {
		t.Fatalf("error = %v, want it to require at least one file", err)
	}
}

func TestGetAutoTuneCapabilities_ReturnsTypedCapabilities(t *testing.T) {
	t.Parallel()
	var seen recordedRequest
	client := targetClient(t, xberg.TargetPro, http.StatusOK, `{"default_ocr_ladder":["tesseract"],
		"ocr_backends":[],"tunable_knobs":[]}`, &seen)

	capabilities, err := client.GetAutoTuneCapabilities(context.Background())
	if err != nil {
		t.Fatalf("GetAutoTuneCapabilities: %v", err)
	}
	if seen.method != http.MethodGet || seen.path != "/v1/auto-tune/capabilities" {
		t.Errorf("request = %s %s, want GET /v1/auto-tune/capabilities", seen.method, seen.path)
	}
	if len(capabilities.DefaultOcrLadder) != 1 || capabilities.DefaultOcrLadder[0] != "tesseract" {
		t.Errorf("DefaultOcrLadder = %v, want [tesseract]", capabilities.DefaultOcrLadder)
	}
}

func TestGetAutoTuneStatus_ReturnsTypedStatus(t *testing.T) {
	t.Parallel()
	var seen recordedRequest
	client := targetClient(t, xberg.TargetEnterprise, http.StatusOK, autoTuneStatusRun, &seen)

	status, err := client.GetAutoTuneStatus(context.Background(), autoTuneJobID)
	if err != nil {
		t.Fatalf("GetAutoTuneStatus: %v", err)
	}
	if seen.method != http.MethodGet || seen.path != "/v1/auto-tune/at-1" {
		t.Errorf("request = %s %s, want GET /v1/auto-tune/at-1", seen.method, seen.path)
	}
	if status.TrialsCompleted != 2 || status.TrialsTotal != 8 {
		t.Errorf("status = %+v, want 2/8 trials", status)
	}
}

func TestDeleteAutoTuneJob_HandlesNoContent(t *testing.T) {
	t.Parallel()
	var seen recordedRequest
	client := targetClient(t, xberg.TargetPro, http.StatusNoContent, "", &seen)

	if err := client.DeleteAutoTuneJob(context.Background(), autoTuneJobID); err != nil {
		t.Fatalf("DeleteAutoTuneJob: %v", err)
	}
	if seen.method != http.MethodDelete || seen.path != "/v1/auto-tune/at-1" {
		t.Errorf("request = %s %s, want DELETE /v1/auto-tune/at-1", seen.method, seen.path)
	}
}

func TestPromoteAutoTuneProfile_PostsNameAndReturnsProfile(t *testing.T) {
	t.Parallel()
	var seen recordedRequest
	client := targetClient(t, xberg.TargetEnterprise, http.StatusCreated, tuningProfileBody, &seen)

	profile, err := client.PromoteAutoTuneProfile(context.Background(), autoTuneJobID,
		xberg.PromoteProfileRequest{Name: "invoice-tuned"})
	if err != nil {
		t.Fatalf("PromoteAutoTuneProfile: %v", err)
	}
	if seen.method != http.MethodPost || seen.path != "/v1/auto-tune/at-1/promote" {
		t.Errorf("request = %s %s, want POST /v1/auto-tune/at-1/promote", seen.method, seen.path)
	}
	if seen.body != `{"name":"invoice-tuned"}` {
		t.Errorf("body = %s, want the name payload", seen.body)
	}
	if profile.Id != tuningProfileID {
		t.Errorf("Id = %q, want %s", profile.Id, tuningProfileID)
	}
}

func TestGetAutoTuneResult_ReturnsLeaderboard(t *testing.T) {
	t.Parallel()
	var seen recordedRequest
	client := targetClient(t, xberg.TargetPro, http.StatusOK, `{"auto_tune_job_id":"at-1",
		"leaderboard":[{"primary_score":0.91,"variance":0.01,"tied_with_winner":false,
			"config":{},"breakdown":{}}],
		"profile":{"ocr":"tesseract"}}`, &seen)

	result, err := client.GetAutoTuneResult(context.Background(), autoTuneJobID)
	if err != nil {
		t.Fatalf("GetAutoTuneResult: %v", err)
	}
	if seen.method != http.MethodGet || seen.path != "/v1/auto-tune/at-1/result" {
		t.Errorf("request = %s %s, want GET /v1/auto-tune/at-1/result", seen.method, seen.path)
	}
	if result.AutoTuneJobId != autoTuneJobID || len(result.Leaderboard) != 1 {
		t.Fatalf("result = %+v, want one leaderboard entry for at-1", result)
	}
}

func TestListTuningProfiles_ReachesEndpointOnBothTargets(t *testing.T) {
	t.Parallel()
	for _, target := range autoTuneTargets {
		t.Run(string(target), func(t *testing.T) {
			t.Parallel()
			var seen recordedRequest
			client := targetClient(t, target, http.StatusOK, `{"profiles":[{"id":"tp-1",
				"name":"invoice-tuned","created_at":"2025-01-01T00:00:00Z"}],"total":1}`, &seen)

			page, err := client.ListTuningProfiles(context.Background(), 5, 0)
			if err != nil {
				t.Fatalf("ListTuningProfiles: %v", err)
			}
			if seen.method != http.MethodGet || seen.path != "/v1/tuning-profiles" {
				t.Errorf("request = %s %s, want GET /v1/tuning-profiles", seen.method, seen.path)
			}
			if seen.query != "limit=5" {
				t.Errorf("query = %q, want limit=5 (offset 0 omitted)", seen.query)
			}
			if page.Total != 1 || len(page.Profiles) != 1 || page.Profiles[0].Id != tuningProfileID {
				t.Fatalf("page = %+v, want one profile %s", page, tuningProfileID)
			}
		})
	}
}

func TestGetTuningProfile_ReturnsTypedProfile(t *testing.T) {
	t.Parallel()
	var seen recordedRequest
	client := targetClient(t, xberg.TargetEnterprise, http.StatusOK, tuningProfileBody, &seen)

	profile, err := client.GetTuningProfile(context.Background(), tuningProfileID)
	if err != nil {
		t.Fatalf("GetTuningProfile: %v", err)
	}
	if seen.method != http.MethodGet || seen.path != "/v1/tuning-profiles/tp-1" {
		t.Errorf("request = %s %s, want GET /v1/tuning-profiles/tp-1", seen.method, seen.path)
	}
	if profile.Name != "invoice-tuned" {
		t.Errorf("Name = %q, want invoice-tuned", profile.Name)
	}
}

func TestDeleteTuningProfile_HandlesNoContent(t *testing.T) {
	t.Parallel()
	var seen recordedRequest
	client := targetClient(t, xberg.TargetPro, http.StatusNoContent, "", &seen)

	if err := client.DeleteTuningProfile(context.Background(), tuningProfileID); err != nil {
		t.Fatalf("DeleteTuningProfile: %v", err)
	}
	if seen.method != http.MethodDelete || seen.path != "/v1/tuning-profiles/tp-1" {
		t.Errorf("request = %s %s, want DELETE /v1/tuning-profiles/tp-1", seen.method, seen.path)
	}
}
