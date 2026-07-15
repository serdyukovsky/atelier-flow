# Visual component selection

Use this only when a website needs a component or visual effect beyond the chosen foundation. A library is not a visual direction.

## Foundation first

- Use shadcn/ui, Radix, Base UI, or native accessible primitives for controls, menus, dialogs, forms, and tabs.
- Use the shadcn MCP/registry only to find a specific compatible primitive or block; inspect the installed code and preserve the project design system.
- Keep one coherent component foundation. Do not import an entire visual library to obtain one button or card.

## Motion and effects

- Use Motion or native CSS for purposeful state transitions, layout changes, and entry feedback.
- Consider Magic UI, Aceternity, React Bits, or Motion Primitives only after the visual direction and first slice are approved.
- Add an effect only when it clarifies the product, interaction, or brand idea. Zero effects is a valid outcome.
- Set an **effect budget** of one primary effect and one supporting effect per page. Reuse them rather than adding unrelated visual tricks.
- Check mobile cost, keyboard behavior, reduced motion, bundle impact, and fallback before keeping an effect.

## Review risks

Treat these as prompts for review, not universal bans: generic bento grids, shimmer buttons, infinite marquees, orbiting icons, decorative gradients, fake browser windows, and 3D backgrounds. Keep one only when its relation to the product is concrete and the screenshot review confirms it improves the page.
