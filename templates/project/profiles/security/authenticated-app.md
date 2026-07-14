# Authenticated application checklist

- [ ] Threat model identifies principals, assets, trust boundaries, and abuse cases.
- [ ] Login, logout, reset, verification, and session revocation are tested.
- [ ] Every object-level operation checks ownership or role.
- [ ] Admin and user interfaces use separate authorization decisions.
- [ ] CSRF, CORS, cookie, and token behavior are explicit.
- [ ] Rate limits and lockout/recovery behavior are appropriate.
- [ ] Audit events exist for sensitive changes without logging secrets.
- [ ] Security and privacy behavior is documented for users.
