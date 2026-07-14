# Stack preset: website-payload

## Use when

Use for a public Next.js website with editable pages, articles, media, drafts, preview, publishing, or a small editorial/admin workflow.

## Recommended foundation

- Next.js
- TypeScript
- Tailwind CSS
- shadcn/ui with Radix UI or Base UI primitives
- Payload CMS
- PostgreSQL by default unless the project has a reason for another supported adapter
- Playwright
- Vitest or the project's compatible test runner

Read the `cms-payload` profile before creating collections. Treat CMS access control, migrations, uploads, backups, and draft/public separation as release requirements.

## Do not add by default

Do not add a separate API, custom auth provider, e-commerce modules, or external search service unless the content model or product requirements need them.

## Alternative

Offer `website-next` when content is managed in code or a hosted service is already selected.
