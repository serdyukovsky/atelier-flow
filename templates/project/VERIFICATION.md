# Verification contract

The agent maintains this file after the stack is known. It turns the project's real scripts into a short, truthful release contract. It does not mean every command runs after every prompt. The user does not fill it out.

## Required checks

Record the exact commands that exist in this repository. Use `not applicable` only with a reason.

| Check | Command | When to run | Status / evidence |
|---|---|---|---|
| Formatting or lint |  | when the changed code can violate formatting/lint rules; always before release |  |
| Typecheck |  | changed typed code, shared types, or before release |  |
| Automated tests |  | relevant behavior changed and an exact test exists; all applicable tests before release |  |
| Production build |  | before release |  |
| Browser desktop/mobile check | actual runtime and route | focused route for UI/interaction changes; full pass for material direction or release | runtime, attempts, console result, desktop/mobile screenshots |
| Visual evidence | desktop and mobile screenshot paths/URLs | new visual direction or redesign |  |
| Accessibility/performance check |  | public sites before release |  |

## Rules

- Derive commands from `package.json`, CI configuration, and the selected stack; do not invent commands.
- Select checks using `workflows/verification-scope.md`. Run the narrowest relevant checks for normal work and all applicable checks for release.
- Record the actual exit result and any important limitation in the completion report. Add it to `workflow-log.md` only when it is material.
- For a material visual direction, link the evidence file in `docs/reviews/`. Browser evidence missing means the visual direction is not accepted or release-ready. Mark an unavailable browser as `blocked`, not `not applicable`, and follow `workflows/browser-qa.md`.
- A command that was not run is `not verified`, never implicitly passed.
