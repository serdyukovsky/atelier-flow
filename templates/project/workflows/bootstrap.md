# Capability bootstrap and gate

Run this before scaffolding and before any non-trivial workflow.

## 1. Inspect the environment

Check the project files, package manager, installed dependencies, available skills, configured MCP/tools, browser runtime, and relevant environment variables without printing secrets. Read the **Active operating context** in `PROJECT.md`; do not inspect every optional profile.

Use the selected profile, stack preset, and workflow to determine which capabilities are `required`, `recommended`, or `optional`. Do not treat every capability mentioned in the template as required.

## 2. Update CAPABILITIES.md

Record status as one of:

- `available` — detected and usable;
- `missing` — needed but not present;
- `configured` — present with required credentials/config;
- `setup-required` — installed but not configured;
- `not-applicable` — not needed for this project;
- `unknown` — could not be verified.

Include evidence and limitations. Do not expose credentials.

## 3. Stop on missing required capability

Before implementation, report:

```text
BLOCKED: required capability is missing.
Capability: ...
Why it is required: ...
Install command or setup path: ...
Risk if skipped: ...

Choose one:
1. Install it now (requires permission to change the environment).
2. Continue without it in degraded mode.
3. Stop this task.
```

Do not write product code until the user chooses. If the user chooses degraded mode, record the decision and adapt the workflow explicitly.

## 4. Install safely

Only after confirmation, show the exact command and what it changes. Prefer reviewing a cloned repository and installer before executing it. Do not use unreviewed `curl | bash` or `curl | sh` installers. After installation, recheck the capability and restart the agent if discovery requires it.

## 5. Establish verification

After the stack is known, create or update `VERIFICATION.md` from the actual `package.json`, CI configuration, and selected stack. Record exact commands for lint/formatting, typecheck, tests, build, and applicable browser or accessibility checks. Do not invent commands.

## 6. Continue with an activation summary

At the start of the task, report:

```text
Profile:
Stack preset:
Workflow:
Required capabilities: available / degraded
Optional capabilities used:
Not used:
```

At the end, update `CAPABILITIES.md` and `workflow-log.md` with `activated`, `applied`, `verified`, and `not applicable` statuses.
