# Obsidian Quartz Vault

This repo is a local-first Obsidian vault, Git-backed insight store, and public Quartz site.

The vault is insight-first. Raw captures and attachments can live here, but the primary durable object is an insight: a claim, learning, decision, reusable pattern, or open question worth retrieving later.

## Structure

```text
content/00-inbox/       uncertain captures, hunches, possible duplicates
content/10-insights/    atomic durable claim notes
content/20-syntheses/   multi-claim summaries and stitched arguments
content/30-projects/    sparse hubs for active efforts
content/40-areas/       sparse hubs for long-running domains
content/50-sources/     raw source captures and source notes
content/60-people/      agent-maintained person hubs
content/65-orgs/        agent-maintained org hubs
content/70-attachments/ PDFs, screenshots, images, exports, binaries
content/90-meta/        templates, schemas, setup notes, instructions
```

Open `content/` as the Obsidian vault. The repo root contains Quartz, GitHub Actions, and publishing scripts.

## Operating Model

- Obsidian is the reading and browsing UI.
- Git is the version history and capture log.
- GitHub is the public remote.
- Quartz publishes the public site at <https://spiceoogway.github.io/obsidian-quartz-vault/>.
- Codex and Claude are the ingest and curation layer.
- Agents search before creating notes, update overlapping notes, preserve contradicted claims, and maintain sparse hubs.
- Anything committed here is public on GitHub, even when Quartz does not render it.

## Local Workflow

Install dependencies:

```sh
pnpm install
```

Preview the site:

```sh
pnpm serve
```

Build the static site:

```sh
pnpm build
```

Publish notes:

```sh
pnpm run publish -- "insight: add example durable claim"
```

The publish script runs checks, builds Quartz, stages the vault/project files, commits with the given message, and pushes to `v5`.

## Core Rules

- Search before create.
- Update overlapping notes instead of duplicating them.
- Use claim-style titles for insight notes.
- Preserve contradicted historical claims; mark them contested, weakened, or superseded.
- Store raw context and attachments when useful.
- Keep project, domain, person, and org hubs sparse.
- Do not create daily notes or a separate capture log in v0.
- Do not commit secrets, private keys, tokens, passwords, seed phrases, or material that should not be public.
