# Atelier Flow source repository

This repository is the **source of the template**, not a product workspace. Never create `app/`, `src/`, `package.json`, product assets, or generated application code here.

When the user opens this repository and asks to start a product:

1. Derive a short project slug from the brief.
2. Create a separate sibling project directory and copy only `templates/project/` into it with `scripts/new-project.sh`.
3. Tell the user the destination, then continue work there.

Do not ask the user to copy files or fill forms. Ask one blocking question only if a safe destination cannot be inferred. Keep this repository clean so later projects do not inherit duplicate template files.
