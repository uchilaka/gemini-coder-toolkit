---
name: start-worktree
description: Creates a new isolated git worktree for a JIRA ticket, generates a draft PR checkpoint doc, and sets up the branch following user conventions. Use when starting a new task or feature.
---

# Start Git Worktree

Use this skill to set up an isolated development environment (git worktree) for a new task.

## 1. Gather Details
- Ensure you have the JIRA ticket ID and a short slug description from the user.
- If not provided, ask the user before proceeding.

## 2. Create the Worktree
- Identify the repository name.
- Branch name format: `<jira-ticket>/<short-slug>`
- Worktree location: `../<repo-name>-worktrees/<jira-ticket>`
- Execute the git command to create the worktree:
  ```bash
  git worktree add -b <jira-ticket>/<short-slug> ../<repo-name>-worktrees/<jira-ticket> main
  ```
  *(Note: adjust `main` if the default branch is different).*
- Change directory into the new worktree.

## 3. Create Draft PR Checkpoint
- Identify the project key (e.g., from the repo name).
- Create the directory if it doesn't exist: `mkdir -p ~/.claude/projects/<project-key>/draft-prs/`
- Create a markdown file at `~/.claude/projects/<project-key>/draft-prs/<jira-ticket>_<short-slug>.md`.
- Populate it with standard PR template sections (Title, Description, Acceptance Criteria) and save it.
