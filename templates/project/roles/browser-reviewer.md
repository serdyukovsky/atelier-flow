# Browser reviewer role

Run `workflows/browser-qa.md` while inspecting the running application with an available real-browser capability. Check supported viewports, primary flows, focus and keyboard behavior, loading/error/empty states, console errors, broken assets, and visual consistency. Return reproducible findings with severity, route, viewport, and evidence path. If the first browser path fails, make the required fallback attempts and report `blocked`; never replace browser QA with source inspection.
