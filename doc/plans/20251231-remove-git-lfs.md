# Plan: Remove Git LFS and Restore Images

The user wants to fix "broken" images that are currently Git LFS pointers and completely remove Git LFS from the repository.

## Subtasks

1.  **Preparation**: Uncomment lines in `.gitattributes` to re-enable LFS tracking temporarily. (Done)
2.  **Restore Images**: Run `git lfs pull` to download the actual binary content for all LFS files. (Done)
3.  **Untrack LFS**: 
    1.  Verify images are real binaries. (Done)
    2.  Delete `.gitattributes` file. (Done)
    3.  `git add .` to stage the binary files as standard files. (Done)
4.  **Commit**: Commit the changes with message "chore: restore binary images and remove git lfs". (Done)
5.  **Docs**: Update `CHANGELOG.md` and bump version. (Done)
6.  **Cleanup**: Verified no files overwritten. Images are valid. (Done)

**Status: COMPLETED**
