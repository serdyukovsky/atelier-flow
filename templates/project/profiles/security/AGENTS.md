# Security profile

Use `security-baseline` for every project. Escalate to `authenticated-app` for login, roles, private data, or user-owned resources; use `sensitive-data` for personal, financial, health, or legally regulated data; use `payments` for billing or money movement.

Use OWASP Top 10 as awareness guidance and OWASP ASVS as a verification reference. Do not treat either as a substitute for threat modeling, provider documentation, penetration testing, or professional review when risk requires it.

Security findings must include evidence, impact, affected boundary, recommended fix, and verification method. Never invent a pass result because a control was not tested.
