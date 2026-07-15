# Complex feature

Use for a new product area, redesign, architecture change, authentication, payments, or multi-screen flow.

1. Planner: produce a brief, acceptance criteria, risks, and affected areas.
2. UX/Design reviewer: challenge the flow, hierarchy, and accessibility.
3. Architecture reviewer: challenge data flow, boundaries, dependencies, and failure modes.
4. User decision: present material alternatives and record the chosen direction.
5. Implementer: build in small, reviewable slices.
6. Code reviewer: inspect the implementation independently.
7. Browser/QA reviewer: test affected real user flows and viewports when UI is in scope.
8. Fixer: address findings and rerun failed checks.
9. Final verification: compare the result against the brief and acceptance criteria; run a full suite only for a release or when the risk scope requires it.

Store material decisions as `docs/decisions/ADR-###-short-name.md`.
