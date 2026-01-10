# Force Usage of Default GITHUB_TOKEN

## Objective
Resolve the `[object Object]` error and potential permission issues in the `gemini-invoke` workflow by forcing the usage of the default `GITHUB_TOKEN` (which inherits the updated job permissions) instead of the GitHub App token.

## Plan

1.  **Update `.github/workflows/gemini-invoke.yml`**
    *   Locate the `Run Gemini CLI` step.
    *   Update the `GITHUB_TOKEN` environment variable to remove `steps.mint_identity_token.outputs.token`.
    *   New value: `'${{ secrets.GITHUB_TOKEN || github.token }}'`

2.  **Commit**
    *   Commit the changes with a message: "fix: force usage of GITHUB_TOKEN in invoke workflow #52".

3.  **Verification**
    *   Ask the user to trigger the workflow again.
