# Security review workflow

1. Read the project matrix and identify assets, actors, trust boundaries, and sensitive operations.
2. Run the baseline checklist.
3. For authenticated apps, run the authenticated-app checklist.
4. Review input validation, authorization, secrets, sessions, uploads, webhooks, CORS, headers, dependencies, logging, and error handling.
5. Test denial cases and abuse paths, not only happy paths.
6. Classify findings by impact and exploitability.
7. Fix blockers and high-risk findings before release; record accepted residual risk explicitly.
