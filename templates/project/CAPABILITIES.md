# Capabilities

This file is maintained by the agent. It records what the current environment can actually use. A capability is not available merely because it is mentioned in a profile.

## Policy

- `build-required` missing: stop before implementation and ask whether to install, continue in degraded mode, or stop.
- `release-required` missing: do not call the affected work release-ready; ask before bypassing it.
- `recommended` missing: ask if it materially affects quality; otherwise continue and record the limitation.
- `optional` missing: continue unless the user requests it.
- Installing external code, packages, MCP servers, browsers, or API integrations requires user confirmation.
- Never claim a capability was used when it was unavailable.

## Project capability status

| Capability | Kind | Required for current workflow? | Status | Evidence / limitation |
|---|---|---:|---|---|
| UI/UX design skill | skill | recommended for website | unknown |  |
| Built-in anti-slop visual guidance | project instructions | build-required for website | available | Website profile and UX review |
| taste-skill (visual critic) | skill | recommended for important marketing pages | unknown |  |
| Browser automation and screenshot capture | MCP/tool | build-required for visual-gate acceptance; release-required for public-site visual sign-off | unknown | runtime, attempts, screenshots, or blocker |
| shadcn registry / MCP | MCP/tool | optional | unknown |  |
| Motion or selected effect library | package | optional | unknown |  |
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

Record the user's decision when a build-required or release-required capability needs a decision:

```text
Date:
Capability:
Decision: install / continue degraded / stop
Reason:
```
