// Command oapi-pro-config derives the oapi-codegen configuration for the Pro
// schema set from the two vendored OpenAPI specs.
//
// The Go SDK ships one package (`xberg`) built from two specs kept as separate
// schema sets (never merged; see xberg-enterprise ADR-0072). Anything the
// Enterprise spec already declares must therefore be excluded from the Pro
// generation, or the two files declare the same Go identifier twice and the
// package stops compiling.
//
// That exclusion set used to be hand-maintained and went stale on every spec
// sync. This command computes it instead: it reads both specs, intersects
// their `components.schemas` keys and their operation IDs, and writes a derived
// config that merges those two lists into a checked-in base config. A spec sync
// that adds, removes, or reclassifies a schema is picked up automatically the
// next time `task go:generate` runs.
package main

import (
	"errors"
	"flag"
	"fmt"
	"os"
	"sort"
	"strings"

	"gopkg.in/yaml.v3"
)

// httpMethods are the path-item keys that hold an operation. Every other key
// (`parameters`, `summary`, `servers`, `$ref`, …) is metadata, not an operation.
var httpMethods = map[string]struct{}{
	"get":     {},
	"put":     {},
	"post":    {},
	"delete":  {},
	"options": {},
	"head":    {},
	"patch":   {},
	"trace":   {},
}

// documentationKeys hold prose only. Two schemas that differ solely in these
// keys generate identical Go types, so they are stripped before comparing a
// shared schema's Enterprise and Pro definitions.
var documentationKeys = map[string]struct{}{
	"description": {},
	"example":     {},
	"examples":    {},
	"summary":     {},
	"title":       {},
}

// specDocument is the narrow view of an OpenAPI document this command needs.
type specDocument struct {
	Components struct {
		Schemas map[string]any `yaml:"schemas"`
	} `yaml:"components"`
	Paths map[string]map[string]any `yaml:"paths"`
}

func main() {
	apiSpecPath := flag.String("api", "", "path to the Enterprise OpenAPI spec")
	proSpecPath := flag.String("pro", "", "path to the Pro OpenAPI spec")
	basePath := flag.String("base", "", "path to the checked-in base oapi-codegen config for the Pro schema set")
	outputPath := flag.String("out", "", "path of the derived oapi-codegen config to write")
	flag.Parse()

	if err := run(*apiSpecPath, *proSpecPath, *basePath, *outputPath); err != nil {
		fmt.Fprintf(os.Stderr, "oapi-pro-config: %v\n", err)
		os.Exit(1)
	}
}

func run(apiSpecPath, proSpecPath, basePath, outputPath string) error {
	for name, value := range map[string]string{
		"-api": apiSpecPath, "-pro": proSpecPath, "-base": basePath, "-out": outputPath,
	} {
		if value == "" {
			return fmt.Errorf("%s is required", name)
		}
	}

	apiSpec, err := loadSpec(apiSpecPath)
	if err != nil {
		return err
	}
	proSpec, err := loadSpec(proSpecPath)
	if err != nil {
		return err
	}

	sharedSchemas := intersection(keys(apiSpec.Components.Schemas), keys(proSpec.Components.Schemas))
	proOnlyOperations := difference(operationIDs(proSpec), operationIDs(apiSpec))

	config, err := loadBaseConfig(basePath)
	if err != nil {
		return err
	}
	outputOptions, err := outputOptionsOf(config)
	if err != nil {
		return fmt.Errorf("reading %s: %w", basePath, err)
	}
	for _, key := range []string{"exclude-schemas", "include-operation-ids", "exclude-operation-ids"} {
		if _, present := outputOptions[key]; present {
			return fmt.Errorf("%s must not set output-options.%s — it is derived from the specs", basePath, key)
		}
	}
	outputOptions["exclude-schemas"] = sharedSchemas
	outputOptions["include-operation-ids"] = proOnlyOperations

	divergent := divergentSharedSchemas(apiSpec, proSpec, sharedSchemas)
	for _, name := range divergent {
		fmt.Fprintf(os.Stderr,
			"oapi-pro-config: warning: schema %q is declared in both specs with different structure; "+
				"the Pro schema set will reuse the Enterprise definition\n", name)
	}

	body, err := yaml.Marshal(config)
	if err != nil {
		return fmt.Errorf("marshalling derived config: %w", err)
	}
	document := header(basePath, sharedSchemas, proOnlyOperations, divergent) + string(body)
	if err := os.WriteFile(outputPath, []byte(document), 0o644); err != nil { //nolint:gosec // generated build input, not a secret
		return fmt.Errorf("writing %s: %w", outputPath, err)
	}

	fmt.Fprintf(os.Stderr, "oapi-pro-config: wrote %s (%d shared schemas excluded, %d Pro-only operations included)\n",
		outputPath, len(sharedSchemas), len(proOnlyOperations))
	return nil
}

func loadSpec(path string) (*specDocument, error) {
	raw, err := os.ReadFile(path) //nolint:gosec // path comes from the Taskfile, not user input
	if err != nil {
		return nil, fmt.Errorf("reading spec %s: %w", path, err)
	}
	var spec specDocument
	if err := yaml.Unmarshal(raw, &spec); err != nil {
		return nil, fmt.Errorf("parsing spec %s: %w", path, err)
	}
	if len(spec.Components.Schemas) == 0 {
		return nil, fmt.Errorf("spec %s declares no components.schemas", path)
	}
	if len(spec.Paths) == 0 {
		return nil, fmt.Errorf("spec %s declares no paths", path)
	}
	return &spec, nil
}

func loadBaseConfig(path string) (map[string]any, error) {
	raw, err := os.ReadFile(path) //nolint:gosec // path comes from the Taskfile, not user input
	if err != nil {
		return nil, fmt.Errorf("reading base config %s: %w", path, err)
	}
	var config map[string]any
	if err := yaml.Unmarshal(raw, &config); err != nil {
		return nil, fmt.Errorf("parsing base config %s: %w", path, err)
	}
	if config == nil {
		return nil, fmt.Errorf("base config %s is empty", path)
	}
	return config, nil
}

// outputOptionsOf returns the config's `output-options` map, creating it when absent.
func outputOptionsOf(config map[string]any) (map[string]any, error) {
	value, present := config["output-options"]
	if !present || value == nil {
		options := map[string]any{}
		config["output-options"] = options
		return options, nil
	}
	options, ok := value.(map[string]any)
	if !ok {
		return nil, errors.New("output-options is not a mapping")
	}
	return options, nil
}

// operationIDs collects every operationId declared by the spec's paths.
func operationIDs(spec *specDocument) map[string]struct{} {
	ids := map[string]struct{}{}
	for _, pathItem := range spec.Paths {
		for method, rawOperation := range pathItem {
			if _, isMethod := httpMethods[strings.ToLower(method)]; !isMethod {
				continue
			}
			operation, ok := rawOperation.(map[string]any)
			if !ok {
				continue
			}
			if id, ok := operation["operationId"].(string); ok && id != "" {
				ids[id] = struct{}{}
			}
		}
	}
	return ids
}

// divergentSharedSchemas reports shared schema names whose two definitions
// differ beyond documentation, meaning the Pro schema set silently reuses the
// Enterprise shape for a type the Pro API describes differently.
func divergentSharedSchemas(apiSpec, proSpec *specDocument, shared []string) []string {
	var divergent []string
	for _, name := range shared {
		apiSchema := stripDocumentation(apiSpec.Components.Schemas[name])
		proSchema := stripDocumentation(proSpec.Components.Schemas[name])
		apiRendered, apiErr := yaml.Marshal(apiSchema)
		proRendered, proErr := yaml.Marshal(proSchema)
		if apiErr != nil || proErr != nil || string(apiRendered) != string(proRendered) {
			divergent = append(divergent, name)
		}
	}
	return divergent
}

// stripDocumentation recursively removes prose-only keys so two schemas that
// differ solely in wording compare equal.
func stripDocumentation(value any) any {
	switch typed := value.(type) {
	case map[string]any:
		stripped := make(map[string]any, len(typed))
		for key, nested := range typed {
			if _, isDoc := documentationKeys[key]; isDoc {
				continue
			}
			stripped[key] = stripDocumentation(nested)
		}
		return stripped
	case []any:
		stripped := make([]any, len(typed))
		for index, nested := range typed {
			stripped[index] = stripDocumentation(nested)
		}
		return stripped
	default:
		return value
	}
}

func header(basePath string, shared, proOnly, divergent []string) string {
	var builder strings.Builder
	builder.WriteString("# Code generated by tools/oapi-pro-config; DO NOT EDIT.\n")
	builder.WriteString("#\n")
	fmt.Fprintf(&builder, "# %s plus two lists derived from the Enterprise and Pro OpenAPI specs.\n", basePath)
	fmt.Fprintf(&builder, "# exclude-schemas is the %d schema names both specs declare (already emitted\n", len(shared))
	fmt.Fprintf(&builder, "# into generated_api.go); include-operation-ids is the %d operations the Pro\n", len(proOnly))
	builder.WriteString("# spec declares and the Enterprise spec does not. Edit the base config or the\n")
	builder.WriteString("# specs — never this file.\n")
	if len(divergent) > 0 {
		builder.WriteString("#\n")
		builder.WriteString("# WARNING: these shared schemas differ structurally between the two specs;\n")
		builder.WriteString("# the Pro schema set reuses the Enterprise definition for each of them:\n")
		for _, name := range divergent {
			fmt.Fprintf(&builder, "#   %s\n", name)
		}
	}
	return builder.String()
}

func keys(m map[string]any) map[string]struct{} {
	set := make(map[string]struct{}, len(m))
	for key := range m {
		set[key] = struct{}{}
	}
	return set
}

func intersection(left, right map[string]struct{}) []string {
	var both []string
	for key := range left {
		if _, present := right[key]; present {
			both = append(both, key)
		}
	}
	sort.Strings(both)
	return both
}

func difference(left, right map[string]struct{}) []string {
	var only []string
	for key := range left {
		if _, present := right[key]; !present {
			only = append(only, key)
		}
	}
	sort.Strings(only)
	return only
}
