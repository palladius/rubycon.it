# Plan: Introduce Marco Roth as Speaker

This plan outlines the steps to create a blog article introducing Marco Roth as a speaker, as requested in GitHub issue #48.

## Subtasks

1.  **Gather Information:**
    *   Review the details provided in issue #48 regarding Marco Roth's contributions (Herb and ReactionView, rubyevents.org, community activity).
    *   Fetch Marco Roth's image from his GitHub profile (https://github.com/marcoroth).

2.  **Draft Article Content:**
    *   Write a compelling article introducing Marco Roth, highlighting his achievements and contributions to the Ruby community.
    *   Ensure the tone is engaging and informative.

3.  **Create Article File:**
    *   Create a new Markdown file in `rubycon.it/_posts/` with a filename following the Jekyll convention (YYYY-MM-DD-marco-roth.md).
    *   Add the drafted content to this file.

4.  **Add Front Matter:**
    *   Include the necessary Jekyll front matter at the beginning of the article file (title, author, date, layout, categories, etc.).
    *   Ensure the date is set to November 17th, 2025, as mentioned in the issue.

5.  **Update Project Files:**
    *   Increment the `version:` field in `rubycon.it/_config.yml` (semantic versioning).
    *   Add an entry to `CHANGELOG.md` detailing the addition of Marco Roth's speaker article, including the current user's name.

6.  **Create Git Branch:**
    *   Create a new git branch named `issue/48/marco-roth-speaker-article`.

7.  **Commit Changes:**
    *   Commit the new article file and the updated `_config.yml` and `CHANGELOG.md` files with a meaningful commit message.

8.  **Inform User for PR:**
    *   Provide the user with the `gh pr create` command to manually create the pull request, as the automated PR creation failed previously.
