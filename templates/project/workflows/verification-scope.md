# Verification scope

Select verification by change risk, not by workflow name alone. State one short line before implementation: `Scope: <level>. Run: <checks>. Skip: <checks and reason>.` Do not run a release suite unless the user asks for release, deployment, or a release review.

| Scope | Typical change | Run |
|---|---|---|
| local | copy, token, style, isolated layout fix | inspect the changed file; run one relevant check only when code or visible output could break |
| focused UI | component, route section, interaction, responsive behavior | inspect the affected route; use a focused browser check for visual or interaction changes; run a targeted test if one exists |
| functional | state, form, API, data transformation, shared component | relevant tests plus the narrowest applicable lint or typecheck; test the affected user path when it has UI |
| high risk | auth, payments, permissions, migrations, dependencies, architecture | relevant tests, lint/typecheck, security or integration checks, and affected flows |
| release | deployment, explicit release request, pre-release review | all applicable checks in `VERIFICATION.md` |

## Rules

- A text-only or token-only change does not require a full test, typecheck, build, browser-QA, or review cycle by default.
- A focused browser check means the changed route and state only. Full desktop/mobile screenshots and evidence are required only for a new visual direction, material redesign, or release.
- Run the exact existing command or test file when one is relevant. Do not substitute a broad suite merely because it is convenient.
- When a project builds in more than one mode — a static export, a different target, a second config — record in `VERIFICATION.md` which build the tests and the browser need, and in what order the commands must run. A suite executed against the artefacts of the wrong build fails in a way that reads as a product regression and is not one, and the time goes into debugging code that was never broken.
- If no check is relevant, inspect the diff and report `no automated check relevant`; do not invent work to fill the checklist.
- Escalate scope when the diff reveals shared behavior, a public flow, data loss, security risk, or a user-visible regression outside the requested area.
