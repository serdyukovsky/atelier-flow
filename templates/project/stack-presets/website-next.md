# Stack preset: website-next

## Use when

Use for a new public website that needs strong React compatibility, SEO, interactive sections, future product growth, or server-rendered content.

## Recommended foundation

- Next.js
- TypeScript
- Tailwind CSS
- shadcn/ui
- Radix UI or Base UI for accessible primitives
- Motion for purposeful animation
- Playwright for browser and visual checks
- Vitest or the project's compatible unit-test runner

## Optional additions

- `codex-seo` for SEO audits;
- one visual component registry such as Magic UI or Aceternity, selectively;
- Payload only if editable content is a real requirement;
- PostgreSQL only when server data or CMS content needs persistence.

## Do not add by default

Do not add Payload, a separate API, authentication, a second component library, GSAP, or a database to a simple marketing site without a concrete requirement.

## Alternative

Offer `website-astro` when the site is mostly static and has little client-side interaction.
