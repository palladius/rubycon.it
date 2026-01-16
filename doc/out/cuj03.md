# CUJ 03: Accessibility Analysis
Executed on: 2026-01-16
Site Version: 0.4.29

## 1. Advanced Accessibility Check

### Semantic HTML & Alt Tags
*   **Images:** The codebase generally uses `alt` attributes correctly.
    *   `sponsors.html`: Uses `alt="{{ logo.name }}"`. Good.
    *   `speakers.html`: Uses `alt="{{ speaker.full_name }}"`. Good.
    *   `venue.html`: Uses `alt="{{ site.data.venue.title }}"`. Good.
    *   `articles.html`: Uses `alt="{{ post.title }}"`. Acceptable, but could be more descriptive.
    *   **Issue:** Some images in `_site/articles/index.html` have `alt` tags that are just filenames or generic text (e.g., `alt="/assets/images/articles/ludovico_besana.png"`). This is BAD. It seems `article.html` layout might be falling back to `page.asset_url` if `page.title` or a specific alt isn't set, or the default is messy.
    *   **Logo:** `alt="Rubycon Italy conference logo"` is perfect.

### Color Contrast
*   **Colors:**
    *   `$body-text-color: #606c71`: Gray on likely white/light background. Contrast ratio needs checking (usually okay on white, failing on dark).
    *   `$background-primary: linear-gradient(135deg, #500011 0%, #2b0b01 100%)`: Dark red/brown.
    *   `text-red-900` on white: Generally passes AA.
    *   `text-gray-300` on dark background (nav): might be low contrast.
    *   `text-yellow-400` on white (venue icons): **FAIL**. Yellow on white is notoriously bad for contrast.
    *   `text-red-200` on dark overlay (speaker role): Might be okay depending on the image opacity (`opacity-70`), but text on images is always risky.

### Structure
*   **Headings:** The site uses `h1`, `h2`, `h3` structurally. `section.html` seems to wrap content well.
*   **Links:** "Open in google maps" is descriptive. `target="_blank"` is used; should ideally have `rel="noopener noreferrer"` (security + a11y best practice implies warning user).
*   **ARIA:** No obvious ARIA labels found in the snippets.

## 2. Actionable Checklist

### High Priority (Fix Now)
1.  **[Contrast] Fix Yellow Icons:** In `venue.html` (and others), `text-yellow-400` on white background is unreadable for many. Change to a darker gold/orange or use a dark background.
    *   *Action:* Change `text-yellow-400` to `text-yellow-600` or `text-amber-600`.
2.  **[Images] Fix Article Alt Tags:** Ensure article images don't output the filename as alt text.
    *   *Action:* In `_layouts/article.html`, change `alt="{{ page.asset_url | default: page.title }}"` to strictly use `page.title` or a dedicated `page.image_alt` field. Filenames are useless to screen readers.
3.  **[Contrast] Links in Prose:** The red link color (`#dc2626`) on white is usually ~4.5:1 (pass AA), but check `hover` state (`#b91c1c`) to ensure it stays accessible.

### Medium Priority (Improve)
4.  **[Images] Descriptive Alts:** Enhance `alt` tags for speakers. Instead of just "Marco Roth", use "Photo of Marco Roth". For venue, "Photo of Hotel Ambasciatori exterior".
    *   *Action:* Update `_includes/speakers.html` and `_includes/venue.html`.
5.  **[Navigation] Skip Link:** Add a "Skip to main content" link at the top of the `body` (hidden visually, visible on focus).
    *   *Action:* Add to `_includes/header.html`.

### Low Priority (Polish)
6.  **[ARIA] Social Icons:** Ensure social media icons (if any, in footer) have `aria-label`.
7.  **[Focus] Focus States:** Ensure all focusable elements (links, buttons) have a visible focus ring (CSS `outline`).

## 3. Playwright Screenshots
*(Skipped as per environment limitations - use the checklist above for manual review)*
