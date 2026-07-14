# Stack preset: max-mini-app

## Use when

Use for a MAX Mini App running primarily in a mobile WebView.

## Recommended foundation

- React
- Vite
- TypeScript
- Tailwind CSS
- a small accessible component foundation compatible with the project
- Playwright for narrow-viewport flows
- a server/API layer only when trusted business logic or persistent data is required

Read the MAX profile and current official platform documentation before using platform APIs. Verify platform identity and sensitive actions on the server.

## Do not add by default

Do not add Payload, heavy marketing-site animation, or a database for a UI-only Mini App.

## Alternative

Offer `fullstack-next` or `backend-api` when the app has accounts, payments, user-owned data, or non-trivial server logic.
