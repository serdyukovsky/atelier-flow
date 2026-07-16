# Website profile

Use for marketing sites, product sites, landing pages, portfolios, and editorial pages. It is not the default profile for dashboards or complex in-product flows.

## Required sequence

For a new site, follow this order:

```text
content and IA → SEO intent → visual direction → design system → assets → implementation → browser QA → accessibility/performance → SEO → release review
```

Do not jump directly from a vague brief to JSX unless the user explicitly asks for a throwaway draft.

## Design process

Use the available UI/UX design skill as the broad foundation and the built-in anti-slop guidance as a visual specialist. For an important marketing page, use `taste-skill` as an independent visual critic when available; it is recommended, not a blocking dependency. Adapt rules to the brief; do not apply aesthetic bans mechanically.

Paper aesthetics are prohibited unless the user directly overrides that rule. This includes warm cream or beige paper surfaces, paper texture or grain, torn/printed-paper treatment, faux editorial print, and handmade/analog material styling. A vague editorial reference is not an override.

Before a new page, establish or update `design-system/MASTER.md` with:

- audience and page job;
- Design Read;
- visual direction and three dials;
- typography, colors, shape, spacing, icons, motion;
- real assets and content assumptions;
- responsive behavior and accessibility requirements.

For a new visual system or material redesign, run `workflows/visual-gate.md` and `workflows/browser-qa.md`. Full creative freedom lets the agent choose a direction but does not permit it to expand that direction across the site before real-browser, screenshot-backed review. Use Playwright CLI + Chromium first. A failed attempt gets one fallback and then a recorded blocker; it is not permission to skip QA or repeatedly diagnose the same environment.

## Frontend foundation

Prefer the project's existing stack. For a new compatible React project, prefer TypeScript, Tailwind, shadcn/ui, and accessible primitives such as Radix or Base UI. Use Motion for purposeful animation. Read `visual-components.md` before adding Magic UI, Aceternity, React Bits, Motion Primitives, or another visual library.

Never mix several visual systems casually. Check `package.json` before importing a dependency.

## Content and assets

Read `content-and-ia.md` and `assets.md` before implementing a new page. Do not invent testimonials, customer logos, precise metrics, product screenshots, or claims. Use provided assets, clearly marked placeholders, or generated assets when appropriate. Avoid fake dashboard rectangles when a real screenshot or real component preview is possible.

## Quality bar

The page must have a clear first viewport, readable hierarchy, coherent tokens, mobile behavior, visible states, accessible controls, and passed Browser QA before completion. A material visual direction also needs desktop/mobile screenshot evidence and a separate UX/anti-slop review in `docs/reviews/`.

Read `accessibility-performance.md` before release and distinguish checks that were verified from checks that were not run.

## SEO

For a public site, classify the project as `basic launch` or `growth-content` in `PROJECT.md`.

For `basic launch`, verify before release:

- unique, useful title and meta description for every indexable page;
- one clear H1 and logical heading hierarchy;
- canonical URL, robots directives, XML sitemap, and robots.txt;
- semantic links, descriptive alt text, and readable content;
- Open Graph and social preview metadata;
- JSON-LD only where it describes visible, truthful content;
- HTTPS, mobile rendering, performance, and Core Web Vitals risks;
- no accidental noindex, broken links, duplicate routes, or placeholder copy.

For `growth-content`, also plan search intent, topic coverage, internal links, author/entity trust signals, content quality, and a measurement baseline. Never promise rankings or invent keyword volume without data.

If installed, use the open-source Codex-native `codex-seo` suite for audits and specialist workflows. It is optional: the basic launch checklist must still work without DataForSEO, Google, Firecrawl, or Gemini credentials.
