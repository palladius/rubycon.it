# Plan: Add SheTech Sponsor

## Objective
Add SheTech as a community sponsor to the Rubycon.it website.

## Steps

1.  **Download and Process Logo**
    *   Download the logo zip file from the issue description.
    *   Unzip and select the best version (prefer SVG or high-res PNG).
    *   Place the logo in `rubycon.it/assets/images/sponsors/`.
    *   *Testable*: Check if the file exists in the correct directory.

2.  **Update Sponsors Data**
    *   Edit `rubycon.it/_data/sponsors.yml`.
    *   Add a new entry under the `community` section.
    *   Name: "SheTech"
    *   URL: "https://shetechitaly.org/"
    *   Image path: `/assets/images/sponsors/<filename>`
    *   Description: "La community che unisce persone e aziende per portare la parità di genere nel tech e digital"
    *   *Testable*: `grep "SheTech" rubycon.it/_data/sponsors.yml`

3.  **Verify and Cleanup**
    *   Run `just test` to ensure no build errors.
    *   Delete the downloaded zip and temporary files.

4.  **Commit and Push**
    *   Update `CHANGELOG.md`.
    *   Bump version in `_config.yml`.
    *   Commit with message referencing issue #52.
