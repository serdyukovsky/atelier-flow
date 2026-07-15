# Browser QA

Use this workflow for a new visual direction, material redesign, a changed interaction flow, or before calling a public site release-ready. Do not use the full workflow for copy-only, token-only, or isolated cosmetic changes. Inspect the running application in a **real browser**. A source-code review, static HTML inspection, build result, `curl`, or generated social-preview image is not a substitute.

## 1. Start a reproducible app

- Identify the real start command and local URL from the repository; do not invent one.
- Start the app in a production-like mode when practical, then open the actual route.
- Check the browser capability in `CAPABILITIES.md` before the run.

## 2. Exercise the page

For a new visual direction, material redesign, or release, inspect the primary route at:

- desktop: 1440 × 900;
- narrow mobile: 390 × 844.

For a changed interaction flow, inspect only the affected route, component, and states. For full Browser QA, check the first viewport, responsive layout, primary CTA, navigation, forms or dialogs, keyboard/focus behavior, loading/error/empty states, overflow, broken assets, and browser console errors. Check reduced motion when the page contains meaningful animation.

Capture screenshots and create evidence only for a new visual direction, material redesign, or release. For a focused interaction check, record the route and result in the completion report.

## 3. Persist when the first browser path fails

An unavailable first browser tool is not a completed QA attempt. Without exposing secrets, do all of the following before declaring browser QA blocked:

1. Record the exact failed runtime or connection and its error in `CAPABILITIES.md` and `workflow-log.md`.
2. Try another already available compatible route: a connected browser, in-app browser, browser MCP/tool, or an installed local browser test runtime.
3. If the runtime is missing rather than merely failing, ask permission to install or configure a compatible browser QA capability. Do not install it silently.
4. If no browser can be made available, ask the user to choose one explicit path:
   - enable or connect a browser capability;
   - approve installation/configuration of browser QA;
   - open the supplied local/preview URL and provide desktop and mobile screenshots;
   - continue as a **provisional implementation only**.

Never silently replace real browser review with source review. Do not expand a new visual direction beyond its visual slice, mark it accepted, or call the site release-ready while Browser QA is blocked. A user may authorize provisional implementation, but that does not turn the missing check into verified evidence.

## 4. Report evidence

For a new visual direction, material redesign, or release, create or update the review file from `templates/visual-review-evidence.md`. Mark Browser QA as `verified` only when the running page was inspected at both viewports. Otherwise mark it `blocked`, link the recorded attempts, and state the user decision required to proceed.

For a focused interaction check, report only the affected route, state, runtime, and result in the completion report. Do not create screenshots or a review file unless the change escalates to a material visual direction or release.
