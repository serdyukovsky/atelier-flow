# API review checklist

- [ ] Every route has an explicit auth classification.
- [ ] Input schemas reject unknown or unsafe shapes where appropriate.
- [ ] Authorization checks resource ownership and role, not only login status.
- [ ] Database queries are scoped and parameterized.
- [ ] Sensitive fields are excluded from responses and logs.
- [ ] Errors have stable public codes and safe messages.
- [ ] Retries and webhooks are idempotent.
- [ ] Rate limits and abuse controls are defined for sensitive operations.
- [ ] Tests cover denial cases, not only successful requests.
- [ ] OpenAPI or equivalent API documentation is updated when applicable.
