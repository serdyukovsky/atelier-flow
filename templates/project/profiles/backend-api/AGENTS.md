# Backend API profile

Use for server actions, route handlers, REST APIs, GraphQL APIs, webhooks, or a separate backend.

## Before implementation

- Define the API boundary, caller, trust level, resource ownership, and failure behavior.
- Decide whether the operation is public, authenticated, admin-only, or service-to-service.
- Define input/output schemas, pagination, idempotency, rate limits, and error shape.
- Decide where business rules live. Keep domain rules out of controllers and UI components.

## Implementation

- Validate all external input with the project's schema library.
- Enforce authorization on the server and scope database queries to the current principal.
- Use parameterized queries or a safe ORM API.
- Make webhook and retry behavior idempotent.
- Do not return fields merely because they exist in the database.
- Keep secrets and provider credentials in environment/configuration management.

## Review

Test happy path, invalid input, unauthenticated access, unauthorized access, missing resources, duplicate requests, rate-limit behavior, and provider failures.
