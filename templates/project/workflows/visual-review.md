# Visual and UX review

Review the running application, not only the source code.

For a material visual direction, create or update an evidence file in `docs/reviews/` from `templates/visual-review-evidence.md`. Capture desktop and narrow-mobile screenshots before returning findings.

## Check

- desktop, tablet, and narrow mobile layouts;
- first viewport and primary CTA;
- navigation, forms, dialogs, hover, focus, loading, empty, and error states;
- typography wrapping and overflow;
- contrast and visible focus;
- reduced-motion behavior;
- console errors and broken assets;
- repetition of layout, cards, labels, colors, and icon families;
- consistency with `design-system/MASTER.md`.
- whether the page accidentally reads as paper/cream/printed/handmade styling without a direct user override;
- whether each visual effect earns its place and stays within the effect budget;
- generic AI patterns that weaken the specific product story.

If `taste-skill` is available, run it as a separate visual critic and record its findings. Return findings grouped by severity. Do not fix them in the review pass unless explicitly asked.
