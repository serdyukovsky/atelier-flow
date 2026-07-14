---
name: personal-agent-template
description: Reusable development workflow for AI-assisted product work. Use when starting a project from this template, selecting a project profile, planning a feature, building a website page, reviewing code or UI, or deciding which agent role and workflow to use.
---

# Personal Agent Template

Use this skill as the operating system for a personal AI-assisted project. It separates a stable core workflow from project profiles such as `website`, `backend-api`, `cms-payload`, `telegram-mini-app`, and `max-mini-app`.

## First decision: select the mode

- **Quick**: tiny copy, style, or bug fix. Implement, test, report.
- **Standard**: normal feature or page. Brief, plan, implement, review, fix, verify.
- **Complex**: new product area, redesign, architecture, payments, auth, or multi-screen flow. Use independent planning, UX/architecture review, implementation, code review, browser review, fixes, and final verification.

Do not use the complex workflow by default. Choose the smallest mode that protects quality.

## Project intake

Before implementation, inspect the repository and read:

1. root `AGENTS.md` and `CLAUDE.md` if present;
2. `PROJECT.md` and relevant files in `docs/`;
3. the selected profile under `profiles/`;
4. the existing `package.json`, scripts, and test setup.

Before any non-trivial implementation, run the capability gate described in `templates/project/workflows/bootstrap.md`. If a capability marked `required` is missing, stop before coding and ask whether to install it, continue in a declared degraded mode, or stop.

If the brief is missing, do not ask the user to complete a form. Infer a first brief from the natural-language request, collect only information that changes the result, and write the project context yourself. Ask no more than three questions in one round. If a detail is non-critical, make an explicit assumption and continue.

Never claim a missing skill, MCP server, browser, API, or dependency was used. Record capability status in `CAPABILITIES.md`. Use the active operating context in `PROJECT.md` and do not load unrelated optional modules by default.

For a new website, first produce a one-line **Design Read**, two or three visual directions, and a proposed design-system map. Do not code the page before the user selects a direction unless the user explicitly asks for a fast draft.

For a public website, also classify SEO scope: `none`, `basic launch`, or `growth/content`. Use the SEO profile and workflow when search visibility, share previews, indexing, structured data, or Core Web Vitals matter.

For every project, classify backend, database, authentication, and security level before adding infrastructure. Use `security-baseline` by default; add `authenticated-app`, `sensitive-data`, or `payments` only when the project needs them.

For greenfield projects, select one preset from `templates/project/stack-presets/` before scaffolding. For existing projects, preserve the current stack unless a migration is explicitly approved.

## Role protocol

Roles are checkpoints, not a requirement to launch separate agents every time:

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

- use the available UI/UX design skill and built-in anti-slop guidance; use `taste-skill` only as an optional independent visual pass;
- use the SEO profile when the site is public or intended to acquire visitors from search;
- create or update `design-system/MASTER.md` before building a new page;
- use one coherent component foundation; do not mix visual libraries casually;
- use shadcn/Base UI/Radix for functional primitives when compatible with the project;
- use one visual effects library selectively, not everywhere;
- inspect the real page in a browser at desktop and mobile sizes;
- verify loading, empty, error, focus, contrast, reduced-motion, and overflow states;
- never invent metrics, testimonials, logos, or product screenshots without labeling them as examples.

## Definition of done

A task is not complete when code merely compiles. Report:

- what changed;
- which checks were run and their result;
- which assumptions were made;
- remaining risks or user decisions;
- files worth reviewing.

If browser or test verification was impossible, state that explicitly.

For standard and complex tasks, keep `workflow-log.md` and `VERIFICATION.md` truthful and current. Derive verification commands from the repository; never invent a passing check.

## Included project skeleton

The reusable files are in `templates/project/`. Copy that directory into a new project, then select one profile and remove profiles you do not need. Workflow details are in `templates/project/workflows/`.
