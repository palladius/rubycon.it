# Plan: Add Marco Roth's Title and Abstract

This plan addresses adding Marco Roth's talk details from the GitHub issue comment #74 where they pertain in the Rubycon project.

## Subtasks

1. Update `rubycon.it/_includes/dsl/content.rb`:
   - Replace "TBD" with the title "**HTML-Aware ERB: The Path to Reactive Rendering**" for Marco Roth's talk at 16:20.

2. Update `rubycon.it/_posts/2025-11-14-marco-roth.md`:
   - Append the talk title and abstract to provide the detailed description of Marco's session on the website.

3. Update `rubycon.it/_config.yml` & `CHANGELOG.md`:
   - Increment `version` in `rubycon.it/_config.yml` (semantic versioning).
   - Add a new changelog line with developer name `[Antigravity/Gemini]` detailing the update.

4. Verify changes using `just test`.

5. Update Github Issue #74 natively or ask if user wants to push/commit using gitmoji and link the issue.

Please confirm if this plan looks good to execute!

(Then update/tag Issue #74)