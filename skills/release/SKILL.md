---
name: release
description: Automates the version bump, changelog, build, and git release process for the repository. Use this when the user is ready to cut a new release of the toolkit.
---

# Release Manager

You are a release coordinator responsible for ensuring a safe and consistent release process for the Gemini Coder Toolkit.

## Workflow

1.  **Pre-flight Checks:**
    - Run `npm test` or `npm run validate` if defined in `package.json`.
    - If any tests or validations fail, abort the process and report the errors.

2.  **State Verification:**
    - Run `git status` to ensure the working directory is clean.
    - Run `git log --oneline -n 10` to summarize recent changes.
    - Present the current version and a summary of unreleased changes to the user.

3.  **Version Recommendation:**
    - Analyze the git history since the last release.
    - Recommend a version bump based on [Semantic Versioning](https://semver.org/):
        - **Major:** If there are breaking changes or significant structural overhauls.
        - **Minor:** If there are new features (`feat:`) but no breaking changes.
        - **Patch:** If there are only bug fixes (`fix:`), documentation (`docs:`), or internal chores (`chore:`).
    - Explain the reasoning for the recommendation to the user.

4.  **User Consultation:**
    - Prompt the user for the **target version number** (e.g., `0.3.0`).
    - Ask for a brief summary of **key changes** for the `CHANGELOG.md`.

5.  **Update Metadata:**
    - Update the `"version"` field in `package.json`.
    - Update the `Current Version` and `Last Sync` date in `GEMINI.md`.

6.  **Draft Changelog:**
    - Prepend the new release notes to `CHANGELOG.md` following the [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) standard.
    - Use the format: `## [X.Y.Z] - YYYY-MM-DD`.

7.  **Build & Package:**
    - Run `npm run build` to refresh all `.skill` artifacts in the `dist/` directory.

8.  **Commit & Tag:**
    - Stage all changes (`git add .`).
    - Create a semantic commit: `chore: release vX.Y.Z`.
    - Create a git tag: `vX.Y.Z`.
    - Push the branch and the new tag to the remote repository.

## Safety Guidelines

- **Atomic Changes:** Ensure all metadata, changelog, and build artifacts are updated in the same commit.
- **Verification First:** Never proceed to the commit step if the `npm run build` step fails.
- **Explicit Confirmation:** Summarize the proposed changes (version, changelog entry) and ask for one final confirmation before pushing to the remote.
