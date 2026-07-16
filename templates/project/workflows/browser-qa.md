# Browser QA

Use this workflow for a new visual direction, material redesign, changed interaction flow, or public-site release. Do not use full Browser QA for copy-only, token-only, or isolated cosmetic changes. Source review, build output, `curl`, and social-preview images do not substitute for a real browser.

Use the installed official Playwright CLI as the primary tool. It runs from the terminal in both Codex and Claude Code and is lighter on tokens than browser MCP. MCP or a connected browser is one optional fallback, not the default.

## 1. Start a reproducible app

- Identify the real start command and local URL; do not invent one.
- Start the app in a production-like mode when practical.
- Read the recorded browser status in `CAPABILITIES.md`; do not rediscover browser tools on every iteration.
- For full capture, use `scripts/browser-qa.sh <url> <evidence-directory>`. For focused interaction work, reuse one named `playwright-cli` session instead of relaunching a browser per command.
- Do not use `npx` as a hidden fallback: it can download packages or browsers in the middle of a task.

## 2. Exercise the page

For a new visual direction, material redesign, or release, inspect the primary route at 1440 × 900 and 390 × 844. Check first viewport, responsive layout, primary CTA, navigation, relevant forms/dialogs, keyboard/focus behavior, overflow, broken assets, and console errors. Check reduced motion when the page contains meaningful animation.

For a changed interaction flow, inspect only the affected route, component, and states. Capture screenshots and create evidence only for a new visual direction, material redesign, or release. For a focused interaction check, report the route and result in the completion report.

## 3. Fail fast when browser setup is unavailable

Do not spend an open-ended number of turns diagnosing the browser. Make at most two attempts in an unchanged environment:

1. Run one Playwright CLI preflight and browser start. If it fails, record the concise error plus CLI/browser version in `CAPABILITIES.md`.
2. Try one already available fallback only: connected browser, in-app browser, or configured browser MCP/tool. Do not install, configure, or probe a third path without user approval.

If both attempts fail, set status to `blocked`. Do not retry on later prompts unless the user confirms an environment change, a tool is installed/repaired, or the task reaches an acceptance or release gate. Ask the user to choose one path: enable a browser, approve repair/installation, provide desktop/mobile screenshots, or continue as a provisional implementation.

Never silently replace browser review with source review. Do not accept a visual direction or call a site release-ready while Browser QA is blocked.

## 4. One-time setup

If Playwright CLI is `missing` or `setup-required`, request approval for:

```bash
npm install -g @playwright/cli@latest
playwright-cli install-browser chromium
```

After installation, run one smoke test: open a harmless URL with `--browser=chromium`, save a screenshot, then close the session. Record `available` only after it succeeds. In a Claude Code project, `playwright-cli install --skills` is optional and installs its command-reference skill into that project. Codex does not need it because this workflow names the CLI directly.

## 5. Report evidence

For a new visual direction, material redesign, or release, create or update the review file from `templates/visual-review-evidence.md`. Mark Browser QA as `verified` only when the running page was inspected at both viewports. Otherwise mark it `blocked`, link the two attempts, and state the user decision required to proceed.

For a focused interaction check, report only the affected route, state, runtime, and result in the completion report.
