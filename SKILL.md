---
name: personal-agent-template
description: Reusable development workflow for AI-assisted product work. Use when starting a project from this template, selecting a project profile, planning a feature, building a website page, reviewing code or UI, or deciding which agent role and workflow to use.
---

# Personal Agent Template

Use this skill as the operating system for a personal AI-assisted project. It separates a stable core workflow from project profiles such as `website`, `backend-api`, `cms-payload`, `telegram-mini-app`, and `max-mini-app`.

## First decision: select the mode

- **Quick**: tiny copy, style, or bug fix. Read only the nearby context, implement, run one relevant check if needed, report.
- **Standard**: normal feature or page. Brief, focused plan, implement, proportionate review, targeted verification.
- **Complex**: new product area, redesign, architecture, payments, auth, or multi-screen flow. Use independent planning, UX/architecture review, implementation, code review, browser review when relevant, fixes, and final verification.

Do not use the complex workflow by default. Choose the smallest mode that protects quality. Select checks from `workflows/verification-scope.md`; a full suite is for a release or a genuinely high-risk change, not ordinary iteration.

## Project intake

Before implementation, inspect the repository and read:

1. root `AGENTS.md` and `CLAUDE.md` if present;
2. `PROJECT.md` and relevant files in `docs/`;
3. the selected profile under `profiles/`;
4. the existing `package.json`, scripts, and test setup.

Run the capability gate described in `templates/project/workflows/bootstrap.md` for a new project, a changed stack, or a task that needs an unverified capability. Reuse the recorded capability status for ordinary iterations. If a `build-required` capability is missing, stop before coding and ask whether to install it, continue in a declared degraded mode, or stop. A missing `release-required` capability prevents a release-ready claim.

If the brief is missing, do not ask the user to complete a form. Infer a first brief from the natural-language request, collect only information that changes the result, and write the project context yourself. Ask no more than three questions in one round. If a detail is non-critical, make an explicit assumption and continue.

Never claim a missing skill, MCP server, browser, API, or dependency was used. Record capability status in `CAPABILITIES.md`. Use the active operating context in `PROJECT.md` and do not load unrelated optional modules by default.

For a new website, run `templates/project/workflows/visual-gate.md` and `templates/project/workflows/browser-qa.md`: establish a visual contract, produce a Design Read and directions, build one visual slice, inspect it in a real browser at desktop/mobile sizes, review it, and only then scale the direction. Prefer the installed Playwright CLI + Chromium for browser QA. Full creative freedom lets the agent choose; it never waives the visual checkpoint. A failed browser attempt gets one fallback, then a recorded blocker and explicit user decision; source review never substitutes for browser evidence.

For a public website, also classify SEO scope: `none`, `basic launch`, or `growth/content`. Use the SEO profile and workflow when search visibility, share previews, indexing, structured data, or Core Web Vitals matter.

For every project, classify backend, database, authentication, and security level before adding infrastructure. Use `security-baseline` by default; add `authenticated-app`, `sensitive-data`, or `payments` only when the project needs them.

For greenfield projects, select one preset from `templates/project/stack-presets/` before scaffolding. For existing projects, preserve the current stack unless a migration is explicitly approved.

## Role protocol

Roles are checkpoints, not a requirement to launch separate agents every time. Every separate agent starts cold and re-derives context you already have, so the default is one context and sequential passes:

- **Planner**: scope, constraints, acceptance criteria, affected files, risks.
- **UX/Design reviewer**: hierarchy, user flow, visual language, accessibility, anti-slop risks.
- **Implementer**: code only against the approved plan and design system.
- **Code reviewer**: correctness, architecture, types, security, maintainability.
- **Browser reviewer**: real desktop/mobile behavior, console errors, interaction and visual issues.
- **Fixer**: address findings without silently expanding scope.

When a decision is genuinely contested, write alternatives, trade-offs, and a recommendation before asking the user to choose. Do not create debate for a trivial decision.

## Backend and security rules

- Treat authorization as a server-side boundary, never as a frontend visibility rule.
- Validate untrusted input at every external boundary and encode output for its context.
- Do not add a CMS, database, auth provider, queue, or external API until the project matrix says it is needed.
- Never claim a security review is complete from a checklist alone; report what was and was not tested.
- For authenticated or sensitive projects, run the relevant security workflow before release.

## Website rules

When `profiles/website/` is selected:

- use the available UI/UX design skill and built-in anti-slop guidance; use `taste-skill` as a recommended independent visual critic for important marketing pages when it is available;
- treat paper aesthetics as prohibited unless the user directly overrides that rule; never infer permission from a vague editorial reference;
- use component/effect libraries selectively according to `profiles/website/visual-components.md`; a library is not a visual direction;
- use the SEO profile when the site is public or intended to acquire visitors from search;
- create or update `design-system/MASTER.md` before building a new page;
- use one coherent component foundation; do not mix visual libraries casually;
- use shadcn/Base UI/Radix for functional primitives when compatible with the project;
- use one visual effects library selectively, not everywhere;
- inspect the affected page in a browser when a change affects visible UI or interaction; use full desktop/mobile review for a material visual direction or release;
- verify only the states affected by the change; run the full loading, empty, error, focus, contrast, reduced-motion, and overflow pass for material UI work or release;
- never invent metrics, testimonials, logos, or product screenshots without labeling them as examples.

## Definition of done

A task is not complete when code merely compiles. Report:

- what changed;
- which checks were run and their result;
- which assumptions were made;
- remaining risks or user decisions;
- files worth reviewing.

If browser or test verification was impossible, state that explicitly.

Update `VERIFICATION.md` when the stack or its commands change. Add to `workflow-log.md` only for a material decision, capability issue, degraded mode, failed check, review finding, or release. Keep visual evidence in `docs/reviews/` for a material website direction. Derive verification commands from the repository; never invent a passing check.

## Included project skeleton

The reusable files are in `templates/project/`. When this source repository is open, create a separate project with `scripts/new-project.sh`; never build product code in the template source itself. Workflow details are in `templates/project/workflows/`.
