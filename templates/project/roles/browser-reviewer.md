# Browser reviewer role

Run `workflows/browser-qa.md` using Playwright CLI + Chromium first. Check supported viewports, primary flows, focus and keyboard behavior, loading/error/empty states, console errors, broken assets, and visual consistency. Return reproducible findings with severity, route, viewport, and evidence path. If the primary tool fails, make one fallback attempt and report `blocked`; never replace browser QA with source inspection or repeat diagnosis in an unchanged environment.
