# Workflow log

The agent maintains this file. It is evidence for improving the template after a real project; it is not a user form.

Add one compact entry only for a material decision, capability gate, degraded mode, failed check, review finding, or release. Do not create log entries for ordinary local iterations.

## Entry template

```text
Date:
Task:
Mode: quick / standard / complex
Profile and stack preset:
Workflows activated:

Execution
- What was decided or built, and why. Prose, not a form — the reasoning is the part
  worth keeping.
- Capability limits, degraded modes, or blocked checks: only when one actually
  occurred. `CAPABILITIES.md` holds the standing status; do not restate it here.
- Browser QA: what was inspected, at which viewports, and where the evidence is.
  Only when it ran.

Outcome
- Applied:
- Verified: the commands and their real result.
- Assumptions, risks, or follow-up:
```

Use observed facts only. Do not record a review, command, capability, or result that did not happen.

Write the entry once, at the end of the task. Fields that have nothing to say are left out, not filled with `n/a`.
