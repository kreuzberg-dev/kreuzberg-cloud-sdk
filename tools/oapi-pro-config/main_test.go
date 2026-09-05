package main

import (
	"os"
	"path/filepath"
	"strings"
	"testing"

	"gopkg.in/yaml.v3"
)

const apiSpecFixture = `
openapi: 3.1.0
paths:
  /v1/jobs:
    get:
      operationId: list_jobs
    parameters:
      - name: limit
        in: query
  /v1/health:
    get:
      operationId: health
components:
  schemas:
    JobStatus:
      type: string
    JobResult:
      type: object
      description: Enterprise wording.
      properties:
        id:
          type: string
    EnterpriseOnly:
      type: object
`

const proSpecFixture = `
openapi: 3.1.0
paths:
  /v1/jobs:
    get:
      operationId: list_jobs
  /auth/login:
    post:
      operationId: login
  /v1/saved-presets:
    get:
      operationId: list_saved_presets
components:
  schemas:
    JobStatus:
      type: string
    JobResult:
      type: object
      description: Pro wording, same shape.
      properties:
        id:
          type: string
    LoginRequest:
      type: object
    HealthResponse:
      type: object
`

const baseConfigFixture = `package: xberg
output: generated_pro.go
generate:
  models: true
output-options:
  skip-prune: true
`

type derivedConfig struct {
	Package       string `yaml:"package"`
	OutputOptions struct {
		SkipPrune           bool     `yaml:"skip-prune"`
		ExcludeSchemas      []string `yaml:"exclude-schemas"`
		IncludeOperationIDs []string `yaml:"include-operation-ids"`
	} `yaml:"output-options"`
}

// writeFixtures materialises the three inputs run() needs and returns the
// directory holding them.
func writeFixtures(t *testing.T, base string) (directory, apiPath, proPath, basePath, outPath string) {
	t.Helper()
	directory = t.TempDir()
	apiPath = filepath.Join(directory, "api.yaml")
	proPath = filepath.Join(directory, "pro.yaml")
	basePath = filepath.Join(directory, "base.yaml")
	outPath = filepath.Join(directory, "derived.yaml")
	for path, content := range map[string]string{
		apiPath:  apiSpecFixture,
		proPath:  proSpecFixture,
		basePath: base,
	} {
		if err := os.WriteFile(path, []byte(content), 0o600); err != nil {
			t.Fatalf("writing fixture %s: %v", path, err)
		}
	}
	return directory, apiPath, proPath, basePath, outPath
}

func readDerived(t *testing.T, path string) derivedConfig {
	t.Helper()
	raw, err := os.ReadFile(path) //nolint:gosec // test fixture path
	if err != nil {
		t.Fatalf("reading derived config: %v", err)
	}
	var config derivedConfig
	if err := yaml.Unmarshal(raw, &config); err != nil {
		t.Fatalf("parsing derived config: %v", err)
	}
	return config
}

func TestRunExcludesExactlyTheSharedSchemas(t *testing.T) {
	_, apiPath, proPath, basePath, outPath := writeFixtures(t, baseConfigFixture)

	if err := run(apiPath, proPath, basePath, outPath); err != nil {
		t.Fatalf("run: %v", err)
	}

	config := readDerived(t, outPath)
	want := []string{"JobResult", "JobStatus"}
	if got := config.OutputOptions.ExcludeSchemas; !equal(got, want) {
		t.Errorf("exclude-schemas = %v, want %v", got, want)
	}
}

func TestRunKeepsProOnlySchemas(t *testing.T) {
	_, apiPath, proPath, basePath, outPath := writeFixtures(t, baseConfigFixture)

	if err := run(apiPath, proPath, basePath, outPath); err != nil {
		t.Fatalf("run: %v", err)
	}

	// HealthResponse and LoginRequest exist only in the Pro spec, so excluding
	// them would silently drop them from the generated Pro schema set.
	for _, name := range []string{"HealthResponse", "LoginRequest"} {
		for _, excluded := range readDerived(t, outPath).OutputOptions.ExcludeSchemas {
			if excluded == name {
				t.Errorf("Pro-only schema %q was excluded", name)
			}
		}
	}
}

func TestRunIncludesExactlyTheProOnlyOperations(t *testing.T) {
	_, apiPath, proPath, basePath, outPath := writeFixtures(t, baseConfigFixture)

	if err := run(apiPath, proPath, basePath, outPath); err != nil {
		t.Fatalf("run: %v", err)
	}

	config := readDerived(t, outPath)
	want := []string{"list_saved_presets", "login"}
	if got := config.OutputOptions.IncludeOperationIDs; !equal(got, want) {
		t.Errorf("include-operation-ids = %v, want %v", got, want)
	}
}

func TestRunPreservesBaseConfigOptions(t *testing.T) {
	_, apiPath, proPath, basePath, outPath := writeFixtures(t, baseConfigFixture)

	if err := run(apiPath, proPath, basePath, outPath); err != nil {
		t.Fatalf("run: %v", err)
	}

	config := readDerived(t, outPath)
	if config.Package != "xberg" {
		t.Errorf("package = %q, want %q", config.Package, "xberg")
	}
	if !config.OutputOptions.SkipPrune {
		t.Error("skip-prune = false, want true")
	}
}

func TestRunRejectsHandWrittenExclusionLists(t *testing.T) {
	base := baseConfigFixture + "  exclude-schemas:\n    - JobStatus\n"
	_, apiPath, proPath, basePath, outPath := writeFixtures(t, base)

	err := run(apiPath, proPath, basePath, outPath)
	if err == nil {
		t.Fatal("run accepted a base config that pins exclude-schemas")
	}
	if !strings.Contains(err.Error(), "exclude-schemas") {
		t.Errorf("error = %q, want it to name exclude-schemas", err)
	}
}

func TestRunFailsOnSpecWithoutSchemas(t *testing.T) {
	directory, _, proPath, basePath, outPath := writeFixtures(t, baseConfigFixture)
	emptyPath := filepath.Join(directory, "empty.yaml")
	if err := os.WriteFile(emptyPath, []byte("openapi: 3.1.0\n"), 0o600); err != nil {
		t.Fatalf("writing fixture: %v", err)
	}

	if err := run(emptyPath, proPath, basePath, outPath); err == nil {
		t.Fatal("run accepted a spec with no components.schemas")
	}
}

func TestDivergentSharedSchemasIgnoresDocumentationOnlyDifferences(t *testing.T) {
	_, apiPath, proPath, _, _ := writeFixtures(t, baseConfigFixture)
	apiSpec, err := loadSpec(apiPath)
	if err != nil {
		t.Fatalf("loadSpec: %v", err)
	}
	proSpec, err := loadSpec(proPath)
	if err != nil {
		t.Fatalf("loadSpec: %v", err)
	}

	// JobResult differs only in `description`, which generates identical Go.
	if got := divergentSharedSchemas(apiSpec, proSpec, []string{"JobResult", "JobStatus"}); len(got) != 0 {
		t.Errorf("divergentSharedSchemas = %v, want none", got)
	}
}

func TestDivergentSharedSchemasReportsStructuralDifferences(t *testing.T) {
	directory, apiPath, _, _, _ := writeFixtures(t, baseConfigFixture)
	divergedPath := filepath.Join(directory, "diverged.yaml")
	diverged := strings.Replace(proSpecFixture, "    JobStatus:\n      type: string\n",
		"    JobStatus:\n      type: integer\n", 1)
	if err := os.WriteFile(divergedPath, []byte(diverged), 0o600); err != nil {
		t.Fatalf("writing fixture: %v", err)
	}
	apiSpec, err := loadSpec(apiPath)
	if err != nil {
		t.Fatalf("loadSpec: %v", err)
	}
	proSpec, err := loadSpec(divergedPath)
	if err != nil {
		t.Fatalf("loadSpec: %v", err)
	}

	got := divergentSharedSchemas(apiSpec, proSpec, []string{"JobResult", "JobStatus"})
	if !equal(got, []string{"JobStatus"}) {
		t.Errorf("divergentSharedSchemas = %v, want [JobStatus]", got)
	}
}

func TestOperationIDsSkipsNonOperationPathItemKeys(t *testing.T) {
	_, apiPath, _, _, _ := writeFixtures(t, baseConfigFixture)
	apiSpec, err := loadSpec(apiPath)
	if err != nil {
		t.Fatalf("loadSpec: %v", err)
	}

	// `/v1/jobs` carries a sibling `parameters` list that is not an operation.
	ids := operationIDs(apiSpec)
	if len(ids) != 2 {
		t.Fatalf("operationIDs = %v, want 2 entries", ids)
	}
	for _, want := range []string{"list_jobs", "health"} {
		if _, present := ids[want]; !present {
			t.Errorf("operationIDs missing %q", want)
		}
	}
}

func equal(got, want []string) bool {
	if len(got) != len(want) {
		return false
	}
	for index := range got {
		if got[index] != want[index] {
			return false
		}
	}
	return true
}
