# Visual gate

Use for a new public website, a material redesign, or a new visual system. This gate protects visual quality before the agent scales a direction across many pages.

## 1. Establish the visual contract

Record in `PROJECT.md` and `design-system/MASTER.md`:

- page job, audience, desired impression, and useful reference principles;
- paper aesthetic rule: **prohibited by default**;
- any explicit user override of the paper rule;
- visual autonomy: user selects / agent proposes / agent chooses after checkpoint.

Paper means warm cream or beige paper surfaces, paper grain or texture, torn/printed paper treatment, faux editorial print, and handmade/analog material styling. Never infer permission for it from a vague “editorial” reference. Only a direct user override allows it.

## 2. Choose a direction

Propose two or three materially different directions, or select one when the user delegated visual choice. Record why the chosen direction fits the product and why it does not violate the visual contract.

Full creative freedom lets the agent choose a direction; it does **not** waive the visual checkpoint below.

## 3. Build one visual slice

Build only the first viewport and one representative product/content section. Do not scale a new visual system across the whole site yet.

Select the component foundation and any effect using `profiles/website/visual-components.md`. Record the effect budget in the design system.

## 4. Capture proof

Run the page and capture the real slice at desktop and narrow mobile viewports. Create an evidence file from `templates/visual-review-evidence.md` in `docs/reviews/`.

If browser or screenshot capture is unavailable, report that visual proof is blocked. Do not mark the direction as accepted or silently expand it across the site. Ask whether to enable a browser, continue as a provisional draft, or stop the visual task.

## 5. Review independently

Run an independent UX/anti-slop review. If `taste-skill` is available, use it as an additional visual critic; it is recommended for high-importance marketing pages, not a mandatory dependency.

Review the screenshot for hierarchy, type, composition, material cues, component repetition, accidental AI clichés, mobile behavior, and whether each effect earns its place. Fix findings in a separate pass.

## 6. Decide before scaling

For a material visual direction, present the screenshots and review outcome to the user for a concise approve/revise decision before building the remaining pages. If the user delegated the choice, state the chosen direction and evidence, then continue only after the gate is genuinely passed.
