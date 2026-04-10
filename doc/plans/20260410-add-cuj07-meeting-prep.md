# Plan: Add CUJ 07 - Meeting Preparation

We are adding a new Critical User Journey (CUJ) to help automate the preparation of team meetings by gathering data from both public and private repositories.

## Subtasks

1. **Create CUJ 07 Definition**: Create `doc/cujs/cuj07-meeting-prep.md` with the instructions for Gemini to gather AIs from `RubyconIT/pvt-data` and bugs from `palladius/rubycon.it`, then propose a meeting agenda.
2. **Implement Meeting Prep Logic (Optional/Implicit)**: Ensure Gemini understands how to execute this CUJ when requested.
3. **Validation**: Test the instructions by having Gemini simulate the research part (if possible without actually creating the bug yet, or in a dry-run mode).

## 1. Create CUJ 07 Definition
- File: `doc/cujs/cuj07-meeting-prep.md`
- Content:
    - Instruct Gemini to use `gh` to check `https://github.com/RubyconIT/pvt-data/issues` for open/recent AIs.
    - Instruct Gemini to use `gh` to check `palladius/rubycon.it` for major open bugs.
    - Propose a meeting agenda with emojis, owners, status, and insights.
    - If in headless mode, create the issue in `pvt-data` with title "Meeting of today YYYYMMDD", assign to `palladius@`.
    - If interactive, wait for user review.

## 2. Validation
- Run a test command to see if `gh` can access the repos (might fail if I don't have permissions, but I should at least check the public one).
- Verify the MD file exists and matches the style of other CUJs.

## Revertability
- Standard `git checkout doc/cujs/cuj07-meeting-prep.md` or `rm` the file.
- Micro-commits will be used for each step.
