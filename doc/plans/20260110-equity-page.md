# Plan: Create Equity Page

## Context
User wants a new page for "Equity" at `/equity`.
The project is Jekyll-based.
The page should not be linked from the homepage navigation yet.

## Steps

1.  **Create Page File**
    *   Create `rubycon.it/equity.md`.
    *   Set front matter:
        ```yaml
        ---
        layout: page
        title: Equity
        permalink: /equity/
        ---
        ```
    *   Add placeholder content or content provided by user.

2.  **Verify Navigation**
    *   Ensure the new page is NOT added to `_data/navigation.yml` (or wherever menu is defined).

3.  **Test**
    *   Run `just test` or `just serve` (if applicable) to verify the page builds and is accessible at `/equity/`.

4.  **Documentation**
    *   Update `CHANGELOG.md`.
    *   Update version in `_config.yml`.
