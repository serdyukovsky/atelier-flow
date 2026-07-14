# Payload CMS profile

Use when the project needs an editable content model, admin panel, drafts, publishing, media, or Payload-managed authentication. Do not add Payload to a simple static landing page without a content-management requirement.

## Architecture

- Prefer Payload as the CMS/content boundary. Keep product-specific domain logic in explicit server modules.
- Confirm the database adapter and migration strategy before creating collections.
- Use the official Next.js integration when the project is Next-based; inspect the installed Payload version and docs before coding.
- Define which collections and fields are public, authenticated, editor-only, or admin-only.
- Enable drafts, versions, autosave, or scheduled publishing only when the editorial workflow needs them.

## Security-critical Payload rules

- Every collection and global must have explicit access rules.
- Do not assume hiding fields in the admin UI protects data.
- Treat Local API calls carefully: they can bypass access control by default. When user permissions must apply, pass the user context and set `overrideAccess: false`.
- Do not expose admin routes, secrets, or privileged Local API calls through public handlers.
- Validate uploads, MIME types, size limits, filenames, and image processing behavior.
- Review hooks for authorization, SSRF, unsafe fetches, secret leakage, and unbounded work.
- Test draft/public separation and role boundaries.

## Content quality

Use truthful structured data, canonical URLs, preview metadata, alt text, and editorial ownership. CMS fields should support the website's SEO and accessibility requirements rather than becoming an unstructured content dump.
