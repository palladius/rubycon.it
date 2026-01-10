# Post-Mortem: CSS Production Outage (2026-01-10)

## Incident Summary
On January 10, 2026, a commit intended to add styling for H5/H6 headings inadvertently broke the site's entire CSS. This resulted in the website rendering as unstyled HTML (white background, default fonts, blue links) instead of the intended branding (red/dark theme).

## Root Cause Analysis
The outage was caused by a malformed Jekyll Front Matter in `rubycon.it/assets/css/style.scss`.

### The Diff
The critical error occurred in commit `a61a79d`, where the multi-line front matter was collapsed into a single line.

**Previous (Working):**
```scss
---
---

@use "variables";
```

**Broken (Commit `a61a79d`):**
```scss
--- --- @use "variables";
```

### Why this broke production
1.  **Jekyll Processing**: Jekyll relies on the `---` block at the very top of a file to recognize it as a file that needs processing (in this case, compiling SCSS to CSS).
2.  **Syntax Requirement**: The front matter must consist of opening `---` on the first line and closing `---` on a subsequent line.
3.  **Failure Mode**: When the front matter was collapsed to `--- --- @use "variables";`, Jekyll no longer recognized it as valid front matter. Consequently, it likely skipped the SCSS compilation step entirely for this file, or the SCSS compiler failed to parse the invalid syntax.
4.  **Result**: The `assets/css/style.css` file was not generated in the `_site` output. The browser received a 404 error for the stylesheet, leading to an unstyled page.

## Resolution
1.  **Identification**: The issue was identified by observing the loss of styling and verifying the 404 errors in the local server logs.
2.  **Fix**: The file was restored to its previous working state (commit `acbfed57`) to recover the correct front matter format.
3.  **Re-application**: The intended CSS changes (H4/H5/H6 styling) were re-applied carefully, ensuring the top of the file remained untouched.
4.  **Verification**: A new automated test (`test/test_branding.rb`) was added to verify that the CSS file exists and contains key branding colors (`#500011` / `rgb(80, 0, 17)`), preventing regression.

## Lessons Learned
*   **Front Matter Sensitivity**: Be extremely careful when editing the first few lines of Jekyll assets. Automated tools/LLMs might inadvertently reflow text, breaking the strict syntax required by Jekyll.
*   **Visual Regression Testing**: A simple check of "is the page red?" is crucial. The new `test_branding.rb` script automates this.
*   **Atomic Commits**: Mixing style changes with structural file changes (like front matter) makes debugging harder.
