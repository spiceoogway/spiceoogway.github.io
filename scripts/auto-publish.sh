#!/bin/zsh
set -euo pipefail

export PATH="/usr/local/bin:/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin"

REPO="/Users/jakubjaniak/spiceoogway.github.io"

PUBLISH_PATHS=(
  "content"
)

cd "$REPO"

if [[ "$(git rev-parse --abbrev-ref HEAD)" != "v5" ]]; then
  echo "Auto-publish must run on the v5 branch."
  exit 1
fi

if [[ -z "$(git status --porcelain --untracked-files=all -- "${PUBLISH_PATHS[@]}")" ]]; then
  echo "No relevant changes to auto-publish."
  exit 0
fi

if [[ "${DRY_RUN:-}" == "1" ]]; then
  echo "Changes that would be auto-published:"
  git status --short -- "${PUBLISH_PATHS[@]}"
  exit 0
fi

git add -A -- "${PUBLISH_PATHS[@]}"

if git diff --cached --quiet; then
  echo "No staged note changes to auto-publish."
  exit 0
fi

git commit -m "auto: publish notes $(date '+%Y-%m-%d %H:%M %Z')"
git push origin v5
