---
title: The control plane
description: Projects, API keys, and integrations — available on Pro today.
---

The control plane — projects, API keys, integrations, and per-project RAG configuration — is
capability-gated to **Pro only** in all three clients today. Enterprise's control plane is a
separate service on its own origin (`control_plane_base_url`/`controlPlaneBaseUrl`/
`ControlPlaneBaseURL()`, which defaults to the data-plane `base_url`); none of these SDK methods
call it yet, so invoking them against an Enterprise-targeted client raises a tier error before any
request goes out. See [Tier capabilities](/reference/tier-capabilities/) for what is Enterprise-only
by design versus what simply has not landed for Enterprise here yet.

## Projects

```python title="Python"
projects = client.list_projects()
project = client.create_project({"name": "acme-invoices"})
```

```ts title="TypeScript"
const projects = await client.listProjects();
const project = await client.createProject({ name: "acme-invoices" });
```

```go title="Go"
projects, err := client.ListProjects(ctx, 0, 0)
project, err := client.CreateProject(ctx, xberg.CreateProjectRequest{Name: "acme-invoices"})
projectID := project.Id.String()
```

## API keys

The plaintext key is returned exactly once, in the create response — store it then, not by
fetching it again later.

```python title="Python"
keys = client.list_api_keys(project.id)
created = client.create_api_key(project.id, {"name": "ci-runner"})
print(created.key)  # only ever shown here
client.revoke_api_key(project.id, created.id)
```

```ts title="TypeScript"
const created = await client.createApiKey(project.id, { name: "ci-runner" });
console.log(created.key);
await client.revokeApiKey(project.id, created.id);
```

```go title="Go"
name := "ci-runner"
created, err := client.CreateAPIKey(ctx, projectID, xberg.CreateApiKeyRequest{Name: &name})
fmt.Println(created.Key)
err = client.RevokeAPIKey(ctx, projectID, created.Id.String())
```

## Integrations

An integration connects a project to an external document source (for example, a shared drive) via
BYO OAuth2/OIDC client credentials. Creating one registers it; `connect_integration`/
`connectIntegration`/`ConnectIntegration` then begins the OAuth flow and returns the provider's
`authorize_url` for the end user to visit — the SDK cannot drive that browser round-trip for you.

```python title="Python"
integration = client.create_integration(
    project.id,
    {
        "kind": "google_drive",
        "name": "Shared Drive",
        "auth_type": "oauth2",
        "credentials": {"client_id": "...", "client_secret": "..."},
    },
)
begin = client.connect_integration(project.id, integration.id)
print(begin.authorize_url)

# once connected:
docs = client.list_integration_documents(project.id, integration.id, max_results=50)
data = client.fetch_integration_document(project.id, integration.id, docs.documents[0].id)
job = client.extract(file=data)
```

```ts title="TypeScript"
const integration = await client.createIntegration(project.id, {
  kind: "google_drive",
  name: "Shared Drive",
  auth_type: "oauth2",
  credentials: { client_id: "...", client_secret: "..." },
});
const begin = await client.connectIntegration(project.id, integration.id);
console.log(begin.authorize_url);
```

```go title="Go"
integration, err := client.CreateIntegration(ctx, projectID, xberg.CreateIntegrationRequest{
    Kind:        "google_drive",
    Name:        "Shared Drive",
    AuthType:    "oauth2",
    Credentials: map[string]interface{}{"client_id": "...", "client_secret": "..."},
})
begin, err := client.ConnectIntegration(ctx, projectID, integration.Id.String())
fmt.Println(begin.AuthorizeUrl)
```

A document fetched through `fetch_integration_document`/`fetchIntegrationDocument`/
`FetchIntegrationDocument` comes back as raw bytes in the source's own media type — feed it
straight into `extract`/`extractBatch`/`Extract` the same way you would a file read from disk.

## Per-project RAG configuration

Distinct from a RAG collection's own settings: this is the project-wide default that new
collections and retrievals fall back to.

```python title="Python"
config = client.get_rag_config(project.id)
client.set_rag_config(project.id, {"default_embedding_source": "managed_local"})
```

## What is not here

Auth session/OAuth-redirect flows (`auth_config`, `login`) live on Pro's own dashboard and are not
meant to be driven headlessly — they exist on the client mainly so a server-side integration can
complete the exchange. Managed webhook *subscriptions*, team management, document versions, and
billing are Enterprise-only concepts that are not part of this control-plane surface at all — see
[Tier capabilities](/reference/tier-capabilities/).
