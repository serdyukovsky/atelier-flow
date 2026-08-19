# Project operating rules

## Start of every task

1. Read this file and nearby code. Load `PROJECT.md`, a profile, `VERIFICATION.md`, or another workflow only when it affects the requested change or has not already been established in the current task.
2. Classify the task as `quick`, `standard`, or `complex`, then select a verification scope using `workflows/verification-scope.md`.
3. State the selected mode, verification scope, and any assumptions in one compact line.
4. For standard and complex work, create or update a plan before implementation. A quick task needs no plan.
5. For a greenfield project, select and record one stack preset before scaffolding.

Use the **Active operating context** in `PROJECT.md` to load only the applicable profiles and workflows. Do not read or activate optional modules merely because they exist in the template.

If `PROJECT.md` is missing or mostly empty, do not ask the user to fill out a form. Infer a first brief from the user's prompt, ask only blocking questions, then create or update `PROJECT.md` yourself. The user may edit it later, but manual editing is optional.

Run `workflows/bootstrap.md` once when starting a project, when the stack/capabilities change, or when a task requires an unverified tool. For ordinary work, read the existing `CAPABILITIES.md` instead of rediscovering every skill, MCP, browser, and environment variable. If a build-required capability is missing, stop before implementation and ask the user whether to install it, continue without it in degraded mode, or stop. A release-required capability may not be silently bypassed when deciding the work is ready to ship. Never silently install external code or claim an unavailable capability was used.

After stack selection, maintain `VERIFICATION.md` from the actual package scripts and CI configuration. Revisit it only when commands, stack, or release requirements change. Log only material decisions, capability limits, failed checks, reviews, degraded work, or release evidence.

For a new website or material redesign, run `workflows/visual-gate.md` before scaling a visual direction. A visual system is not accepted until real-browser screenshots and a separate review are recorded in `docs/reviews/`. Use Playwright CLI as the primary browser tool. If browser evidence is unavailable, run the two-attempt bounded protocol in `workflows/browser-qa.md`, record `blocked` once, and do not retry it on ordinary prompts until the environment changes or the user explicitly asks.

## Scope control

- Preserve existing behavior unless the brief says otherwise.
- Do not add dependencies before checking `package.json` and explaining why.
- Do not choose individual libraries ad hoc when a compatible stack preset exists.
- Preserve the approved stack preset. A change of framework, database, CMS, or auth provider requires an explicit decision record.
- Do not change architecture silently. Record material decisions in `docs/decisions/`.
- Prefer small, reversible changes.
- Never leave fake data, placeholder copy, TODO comments, or unfinished states in a shipped path.

## Security baseline

- Keep secrets out of source control and logs.
- Validate input at API, action, webhook, CMS hook, and file-upload boundaries.
- Enforce authorization on the server for every protected operation.
- Use secure cookie settings and explicit CORS origins when applicable.
- Do not expose internal errors, credentials, tokens, or personal data in responses.
- Review dependencies and production configuration before release.
- Add rate limiting, audit logging, backups, and recovery steps when the feature needs them.

## Collaboration protocol

Use roles proportionately. A quick task needs no role cycle. For standard work, add a focused review only when the change has meaningful behavioral or UI risk. For complex work, run the checkpoints in sequence in the same context.

A fresh context is not free: the new reviewer re-reads the repository, the project files and the diff before it can say anything, and that re-derivation is the expensive part, not the review. Spend it on at most one reviewer, and only when independence is the actual point — a release, a security boundary, or a visual direction the implementer has already defended once.

The standard loop is:

```text
brief → plan → implement → review → fix → verify → report
```

Do not start a debate unless two reasonable solutions have materially different UX, architecture, cost, or risk. When they do, present alternatives and a recommendation; the user makes the final product decision.

## Completion report

Always include changed files, checks run or intentionally skipped with reason, assumptions, and remaining risks. Update `workflow-log.md` only when its entry rules apply. Never claim browser or test verification that was not actually performed.
