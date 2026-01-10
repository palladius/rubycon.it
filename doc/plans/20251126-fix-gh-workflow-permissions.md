# Fix GitHub Workflow Permissions for Gemini Agent

## Objective
Enable the Gemini CLI agent to create branches and open Pull Requests by granting `write` permission to `contents` in the GitHub Actions workflows. This resolves the `403 Resource not accessible by integration` error observed in issue #52.

## Plan

1.  **Update `.github/workflows/gemini-invoke.yml`**
    *   Change job-level `permissions.contents` from `'read'` to `'write'`.
    *   Change `Mint identity token` step `permission-contents` from `'read'` to `'write'`.

2.  **Update `.github/workflows/gemini-dispatch.yml`**
    *   Change job-level `permissions.contents` from `'read'` to `'write'` for `dispatch` and `fallthrough` jobs.
    *   Change `Mint identity token` step `permission-contents` from `'read'` to `'write'` in both `dispatch` and `fallthrough` jobs.
    *   Update `permissions.contents` to `'write'` for the caller jobs: `review`, `triage`, and `invoke`.

3.  **Verification**
    *   Review the modified files to ensure syntax is correct and only permissions are changed.

4.  **Commit**
    *   Commit the changes with a message linking to the issue (e.g., "fix: grant contents:write permission to gemini workflows #52").
