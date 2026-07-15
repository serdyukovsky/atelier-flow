# Verification contract

The agent maintains this file after the stack is known. It turns the project's real scripts into a short, truthful release contract. The user does not fill it out.

## Required checks

Record the exact commands that exist in this repository. Use `not applicable` only with a reason.

| Check | Command | When to run | Status / evidence |
|---|---|---|---|
| Formatting or lint |  | before completion |  |
| Typecheck |  | before completion |  |
| Automated tests |  | when tests exist or behavior changed |  |
| Production build |  | before release |  |
| Browser desktop/mobile check | actual runtime and route | pages and visual changes | runtime, attempts, console result, desktop/mobile screenshots |
| Visual evidence | desktop and mobile screenshot paths/URLs | new visual direction or redesign |  |
| Accessibility/performance check |  | public sites before release |  |

## Rules

- Derive commands from `package.json`, CI configuration, and the selected stack; do not invent commands.
- Run the narrowest relevant checks for a quick task, and all applicable checks for release.
- Record the actual exit result and any important limitation in `workflow-log.md`.
- For a material visual direction, link the evidence file in `docs/reviews/`. Browser evidence missing means the visual direction is not accepted or release-ready. Mark an unavailable browser as `blocked`, not `not applicable`, and follow `workflows/browser-qa.md`.
- A command that was not run is `not verified`, never implicitly passed.
