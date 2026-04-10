# Release Skill

The `/release` skill automates the complex and error-prone process of cutting a new version of the Gemini Coder Toolkit. It ensures that all metadata, changelogs, and build artifacts are updated consistently before committing and tagging the repository.

## Workflow

1.  **Safety First:** Runs existing tests and validations to ensure the repository is in a releasable state.
2.  **Summary:** Summarizes unreleased changes from the git history.
3.  **Coordination:** Prompts the user for the new version number and release notes.
4.  **Automation:**
    *   Updates `package.json` and `GEMINI.md`.
    *   Drafts the `CHANGELOG.md`.
    *   Regenerates all `.skill` files in `dist/`.
5.  **Finalization:** Creates a semantic commit, generates a git tag, and pushes everything to the remote.

## Usage Example

Trigger the skill using the Gemini CLI:

```javascript
"I'm ready to ship the new features. Run the /release process for v0.3.0."
```
