# Task Triage Rules

## Purpose

`Live To-do.md` is the raw capture surface. It should stay messy, fast, and human.

`Triaged To-do.md` is the AI-maintained operating view. It should be structured enough to scan, sort, and roll forward.

## Source And Output

- Source: [[Live To-do]]
- Output: [[Triaged To-do]]
- Finance/admin output: [[Finance Admin Dashboard]]

## Rules For Codex

- Do not require the user to make raw tasks machine-readable.
- Preserve `Live To-do.md` as raw capture unless explicitly asked to edit it.
- Triage all meaningful raw items into `Triaged To-do.md`.
- Do not delete an item from the triaged view unless it is clearly complete, obsolete, or explicitly removed by the user.
- Resolve relative dates using the current date. Use `due:: YYYY-MM-DD`.
- If a date is ambiguous, keep the task and add it to `Needs Clarification`.
- If a task is vague but actionable, rewrite it as the smallest useful next action.
- If a task is too vague to act on, keep the raw wording and flag it under `Needs Clarification`.
- Preserve the user's 60/20/20 allocation when present.
- Prefer simple Markdown checkboxes over plugins or app-specific syntax.

## Tags

Use a small stable tag vocabulary:

- `#area/writing`
- `#area/reading`
- `#area/finance`
- `#area/tax`
- `#area/codex`
- `#area/outreach`
- `#area/admin`
- `#area/personal`
- `#area/automation`
- `#area/ops`

Use these status tags:

- `#status/today`
- `#status/next`
- `#status/waiting`
- `#status/later`
- `#status/someday`
- `#status/blocked`

Use these context tags only when useful:

- `#context/desktop`
- `#context/call`
- `#context/email`
- `#context/errand`

## Output Shape

Keep `Triaged To-do.md` in this shape:

```markdown
# Triaged To-do

Source: [[Live To-do]]
Last triaged: YYYY-MM-DD

## Operating Allocation

## Today

## Waiting / Date-Bound

## Desktop Required

## Critical Later

## Backlog

## Needs Clarification
```

## Daily Triage Prompt

Use this prompt when asking Codex to refresh the dashboard:

```text
Read Personal/Task Triage Rules.md and Personal/Live To-do.md.
Update Personal/Triaged To-do.md.
Treat Live To-do.md as raw capture and do not edit it.
Resolve relative dates from today's date.
Preserve every meaningful item unless clearly completed or obsolete.
Rewrite vague items into concrete next actions where possible.
Flag ambiguous items under Needs Clarification.
```
