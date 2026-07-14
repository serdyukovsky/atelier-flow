# SEO launch workflow

Use this for a public website before the first release or a substantial redesign.

## 1. Define the SEO scope

Read `PROJECT.md` and identify whether the project is `none`, `basic launch`, or `growth-content`. Ask for the primary audience, locations/languages, canonical domain, and important pages only when missing.

## 2. Audit the implementation

Inspect routes, rendered HTML, metadata, headings, links, images, structured data, robots.txt, sitemap, redirects, canonical URLs, social previews, mobile behavior, and performance. Prefer rendered-page evidence over assumptions.

## 3. Use specialist tooling when available

If Codex SEO is installed, route to the smallest relevant workflow:

- `/seo technical <url>` for crawlability and indexability;
- `/seo page <url>` for a page-level audit;
- `/seo schema <url>` for JSON-LD;
- `/seo performance <url>` for Core Web Vitals and performance;
- `/seo visual <url>` for mobile and above-the-fold checks;
- `/seo audit <url>` only for a full-site audit;
- `/seo google ...` or `/seo dataforseo ...` only when credentials are configured.

Do not install the full suite or optional API extensions for a one-page personal site without a clear need.

## 4. Produce an action plan

Group findings as:

- **Blocker**: prevents crawling, indexing, or correct page identity;
- **High**: materially harms discoverability, trust, sharing, or performance;
- **Medium**: improves clarity, structure, or maintainability;
- **Optional**: growth experiments or content opportunities.

Each finding must include evidence, the proposed fix, affected URL/file, and a way to verify it.

## 5. Fix and verify

Implement approved fixes, rerun relevant checks, render the pages, and confirm that SEO metadata describes visible truthful content. Do not treat an SEO score as a ranking guarantee.
