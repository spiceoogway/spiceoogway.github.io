#!/usr/bin/env node
import { spawnSync } from "node:child_process"

const message = process.argv.slice(2).join(" ").trim()

if (!message) {
  console.error('Usage: pnpm run publish -- "<commit message>"')
  process.exit(1)
}

function run(command, args, options = {}) {
  const result = spawnSync(command, args, {
    stdio: "inherit",
    shell: false,
    ...options,
  })

  if (result.status !== 0) {
    process.exit(result.status ?? 1)
  }
}

function hasStagedChanges() {
  const result = spawnSync("git", ["diff", "--cached", "--quiet"], {
    stdio: "ignore",
    shell: false,
  })

  return result.status === 1
}

run("pnpm", ["check"])
run("pnpm", ["build"])

run("git", [
  "add",
  "AGENTS.md",
  "CLAUDE.md",
  "README.md",
  ".github/workflows",
  ".gitignore",
  "content",
  "package.json",
  "pnpm-lock.yaml",
  "quartz.config.yaml",
  "quartz.lock.json",
  "quartz/plugins/vfile.ts",
  "scripts",
])

if (!hasStagedChanges()) {
  console.log("No staged changes to publish.")
  process.exit(0)
}

run("git", ["commit", "-m", message])
run("git", ["push", "origin", "v5"])
