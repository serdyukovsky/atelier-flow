# Stack preset: fullstack-next

## Use when

Use for a product with authenticated users, persistent application data, server-side business rules, background work, or private user-owned resources.

## Recommended foundation

- Next.js and TypeScript for the web application;
- PostgreSQL for relational product data unless requirements say otherwise;
- a typed database layer such as Drizzle or Prisma, chosen after checking project constraints;
- Zod or the project's schema-validation standard;
- an explicit authentication provider or implementation;
- Playwright for user flows;
- Vitest or the project's compatible test runner;
- the security `authenticated-app` profile.

## Architecture rule

Keep domain rules in server-side modules. Keep CMS concerns separate from transactional product data. Define ownership, roles, API boundaries, failure states, idempotency, migrations, backups, and observability before implementation.

## Do not add by default

Do not add Payload, a separate microservice, queues, Redis, or event sourcing unless a concrete requirement justifies the operational cost.

## Alternative

Offer `website-payload` when the primary requirement is editorial content rather than application behavior.
