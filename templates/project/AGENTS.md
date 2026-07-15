# Project operating rules

## Start of every task

1. Read this file, `PROJECT.md`, relevant profile instructions, `VERIFICATION.md`, and nearby code.
2. Classify the task as `quick`, `standard`, or `complex`.
3. State the selected mode and any assumptions.
4. For standard and complex work, create or update a plan before implementation.
5. For a greenfield project, select and record one stack preset before scaffolding.

Use the **Active operating context** in `PROJECT.md` to load only the applicable profiles and workflows. Do not read or activate optional modules merely because they exist in the template.

If `PROJECT.md` is missing or mostly empty, do not ask the user to fill out a form. Infer a first brief from the user's prompt, ask only blocking questions, then create or update `PROJECT.md` yourself. The user may edit it later, but manual editing is optional.

Before non-trivial work, check `CAPABILITIES.md` and run `workflows/bootstrap.md`. If a build-required capability is missing, stop before implementation and ask the user whether to install it, continue without it in degraded mode, or stop. A release-required capability may not be silently bypassed when deciding the work is ready to ship. Never silently install external code or claim an unavailable capability was used.

After stack selection, maintain `VERIFICATION.md` from the actual package scripts and CI configuration. Record the task's real checks and results in `workflow-log.md`.

For a new website or material redesign, run `workflows/visual-gate.md` before scaling a visual direction. A visual system is not accepted until browser screenshots and a separate review are recorded in `docs/reviews/`. If browser evidence is unavailable, ask before continuing beyond a provisional visual slice.

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

Use roles as sequential review checkpoints. A single agent may perform several roles, but review must be a separate pass. For complex work, use a fresh context for at least one reviewer when possible.

The standard loop is:

```text
brief → plan → implement → review → fix → verify → report
```

Do not start a debate unless two reasonable solutions have materially different UX, architecture, cost, or risk. When they do, present alternatives and a recommendation; the user makes the final product decision.

## Completion report

Always include changed files, checks run, assumptions, and remaining risks. Update `workflow-log.md` when its entry rules apply. Never claim browser or test verification that was not actually performed.
