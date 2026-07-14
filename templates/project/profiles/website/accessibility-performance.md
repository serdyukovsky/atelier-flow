# Accessibility and performance review

Run against the running site at desktop and narrow mobile sizes.

## Accessibility

- [ ] Keyboard navigation reaches every interactive control in a logical order.
- [ ] Focus is visible and not hidden behind sticky UI.
- [ ] Buttons, links, inputs, dialogs, and navigation have accessible names.
- [ ] Heading hierarchy reflects content structure.
- [ ] Text and controls have sufficient contrast.
- [ ] Forms have labels, useful errors, and no placeholder-only labels.
- [ ] Images have correct `alt` behavior.
- [ ] Motion has a `prefers-reduced-motion` path.
- [ ] Touch targets and spacing work on narrow screens.

## Performance

- [ ] The first viewport does not wait on unnecessary client JavaScript.
- [ ] Images and fonts are sized, optimized, and loaded deliberately.
- [ ] No layout shift is caused by media, fonts, or late UI injection.
- [ ] Animation does not block interaction or hijack scrolling.
- [ ] Console has no runtime errors or failed critical requests.
- [ ] Production build and representative mobile render were checked.

Report `verified`, `not verified`, and `not applicable` separately. A checklist is not a substitute for measuring a deployed site when real performance matters.
