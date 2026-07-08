# Finance Admin Dashboard Rules

## Purpose

`Finance Admin Dashboard.md` is the focused operating view for money, tax, entity, subscription, reimbursement, registration, and admin commitments.

It is downstream of the raw task system:

- Raw source: [[Live To-do]]
- General triage: [[Triaged To-do]]
- Focused output: [[Finance Admin Dashboard]]

## Rules For Codex

- Do not edit `Live To-do.md` unless explicitly asked.
- Refresh this dashboard from `Live To-do.md` and `Triaged To-do.md`.
- Include tasks tagged or clearly related to finance, tax, admin, ops, entities, registrations, reimbursements, subscriptions, documents, accounts, tools, payroll, payments, chargebacks, or treasury.
- Exclude writing, reading, outreach, and personal tasks unless they have a finance/admin dependency.
- Keep due dates in `YYYY-MM-DD` form.
- Preserve wait states and inferred owners when clear.
- Do not invent facts, amounts, account numbers, addresses, or legal/tax conclusions.
- Draft messages are suggestions only. Keep them short and sendable.
- If a task is ambiguous, keep it under `Open Questions` rather than forcing structure.
- Avoid churn: update only when source tasks or dates changed.

## Output Shape

Keep `Finance Admin Dashboard.md` in this shape:

```markdown
# Finance Admin Dashboard

Source: [[Live To-do]] -> [[Triaged To-do]]
Rules: [[Finance Admin Dashboard Rules]]
Last refreshed: YYYY-MM-DD

## Due Soon

## Waiting On

## Calls To Make

## Documents / Forms

## Treasury / Capital Allocation

## Accounts / Subscriptions / Tools

## Later Admin Backlog

## Draft Messages

## Open Questions
```

## Refresh Prompt

```text
Read Personal/Finance Admin Dashboard Rules.md, Personal/Live To-do.md, and Personal/Triaged To-do.md.
Update Personal/Finance Admin Dashboard.md.
Do not edit Live To-do.md.
Extract finance, tax, admin, ops, document, entity, registration, reimbursement, account, subscription, and treasury work.
Keep the dashboard concise and action-oriented.
```
