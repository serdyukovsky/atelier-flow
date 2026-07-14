# Security baseline checklist

## Secrets and configuration

- [ ] No secrets, tokens, service keys, or production URLs are committed.
- [ ] `.env.example` contains names only.
- [ ] Production debug and verbose error output are disabled.
- [ ] Logs do not contain credentials or unnecessary personal data.

## Boundaries and input

- [ ] External input is validated and bounded.
- [ ] Output is encoded for HTML, URL, SQL, shell, and JSON contexts as applicable.
- [ ] File uploads have size, type, name, and storage controls.
- [ ] Webhooks validate authenticity and are idempotent.

## Authentication and authorization

- [ ] Protected operations enforce authorization on the server.
- [ ] Object ownership and role boundaries are tested.
- [ ] Cookies use appropriate Secure, HttpOnly, and SameSite settings.
- [ ] Password reset, session expiry, and account recovery are considered.

## Runtime and supply chain

- [ ] Dependencies and install scripts were reviewed.
- [ ] CORS, security headers, and allowed origins are explicit.
- [ ] Sensitive operations have rate limits or abuse controls.
- [ ] Backups, migrations, and recovery steps are documented when data exists.
