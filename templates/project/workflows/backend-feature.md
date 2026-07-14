# Backend feature workflow

1. Select `backend-api` and the applicable security level.
2. Define caller, trust boundary, resource ownership, input/output schemas, failure states, idempotency, and acceptance criteria.
3. Review the API design before implementation when permissions or data exposure are non-trivial.
4. Implement the smallest server-side slice.
5. Add success and denial-case tests.
6. Run code review and security review.
7. Verify the real endpoint or user flow and report any untested provider behavior.
