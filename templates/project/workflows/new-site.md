# New website workflow

Use for a new public website or a substantial marketing-site redesign.

## 1. Brief and scope

Read `PROJECT.md` if it exists. If it does not, infer the brief from the user's prompt, ask only questions that change the result, and create `PROJECT.md` yourself. Select `website`, classify SEO, backend, CMS, and security scope, and choose `website-next`, `website-astro`, or `website-payload`.

Record the selected stack preset before scaffolding. Do not choose individual dependencies ad hoc. The user only needs to approve a materially consequential choice; they do not need to edit project files.

## 2. Content and information architecture

Create a page inventory and outline each page's job, audience, primary action, objections, evidence, and mobile behavior. Resolve missing claims and assets before treating copy as final.

## 3. SEO intent

For public sites, define indexable pages, search intent, canonical domain, language/location scope, social previews, and measurement baseline. Use `seo-launch.md` for implementation checks.

## 4. Visual direction and gate

Run `visual-gate.md`. Produce a Design Read and two or three directions. Use references as principles, not as instructions to copy a site. The paper aesthetic is prohibited unless the user directly overrides that rule. Full creative freedom lets the agent choose, but still requires screenshot-backed review before the direction scales.

## 5. Design system and assets

Write `design-system/MASTER.md` and an asset inventory. Lock typography, colors, shape, spacing, icon family, motion, responsive behavior, and content assumptions before building repeated components.

## 6. Implementation

After the visual gate passes, build the first page or section as a quality slice. Reuse the chosen foundation, keep dependencies deliberate, and use real or clearly marked assets.

## 7. Review loop

Run visual review, accessibility/performance review, and SEO launch review. Fix findings in a separate pass. Re-render desktop and mobile after fixes.

## 8. Release

Run `pre-release-review.md`. Report verified, not verified, and not applicable checks, plus remaining asset, content, analytics, or deployment risks.
