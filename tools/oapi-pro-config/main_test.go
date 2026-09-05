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

// divergedProSpec is the Pro fixture with JobStatus given a different type, so
// the two specs declare one name with two shapes.
func divergedProSpec(t *testing.T, directory string) string {
	t.Helper()
	path := filepath.Join(directory, "pro-diverged.yaml")
	diverged := strings.Replace(proSpecFixture, "    JobStatus:\n      type: string\n",
		"    JobStatus:\n      type: integer\n", 1)
	if err := os.WriteFile(path, []byte(diverged), 0o600); err != nil {
		t.Fatalf("writing fixture: %v", err)
	}
	return path
}

func TestRunKeepsDivergentSharedSchemasOutOfTheExclusionList(t *testing.T) {
	directory, apiPath, _, basePath, outPath := writeFixtures(t, baseConfigFixture)
	proPath := divergedProSpec(t, directory)

	if err := run(apiPath, proPath, basePath, outPath); err != nil {
		t.Fatalf("run: %v", err)
	}

	// Excluding JobStatus would give Pro the Enterprise `string` type for a
	// field the Pro API declares as an integer.
	config := readDerived(t, outPath)
	if got := config.OutputOptions.ExcludeSchemas; !equal(got, []string{"JobResult"}) {
		t.Errorf("exclude-schemas = %v, want [JobResult]", got)
	}
}

func TestRunRejectsARenameThatWouldCollide(t *testing.T) {
	directory, apiPath, _, basePath, outPath := writeFixtures(t, baseConfigFixture)
	diverged := strings.Replace(proSpecFixture, "    JobStatus:\n      type: string\n",
		"    JobStatus:\n      type: integer\n    ProJobStatus:\n      type: object\n", 1)
	proPath := filepath.Join(directory, "pro-collision.yaml")
	if err := os.WriteFile(proPath, []byte(diverged), 0o600); err != nil {
		t.Fatalf("writing fixture: %v", err)
	}

	err := run(apiPath, proPath, basePath, outPath)
	if err == nil {
		t.Fatal("run accepted a rename onto an already-declared schema name")
	}
	if !strings.Contains(err.Error(), "ProJobStatus") {
		t.Errorf("error = %q, want it to name the colliding type", err)
	}
}

func mustRead(t *testing.T, path string) []byte {
	t.Helper()
	raw, err := os.ReadFile(path) //nolint:gosec // test fixture path
	if err != nil {
		t.Fatalf("reading %s: %v", path, err)
	}
	return raw
}

func TestDivergentClosureFollowsRefsIntoDivergentSchemas(t *testing.T) {
	// Wrapper is structurally identical in both specs, but it references
	// JobStatus, which is not. Sharing it would give Pro a Wrapper whose field
	// is the Enterprise JobStatus.
	directory := t.TempDir()
	const wrapper = "    Wrapper:\n      type: object\n      properties:\n        status:\n          $ref: '#/components/schemas/JobStatus'\n"

	apiPath := filepath.Join(directory, "api.yaml")
	if err := os.WriteFile(apiPath, []byte(apiSpecFixture+wrapper), 0o600); err != nil {
		t.Fatalf("writing fixture: %v", err)
	}
	diverged := strings.Replace(proSpecFixture, "    JobStatus:\n      type: string\n",
		"    JobStatus:\n      type: integer\n", 1)
	proPath := filepath.Join(directory, "pro.yaml")
	if err := os.WriteFile(proPath, []byte(diverged+wrapper), 0o600); err != nil {
		t.Fatalf("writing fixture: %v", err)
	}

	apiSpec, err := loadSpec(apiPath)
	if err != nil {
		t.Fatalf("loadSpec: %v", err)
	}
	proSpec, err := loadSpec(proPath)
	if err != nil {
		t.Fatalf("loadSpec: %v", err)
	}

	shared := []string{"JobResult", "JobStatus", "Wrapper"}
	if got := divergentClosure(apiSpec, proSpec, shared); !equal(got, []string{"JobStatus", "Wrapper"}) {
		t.Errorf("divergentClosure = %v, want [JobStatus Wrapper]", got)
	}
	// JobResult reaches nothing divergent, so it stays shared.
	if got := divergentSharedSchemas(apiSpec, proSpec, shared); !equal(got, []string{"JobStatus"}) {
		t.Errorf("divergentSharedSchemas = %v, want [JobStatus]", got)
	}
}

func TestSchemaRefsFindsNestedReferences(t *testing.T) {
	var schema any
	if err := yaml.Unmarshal([]byte(
		"type: object\nproperties:\n  one:\n    $ref: '#/components/schemas/Alpha'\n"+
			"  many:\n    type: array\n    items:\n      $ref: '#/components/schemas/Beta'\n"), &schema); err != nil {
		t.Fatalf("parsing fixture: %v", err)
	}

	refs := schemaRefs(schema)
	for _, want := range []string{"Alpha", "Beta"} {
		if _, present := refs[want]; !present {
			t.Errorf("schemaRefs missing %q (got %v)", want, refs)
		}
	}
	if len(refs) != 2 {
		t.Errorf("schemaRefs = %v, want exactly 2 entries", refs)
	}
}

type derivedSpecDocument struct {
	Components struct {
		Schemas map[string]any `yaml:"schemas"`
	} `yaml:"components"`
}

func readDerivedSpec(t *testing.T, outPath string) derivedSpecDocument {
	t.Helper()
	var document derivedSpecDocument
	if err := yaml.Unmarshal(mustRead(t, derivedSpecPathFor(outPath)), &document); err != nil {
		t.Fatalf("parsing derived spec: %v", err)
	}
	return document
}

func TestRunRenamesDivergentSchemasInTheDerivedSpec(t *testing.T) {
	directory, apiPath, _, basePath, outPath := writeFixtures(t, baseConfigFixture)
	proPath := divergedProSpec(t, directory)

	if err := run(apiPath, proPath, basePath, outPath); err != nil {
		t.Fatalf("run: %v", err)
	}

	schemas := readDerivedSpec(t, outPath).Components.Schemas
	if _, present := schemas["ProJobStatus"]; !present {
		t.Error("derived spec has no ProJobStatus")
	}
	if _, present := schemas["JobStatus"]; present {
		// Leaving the old key would redeclare the Enterprise type.
		t.Error("derived spec still declares JobStatus")
	}
	if _, present := schemas["JobResult"]; !present {
		t.Error("derived spec dropped the untouched JobResult")
	}
}

func TestRunRewritesReferencesToRenamedSchemas(t *testing.T) {
	directory := t.TempDir()
	const wrapper = "    Wrapper:\n      type: object\n      properties:\n        status:\n          $ref: '#/components/schemas/JobStatus'\n"
	apiPath := filepath.Join(directory, "api.yaml")
	if err := os.WriteFile(apiPath, []byte(apiSpecFixture+wrapper), 0o600); err != nil {
		t.Fatalf("writing fixture: %v", err)
	}
	diverged := strings.Replace(proSpecFixture, "    JobStatus:\n      type: string\n",
		"    JobStatus:\n      type: integer\n", 1)
	proPath := filepath.Join(directory, "pro.yaml")
	if err := os.WriteFile(proPath, []byte(diverged+wrapper), 0o600); err != nil {
		t.Fatalf("writing fixture: %v", err)
	}
	basePath := filepath.Join(directory, "base.yaml")
	if err := os.WriteFile(basePath, []byte(baseConfigFixture), 0o600); err != nil {
		t.Fatalf("writing fixture: %v", err)
	}
	outPath := filepath.Join(directory, "derived.yaml")

	if err := run(apiPath, proPath, basePath, outPath); err != nil {
		t.Fatalf("run: %v", err)
	}

	// Wrapper is dragged along by the closure, and its $ref must follow the
	// rename or it would resolve to the Enterprise JobStatus.
	body := string(mustRead(t, derivedSpecPathFor(outPath)))
	if !strings.Contains(body, "#/components/schemas/ProJobStatus") {
		t.Error("derived spec still references the pre-rename JobStatus")
	}
	if strings.Contains(body, "#/components/schemas/JobStatus") {
		t.Error("derived spec has a dangling reference to the renamed schema")
	}
}

func TestRunWritesTheDerivedSpecEvenWhenNothingDiverges(t *testing.T) {
	_, apiPath, proPath, basePath, outPath := writeFixtures(t, baseConfigFixture)

	if err := run(apiPath, proPath, basePath, outPath); err != nil {
		t.Fatalf("run: %v", err)
	}

	// task go:generate always points oapi-codegen at this path, so it has to
	// exist whether or not a rename happened.
	schemas := readDerivedSpec(t, outPath).Components.Schemas
	for _, name := range []string{"JobStatus", "JobResult", "LoginRequest", "HealthResponse"} {
		if _, present := schemas[name]; !present {
			t.Errorf("derived spec is missing %q", name)
		}
	}
}
