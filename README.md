# Obsidian Quartz Vault

This repo version-controls a new Obsidian vault and publishes it with Quartz to GitHub Pages.

## Structure

- `content/` is the Obsidian vault. Open this folder in Obsidian.
- `quartz/`, `quartz.config.yaml`, and `quartz.lock.json` are the Quartz publishing setup.
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

Build the static site:

```sh
pnpm build
```

Commit and push notes:

```sh
git add content quartz.config.yaml quartz.lock.json pnpm-lock.yaml package.json .github/workflows/deploy.yml
git commit -m "Update vault"
git push
```

The published site is:

https://spiceoogway.github.io/obsidian-quartz-vault/
