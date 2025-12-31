# Plan: Remove Git LFS and Restore Images

The user wants to fix "broken" images that are currently Git LFS pointers and completely remove Git LFS from the repository.

## Subtasks

1.  **Preparation**: Uncomment lines in `.gitattributes` to re-enable LFS tracking temporarily.
2.  **Restore Images**: Run `git lfs pull` to download the actual binary content for all LFS files.
3.  **Untrack LFS**: 
    1.  Verify images are real binaries (check file size).
    2.  Delete `.gitattributes` file.
    3.  `git add .` to stage the binary files as standard files.
4.  **Commit**: Commit the changes with message "chore: restore binary images and remove git lfs".
5.  **Docs**: Update `CHANGELOG.md` and bump version.

