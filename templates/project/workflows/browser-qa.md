# Browser QA

Use this workflow for a new visual direction, material redesign, changed interaction flow, or public-site release. Do not use full Browser QA for copy-only, token-only, or isolated cosmetic changes. Source review, build output, `curl`, and social-preview images do not substitute for a real browser.

Use the installed official Playwright CLI as the primary tool. It runs from the terminal in both Codex and Claude Code and is lighter on tokens than browser MCP. MCP or a connected browser is one optional fallback, not the default.

## 1. Start a reproducible app

- Identify the real start command and local URL; do not invent one.
- Prefer the dev server that is already running. Pay for a production build and `next start`-style boot only when the check depends on production behaviour: a static export, security headers, generated metadata, or a release.
- Read the recorded browser status in `CAPABILITIES.md`; do not rediscover browser tools on every iteration.
- For full capture, use `scripts/browser-qa.sh <url> <evidence-directory>`. A cold run costs about three seconds of browser start; a command in an open session costs about a third of one. When a round covers several routes, keep one session open with `KEEP_SESSION=1` and close it at the end, rather than paying the cold start per route.
- Do not use `npx` as a hidden fallback: it can download packages or browsers in the middle of a task.

## 2. Exercise the page

For a new visual direction, material redesign, or release, inspect the primary route at 1440 × 900 and 390 × 844. Check first viewport, responsive layout, primary CTA, navigation, relevant forms/dialogs, keyboard/focus behavior, overflow, broken assets, and console errors. Check reduced motion when the page contains meaningful animation.

For a changed interaction flow, inspect only the affected route, component, and states. Capture screenshots and create evidence only for a new visual direction, material redesign, or release. For a focused interaction check, report the route and result in the completion report.

## 3. Keep the evidence budget

Screenshots are the most expensive artefact this workflow produces. One desktop capture costs the agent that reads it one to two thousand tokens, an image stays in context for the rest of the session, and a round of eight frames outweighs every instruction file in this template combined. Text and numbers cost almost nothing.

- **Measure anything countable instead of photographing it.** Geometry, offsets, spacing, element counts, contrast, overflow, link status and console output are numbers. Get them from a `playwright-cli` evaluation or a script over the rendered output, and report the number. A picture is for judging whether something looks right, not for establishing whether it is right.
- **Two images per round**, one desktop and one mobile, and read only the one that answers the open question. Add a third only when the change is in a region neither viewport shows.
- **Never capture a frame series to judge motion or scroll timing.** Measure the trigger position and the duration.
- **Two rounds on the same element, then ask.** A third round means the question is about taste, and taste is settled by the user, not by another screenshot.
- **Keep the accepted round, delete the superseded ones.** Iteration captures committed to the repository are paid for by every clone and every CI checkout; one real pilot reached 219 tracked images and a 52 MB `.git`.

## 4. Fail fast when browser setup is unavailable

Do not spend an open-ended number of turns diagnosing the browser. Make at most two attempts in an unchanged environment:

1. Run one Playwright CLI preflight and browser start. If it fails, record the concise error plus CLI/browser version in `CAPABILITIES.md`.
2. Try one already available fallback only: connected browser, in-app browser, or configured browser MCP/tool. Do not install, configure, or probe a third path without user approval.

If both attempts fail, set status to `blocked`. Do not retry on later prompts unless the user confirms an environment change, a tool is installed/repaired, or the task reaches an acceptance or release gate. Ask the user to choose one path: enable a browser, approve repair/installation, provide desktop/mobile screenshots, or continue as a provisional implementation.

Never silently replace browser review with source review. Do not accept a visual direction or call a site release-ready while Browser QA is blocked.

## 5. One-time setup

If Playwright CLI is `missing` or `setup-required`, request approval for:

```bash
npm install -g @playwright/cli@latest
playwright-cli install-browser chromium
```

After installation, run one smoke test: open a harmless URL with `--browser=chromium`, save a screenshot, then close the session. Record `available` only after it succeeds. In a Claude Code project, `playwright-cli install --skills` is optional and installs its command-reference skill into that project. Codex does not need it because this workflow names the CLI directly.

## 6. Report evidence

For a new visual direction, material redesign, or release, create or update the review file from `templates/visual-review-evidence.md`. Mark Browser QA as `verified` only when the running page was inspected at both viewports. Otherwise mark it `blocked`, link the two attempts, and state the user decision required to proceed.

For a focused interaction check, report only the affected route, state, runtime, and result in the completion report.
