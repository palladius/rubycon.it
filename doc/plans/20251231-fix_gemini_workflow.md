# Plan: Fix Gemini Triage Workflow

## Context
The `gemini-triage.yml` workflow is failing (Issue #55) likely due to:
1.  **Outdated Configuration**: It uses `tools: core: [...]` which is the old syntax. Should be `coreTools: [...]`.
2.  **Missing Prompt**: It references `/gemini-triage` as a prompt, which doesn't exist.
3.  **Permissions**: The split-job structure (triage -> label) is complex.

I will align `gemini-triage.yml` with the working `gemini-issue-automated-triage.yml` workflow.

## Detailed Changes

### `gemini-triage.yml`
1.  **Refactor into a single job**: Use one `triage` job that has both `issues: write` and `id-token: write` permissions.
2.  **Remove `label` job**: The labeling will be done by the agent directly.
3.  **Update `triage` steps**:
    -   **Mint Token**: Add the `actions/create-github-app-token` step.
    -   **Remove**: `get_labels` script (unnecessary).
    -   **Run Gemini**:
        -   Use inline prompt from `gemini-issue-automated-triage.yml`.
        -   Update `settings` to use valid JSON and `coreTools`.
        -   Inject `GITHUB_TOKEN` from the minted token so the agent can use `gh`.
        -   Inject `ADDITIONAL_CONTEXT` from inputs.

## Verification
-   I will verify the content of `gemini-triage.yml` after edit.
-   The user can trigger the workflow by commenting `@gemini-cli /triage` on an issue.

## Revert Plan
-   Restore `gemini-triage.yml` from `git show HEAD:.github/workflows/gemini-triage.yml`.
