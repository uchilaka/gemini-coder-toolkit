# Start Worktree Skill

## Overview
The `start-worktree` skill automates the setup process for beginning a new task or feature, ensuring an isolated and clean workspace.

## Features
- **Isolated Worktrees:** Creates a new isolated Git worktree for a specific Jira ticket or task.
- **Secure Git Crypt Support:** Safely handles unlocking repositories secured with `git-crypt` using secure temporary files (preventing disk exposure).
- **Framework Agnostic Setup:** Automatically copies project-specific credentials (like Rails master keys) and safely initializes package managers (`yarn install --immutable` or `npm ci`) only when applicable.
- **Draft PR Checkpoints:** Generates a draft PR checkpoint document in `.gemini/draft-prs/` to track planned changes and progress.
- **Convention-Ready:** Sets up the new branch following the established conventions of the current user and project.

## Usage
Activate this skill at the very beginning of a new task or feature to instantly scaffold a clean, separate Git environment linked to your issue tracker.
