# Payload review checklist

- [ ] Payload version and adapter match the project runtime.
- [ ] Collections/globals have explicit access functions.
- [ ] Public reads expose only intended fields.
- [ ] Local API calls do not unintentionally bypass access control.
- [ ] Drafts cannot leak into public responses.
- [ ] Upload limits and file validation are configured.
- [ ] Hooks do not perform unsafe network calls or unbounded work.
- [ ] Migrations are committed and tested against a safe database.
- [ ] Admin authentication, password reset, and session behavior are tested.
- [ ] Backups and restore procedure are documented.
