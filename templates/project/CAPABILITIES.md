# Capabilities

This file is maintained by the agent. It records what the current environment can actually use. A capability is not available merely because it is mentioned in a profile.

## Policy

- `required` missing: stop before implementation and ask whether to install, continue in degraded mode, or stop.
- `recommended` missing: ask if it materially affects quality; otherwise continue and record the limitation.
- `optional` missing: continue unless the user requests it.
- Installing external code, packages, MCP servers, browsers, or API integrations requires user confirmation.
- Never claim a capability was used when it was unavailable.

## Project capability status

| Capability | Kind | Required for current workflow? | Status | Evidence / limitation |
|---|---|---:|---|---|
| UI/UX design skill | skill |  | unknown |  |
| Built-in anti-slop visual guidance | project instructions |  | available | Website profile and UX review |
| taste-skill (optional visual specialist) | skill |  | unknown |  |
| Browser automation | MCP/tool |  | unknown |  |
| Image generation | tool |  | unknown |  |
| SEO audit suite | skill/tool |  | unknown |  |
| Figma MCP | MCP/tool |  | unknown |  |

## Project dependencies

| Dependency | Required? | Status | Evidence |
|---|---:|---|---|
| Node/package manager | yes | unknown |  |
| Selected framework | yes | unknown |  |
| Selected UI foundation |  | unknown |  |

## Installation decisions

Record the user's decision when a required capability is missing:

```text
Date:
Capability:
Decision: install / continue degraded / stop
Reason:
```
