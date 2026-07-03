#!/bin/zsh
set -euo pipefail

export PATH="/usr/local/bin:/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export COREPACK_ENABLE_DOWNLOAD_PROMPT=0

if [[ ! -t 0 ]]; then
  export CI="${CI:-1}"
fi

REPO="/Users/jakubjaniak/spiceoogway.github.io"
LOCKDIR="/tmp/spiceoogway-raw-notes-auto-publish.lock"

PUBLISH_PATHS=(
  "AGENTS.md"
  "CLAUDE.md"
  "README.md"
  ".github/workflows"
  ".gitignore"
  ".prettierignore"
  "content"
  "package.json"
  "pnpm-lock.yaml"
  "quartz.config.yaml"
  "quartz.lock.json"
  "quartz/plugins/vfile.ts"
  "scripts"
)

cd "$REPO"

if ! mkdir "$LOCKDIR" 2>/dev/null; then
  echo "Auto-publish already running; exiting."
  exit 0
fi

trap 'rmdir "$LOCKDIR"' EXIT

if [[ -z "$(git status --porcelain --untracked-files=all -- "${PUBLISH_PATHS[@]}")" ]]; then
  echo "No relevant changes to auto-publish."
  exit 0
fi

if [[ "${DRY_RUN:-}" == "1" ]]; then
  echo "Changes that would be auto-published:"
  git status --short -- "${PUBLISH_PATHS[@]}"
  exit 0
fi

pnpm run publish -- "auto: publish notes $(date '+%Y-%m-%d %H:%M %Z')"
