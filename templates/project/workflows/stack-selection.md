# Stack selection workflow

Use before scaffolding a greenfield project or when the current stack no longer fits the product.

## 1. Inspect first

For an existing project, inspect `package.json`, lockfile, build scripts, deployment configuration, routes, and database/CMS setup. Preserve the current stack unless there is a documented reason to migrate.

## 2. Match the project

Choose the smallest compatible preset:

- `website-next` for an interactive or SEO-sensitive React website;
- `website-astro` for a mostly static content or marketing site with limited client interaction;
- `website-payload` for a Next website that needs editable content and an admin panel;
- `fullstack-next` for a product with users, data, and server-side business logic;
- `telegram-mini-app` or `max-mini-app` for the corresponding WebView platform.

## 3. Present the decision

Explain the recommended preset, why it fits, what it does not include, and one viable alternative. Ask the user to choose only when the trade-off materially affects architecture, cost, or capability. Otherwise use the recommended preset and state the assumption.

## 4. Record it

Write the selected preset and deviations in `PROJECT.md`. Record material alternatives and decisions in `docs/decisions/ADR-001-stack.md`.

## 5. Lock the boundary

Do not add a CMS, database, auth provider, animation library, or separate API merely because it is available. Revisit the preset only when a real requirement changes.
