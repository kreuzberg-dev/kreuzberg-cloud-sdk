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
//
// A shared NAME does not always mean a shared SHAPE. `ReadinessChecks`, for
// one, requires `nats` on Enterprise and `storage` on Pro — the two products
// genuinely report different dependencies. Excluding such a name would hand Pro
// the Enterprise struct, so a Pro caller would read a `Nats` field the service
// never sends and have no field at all for the one it does. Only the schemas
// that are structurally identical are therefore excluded; a divergent one is
// renamed with a `Pro` prefix in a derived copy of the Pro spec, which is what
// oapi-codegen actually reads. The vendored spec is never touched, so it stays
// byte-identical to the upstream copy `task spec:check` compares against.
package main

import (
	"errors"
	"flag"
	"fmt"
	"os"
	"path/filepath"
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

	// Only a shared name whose two definitions generate the same Go type may be
	// excluded. A divergent one is renamed instead, so Pro keeps its own shape.
	divergent := divergentClosure(apiSpec, proSpec, sharedSchemas)
	outputOptions["exclude-schemas"] = withoutNames(sharedSchemas, divergent)
	outputOptions["include-operation-ids"] = proOnlyOperations

	renames, err := proTypeNames(divergent, apiSpec, proSpec)
	if err != nil {
		return err
	}
	if err := writeDerivedSpec(derivedSpecPathFor(outputPath), proSpecPath, renames); err != nil {
		return err
	}
	for _, name := range divergent {
		fmt.Fprintf(os.Stderr,
			"oapi-pro-config: schema %q differs structurally between the specs; "+
				"the Pro schema set emits it as %s\n", name, renames[name])
	}

	body, err := yaml.Marshal(config)
	if err != nil {
		return fmt.Errorf("marshalling derived config: %w", err)
	}
	document := header(basePath, sharedSchemas, proOnlyOperations, divergent) + string(body)
	if err := os.WriteFile(outputPath, []byte(document), 0o644); err != nil { //nolint:gosec // generated build input, not a secret
		return fmt.Errorf("writing %s: %w", outputPath, err)
	}

	fmt.Fprintf(os.Stderr,
		"oapi-pro-config: wrote %s (%d shared schemas excluded, %d renamed, %d Pro-only operations included)\n",
		outputPath, len(sharedSchemas)-len(divergent), len(divergent), len(proOnlyOperations))
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

// schemaRefs collects the component schema names a definition references,
// at any depth.
func schemaRefs(value any) map[string]struct{} {
	found := map[string]struct{}{}
	var walk func(any)
	walk = func(node any) {
		switch typed := node.(type) {
		case map[string]any:
			for key, nested := range typed {
				if key == "$ref" {
					if target, ok := nested.(string); ok {
						found[target[strings.LastIndex(target, "/")+1:]] = struct{}{}
					}
					continue
				}
				walk(nested)
			}
		case []any:
			for _, nested := range typed {
				walk(nested)
			}
		}
	}
	walk(value)
	return found
}

// divergentClosure extends divergentSharedSchemas with every shared schema that
// reaches a divergent one through a `$ref`.
//
// Structural equality is not enough on its own. Pro's `ReadinessResponse` is
// word-for-word the Enterprise shape apart from prose, so it compares equal —
// but its `checks` field references `ReadinessChecks`, which is not. Excluding
// it would hand Pro an Enterprise `ReadinessResponse` whose `Checks` is the
// Enterprise struct, reintroducing through one field exactly the mismatch the
// rename removes. A schema is only safe to share when everything it reaches is.
func divergentClosure(apiSpec, proSpec *specDocument, shared []string) []string {
	divergent := map[string]struct{}{}
	for _, name := range divergentSharedSchemas(apiSpec, proSpec, shared) {
		divergent[name] = struct{}{}
	}

	for changed := true; changed; {
		changed = false
		for _, name := range shared {
			if _, already := divergent[name]; already {
				continue
			}
			for reference := range schemaRefs(proSpec.Components.Schemas[name]) {
				if _, isDivergent := divergent[reference]; isDivergent {
					divergent[name] = struct{}{}
					changed = true
					break
				}
			}
		}
	}

	names := make([]string, 0, len(divergent))
	for name := range divergent {
		names = append(names, name)
	}
	sort.Strings(names)
	return names
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

// proTypeNameFor is the Go identifier a divergent shared schema is emitted
// under in the Pro schema set. The Enterprise definition keeps the bare name.
func proTypeNameFor(schemaName string) string {
	return "Pro" + schemaName
}

// proTypeNames maps each divergent schema to its Pro Go name, refusing a name
// that either spec already declares. Without this guard the rename would trade
// one silent redeclaration for another.
func proTypeNames(divergent []string, apiSpec, proSpec *specDocument) (map[string]string, error) {
	renames := make(map[string]string, len(divergent))
	for _, name := range divergent {
		renamed := proTypeNameFor(name)
		_, inAPI := apiSpec.Components.Schemas[renamed]
		_, inPro := proSpec.Components.Schemas[renamed]
		if inAPI || inPro {
			return nil, fmt.Errorf(
				"schema %q differs between the specs and would be renamed to %q, but that name is already declared; "+
					"rename one of them upstream", name, renamed)
		}
		renames[name] = renamed
	}
	return renames, nil
}

// derivedSpecPathFor places the derived Pro spec beside the derived config, so
// the two generated build inputs live and die together.
func derivedSpecPathFor(outputPath string) string {
	directory := filepath.Dir(outputPath)
	return filepath.Join(directory, "spec-pro.gen.yaml")
}

// writeDerivedSpec copies the Pro spec, renaming each divergent schema and
// every reference to it.
//
// It is written unconditionally, even when nothing is renamed, so `task
// go:generate` can always hand oapi-codegen the same path instead of branching
// on whether a rename happened.
func writeDerivedSpec(path, proSpecPath string, renames map[string]string) error {
	raw, err := os.ReadFile(proSpecPath) //nolint:gosec // path comes from the Taskfile, not user input
	if err != nil {
		return fmt.Errorf("reading spec %s: %w", proSpecPath, err)
	}
	var document map[string]any
	if err := yaml.Unmarshal(raw, &document); err != nil {
		return fmt.Errorf("parsing spec %s: %w", proSpecPath, err)
	}

	renameSchemaKeys(document, renames)
	renameSchemaRefs(document, renames)

	body, err := yaml.Marshal(document)
	if err != nil {
		return fmt.Errorf("marshalling derived spec: %w", err)
	}

	header := "# Code generated by tools/oapi-pro-config; DO NOT EDIT.\n" +
		"#\n" +
		"# A copy of the vendored Pro spec with every schema the Enterprise spec declares\n" +
		"# differently renamed behind a `Pro` prefix, so both shapes can live in one Go\n" +
		"# package. Edit spec/pro/openapi.yaml — never this file.\n"

	if err := os.WriteFile(path, []byte(header+string(body)), 0o644); err != nil { //nolint:gosec // generated build input, not a secret
		return fmt.Errorf("writing %s: %w", path, err)
	}
	return nil
}

// renameSchemaKeys moves each renamed schema to its new key under
// components.schemas.
func renameSchemaKeys(document map[string]any, renames map[string]string) {
	components, ok := document["components"].(map[string]any)
	if !ok {
		return
	}
	schemas, ok := components["schemas"].(map[string]any)
	if !ok {
		return
	}
	for name, renamed := range renames {
		definition, present := schemas[name]
		if !present {
			continue
		}
		delete(schemas, name)
		schemas[renamed] = definition
	}
}

// renameSchemaRefs rewrites every `$ref` that points at a renamed schema.
func renameSchemaRefs(node any, renames map[string]string) {
	switch typed := node.(type) {
	case map[string]any:
		for key, nested := range typed {
			if key == "$ref" {
				reference, isString := nested.(string)
				if !isString {
					continue
				}
				name := reference[strings.LastIndex(reference, "/")+1:]
				if renamed, shouldRename := renames[name]; shouldRename {
					typed[key] = reference[:strings.LastIndex(reference, "/")+1] + renamed
				}
				continue
			}
			renameSchemaRefs(nested, renames)
		}
	case []any:
		for _, nested := range typed {
			renameSchemaRefs(nested, renames)
		}
	}
}

// withoutNames returns names minus every entry of excluded, preserving order.
func withoutNames(names, excluded []string) []string {
	drop := make(map[string]struct{}, len(excluded))
	for _, name := range excluded {
		drop[name] = struct{}{}
	}
	kept := make([]string, 0, len(names))
	for _, name := range names {
		if _, skip := drop[name]; !skip {
			kept = append(kept, name)
		}
	}
	return kept
}

func header(basePath string, shared, proOnly, divergent []string) string {
	var builder strings.Builder
	builder.WriteString("# Code generated by tools/oapi-pro-config; DO NOT EDIT.\n")
	builder.WriteString("#\n")
	fmt.Fprintf(&builder, "# %s plus two lists derived from the Enterprise and Pro OpenAPI specs.\n", basePath)
	fmt.Fprintf(&builder, "# exclude-schemas is the %d schema names both specs declare identically (already\n", len(shared)-len(divergent))
	fmt.Fprintf(&builder, "# emitted into generated_api.go); include-operation-ids is the %d operations the\n", len(proOnly))
	builder.WriteString("# Pro spec declares and the Enterprise spec does not. Edit the base config or\n")
	builder.WriteString("# the specs — never this file.\n")
	if len(divergent) > 0 {
		builder.WriteString("#\n")
		builder.WriteString("# These shared schemas differ structurally between the two specs, so the Pro\n")
		builder.WriteString("# schema set emits each under its own Go name in the derived spec:\n")
		for _, name := range divergent {
			fmt.Fprintf(&builder, "#   %s -> %s\n", name, proTypeNameFor(name))
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
