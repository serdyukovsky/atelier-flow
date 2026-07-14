# Telegram Mini App profile

Use for interfaces running inside Telegram WebView. Treat this as a mobile-first product profile, not a marketing-site profile.

- Design for narrow screens and touch first.
- Keep primary actions obvious and touch targets comfortable.
- Account for safe areas, WebView limitations, slow networks, and Telegram theme variables when the project uses them.
- Define loading, empty, error, offline, and retry states before implementation.
- Avoid heavy decorative motion; verify performance on a real narrow viewport.
- Verify back navigation, keyboard behavior, deep links, and viewport resizing when relevant.

Do not invent Telegram APIs. Inspect the project's SDK and official documentation before implementing platform behavior.
