# Jakub Janiak Raw Notes

This repo is a simple Obsidian vault published with Quartz to GitHub Pages.

## Structure

- `content/` is the Obsidian vault.
- `content/Notes/` is the default place to write.
- `quartz/`, `quartz.config.yaml`, and `quartz.lock.json` are the publishing setup.
- `.github/workflows/deploy.yml` builds and deploys the site on every push to `v5`.

## Local Workflow

Install dependencies:

```sh
pnpm install
```

Preview the site:

```sh
pnpm serve
```

Publish notes:

```sh
pnpm run publish -- "update notes"
```

Auto-publish is also configured to run every hour through Codex automations. It runs:

```sh
pnpm run auto-publish
```

The auto-publish script exits without committing when there are no relevant local changes.

The published site is:

https://spiceoogway.github.io/
