# Stack preset: website-astro

## Use when

Use for a mostly static marketing, editorial, portfolio, or documentation site where content delivery and minimal client JavaScript are priorities.

## Recommended foundation

- Astro
- TypeScript
- Tailwind CSS or scoped CSS
- native HTML and accessible primitives
- Playwright for browser checks

Use React, Vue, or Svelte islands only for interactions that need them. Keep the default page mostly server-rendered/static.

## Do not add by default

Do not add a full React application, global client state, a CMS, or heavy animation libraries unless the page requirements justify them.

## Alternative

Offer `website-next` when the site needs substantial React interactivity, an integrated application surface, or a Payload-based CMS.
