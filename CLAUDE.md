# CLAUDE.md

This repo is Jakub's Obsidian vault and Quartz/GitHub Pages site.

Vault path: `/Users/jakubjaniak/obsidian-quartz-vault/content`
Friendly Obsidian path: `/Users/jakubjaniak/Documents/Jakub Janiak Raw Notes`
Public repo: `https://github.com/spiceoogway/obsidian-quartz-vault`
Public site: `https://spiceoogway.github.io/obsidian-quartz-vault/`
Deploy branch: `v5`

## Core Rule

Keep the vault simple and human-first.

Do not automatically organize, classify, split, rewrite, or move notes. Only curate or reorganize when Jakub explicitly asks for that work.

## Where To Write

- Normal notes go in `content/Notes/`.

It is okay for notes to be messy. Do not force every note into an insight/source/project taxonomy.

## Capture Behavior

Do not capture normal conversation into the vault unless Jakub explicitly asks.

Explicit capture triggers include phrases like:

- "save this"
- "capture that"
- "put this in Obsidian"
- "add this to my notes"
- "publish this"

When capturing, prefer adding or updating a plain note in `content/Notes/` unless Jakub asks for a different structure.

## Publishing

Use:

```sh
pnpm run publish -- "<message>"
```

The publish script checks formatting/types, builds Quartz, stages intended vault/project files, commits, and pushes to `v5`. GitHub Pages deploys after push.

Do not use npm for package management commands.

## Privacy

This repo is public. Anything committed and pushed is public on GitHub, even if Quartz does not render it.

Never store credentials, private keys, access tokens, passwords, seed phrases, recovery codes, or material Jakub says should stay private.

## Ask First

Ask before:

- broad reorganization
- deleting notes
- changing publishing, branch, remote, or visibility settings
- adding automation that captures or reorganizes notes
