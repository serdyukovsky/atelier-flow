# Stack preset: telegram-mini-app

## Use when

Use for a Telegram Mini App that runs primarily in a mobile WebView.

## Recommended foundation

- React
- Vite
- TypeScript
- Tailwind CSS
- a small accessible component foundation compatible with the project
- Playwright for narrow-viewport flows
- a server/API layer only when the app has trusted business logic or persistent data

Read the Telegram profile and current official platform documentation before using platform APIs. Treat Telegram-provided identity data as an input that must be verified server-side.

## Do not add by default

Do not add Payload, a full marketing-site animation stack, or a separate database for a UI-only Mini App.

## Alternative

Offer `fullstack-next` or `backend-api` when the Mini App has accounts, payments, user-owned data, or non-trivial server logic.
