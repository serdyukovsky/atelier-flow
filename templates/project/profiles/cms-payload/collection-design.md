# Payload collection design

Before creating a collection, document:

- purpose and owner;
- public URL or API exposure;
- fields and validation;
- relationship cardinality;
- drafts and versions;
- roles allowed to create, read, update, and delete;
- upload constraints;
- indexing and query patterns;
- SEO fields and canonical behavior;
- migration and rollback impact.

Prefer explicit, small collections over one generic JSON blob. Do not add a field only because it may be useful later.
