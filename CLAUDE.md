# CLAUDE.md

This repo is Jakub's local-first, Git-backed insight store and public Quartz site.

Vault path: `/Users/jakubjaniak/obsidian-quartz-vault/content`
Public repo: `https://github.com/spiceoogway/obsidian-quartz-vault`
Public site: `https://spiceoogway.github.io/obsidian-quartz-vault/`
Deploy branch: `v5`

## Mission

Act as the capture and curation layer. Extract durable insights, preserve evidence, maintain sparse retrieval hubs, and publish confident updates through Git so the public Quartz site stays current.

The vault is insight-first. Raw notes, transcripts, source captures, attachments, and scratch material are allowed, but they are supporting evidence. The main durable object is an insight: a claim or learning that changes a belief, records a reusable pattern, preserves a decision, or captures context likely to matter later.

## Conversation Capture

During normal collaboration, listen for durable deltas:

- a changed belief or model update
- a claim worth retrieving later
- a project decision
- a reusable framing, heuristic, or pattern
- an open question, next test, or research direction
- a useful connection across projects, people, organizations, sources, or domains

Capture the delta, not transcript noise. When raw context matters, store it in `50-sources/` and promote the durable takeaway into `10-insights/` or a relevant hub.

Explicit capture triggers include: "capture that", "save this", "save the delta", "checkpoint this", "put this in Obsidian", or "publish this".

Do not capture casual chatter, transient preferences, or half-formed material unless it is useful as an inbox hunch. If Jakub says not to save or publish something, do not commit it.

## Folder Schema

- `00-inbox/`: hunches, uncertain captures, possible duplicates, material needing review
- `10-insights/`: atomic durable claim notes
- `20-syntheses/`: multi-claim summaries and stitched arguments
- `30-projects/`: sparse hubs for active efforts
- `40-areas/`: sparse hubs for long-running domains
- `50-sources/`: raw source captures, transcripts, chats, emails, call notes, research sessions
- `60-people/`: sparse person hubs maintained by agents
- `65-orgs/`: sparse organization hubs maintained by agents
- `70-attachments/`: PDFs, screenshots, images, exports, binaries
- `90-meta/`: templates, schemas, setup docs, vault instructions

## Search Before Create

Search before creating.

Before adding a new insight, search filenames, aliases, source notes, projects, domains, people, organizations, and body text. Prefer `rg` from the repo root.

If new material reinforces, revises, weakens, or adds evidence to an existing note, update the existing note. Create a new insight only when the claim is meaningfully distinct.

If overlap is plausible but unresolved, place the candidate in `00-inbox/` with `status: hunch` or `status: raw`, note the possible duplicate, and do not pretend it is resolved.

## Note Style

Use claim-style insight titles, not topic labels.

Good: `Bare compute contracts have no recovery value after default`

Avoid: `Compute Contract Recovery Risk`

Use slug filenames for note targets, for example:

```text
10-insights/bare-compute-contracts-have-no-recovery-value-after-default.md
```

Prefer frontmatter like:

```yaml
---
title: Bare compute contracts have no recovery value after default
type: insight
status: active
created: 2026-07-02
updated: 2026-07-02
tags: []
---
```

Insight notes should usually include:

- `## Claim`
- `## Why It Matters`
- `## Evidence`
- `## Implications`
- `## Counterpoints / Uncertainty`
- `## Links`
- `## Updates`

## Belief History

Preserve contradicted historical claims. Do not rename or rewrite an old note to hide the original belief.

When a claim is contradicted:

- keep the original note title and filename unless Jakub explicitly asks otherwise
- set `status` to `contested`, `weakened`, or `superseded`
- add a dated `## Updates` entry
- explain what changed and why
- link to the replacement or stronger claim when useful
- use an explicit commit message

## Sources

Store enough raw context to make the insight auditable.

For rich source material:

1. Put raw or lightly cleaned context in `50-sources/`.
2. Create a source or synthesis note when it helps retrieval.
3. Promote durable takeaways into atomic insight notes.
4. Link insights back to sources.
5. Link sources to promoted insights.

## Hubs

Maintain sparse hubs for projects and domains. Update a hub only when new material changes current state, key insights, sources, open questions, or next tests.

Maintain person and organization hubs only when useful for retrieval. They are not a CRM. Create or update them when an entity is strategically important, appears repeatedly, or anchors a strong source or claim.

## Links

Use Obsidian wikilinks that resolve to actual filenames. Because insight filenames are slugified, prefer slug target plus readable alias:

```text
[[bare-compute-contracts-have-no-recovery-value-after-default|Bare compute contracts have no recovery value after default]]
```

Avoid linking only by a title when the filename is different, because Obsidian may create a duplicate note.

## Git And Publishing

This vault is public once committed and pushed.

- Remote: `https://github.com/spiceoogway/obsidian-quartz-vault.git`
- Public site: `https://spiceoogway.github.io/obsidian-quartz-vault/`
- GitHub Actions builds and deploys Quartz after every push to `v5`.
- Do not use the Obsidian Git plugin in v0.
- Commit and push after every confident capture or update by default.
- Git history is the capture log.
- Use boring, explicit commit messages.
- Use `pnpm run publish -- "<message>"` for the build/stage/commit/push loop.
- Do not stage random `.obsidian/` UI or plugin setting drift unless the setting change is intentional.

Example commit messages:

```text
insight: add compute contract recovery claim
source: capture ai infra interview notes
project: update quartz vault publishing state
insight: mark gpu scarcity claim weakened
publish: update public notes harness
```

## Privacy

The GitHub repo is public. Anything committed and pushed is public on GitHub, even if Quartz does not render it. Before committing sensitive personal or professional material, ask Jakub or keep it out of this repo.

Never store raw credentials, private keys, access tokens, passwords, seed phrases, or recovery codes.

## Prohibited Without Approval

- Broad reorganization
- Deleting notes or attachments
- Rewriting historical claims to hide old beliefs
- Changing publishing scope, visibility, branch, or remote configuration
- Storing secrets
- Creating daily notes or a separate capture log
