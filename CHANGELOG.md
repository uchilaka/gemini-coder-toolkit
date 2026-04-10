# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.5.1-alpha] - 2026-04-10

### Fixed
- Corrected emoji skin tone modifiers to prevent broken rendering (using full sequences like 👨🏾‍💻).
- Reverted skin tone modifiers on emojis that do not support them (🏗, 🚀).

### Changed
- Enhanced the `specialist` skill (Design Reviewer) with explicit warnings about emoji rendering and sequence standards.

## [0.5.0-alpha] - 2026-04-10

### Added
- Established `STYLE_GUIDE.md` mandating "medium dark" skin tone (🏾) for all emojis.
- Integrated `markdownlint` configuration (.markdownlint.json) for consistent documentation quality.
- Added VS Code workspace settings (.vscode/settings.json) to automate formatting on save and paste.

### Changed
- Enhanced the `specialist` skill (Design Reviewer) to explicitly enforce project style rules.

## [0.4.1-alpha] - 2026-04-10

### Changed
- Aligned project branding to "Gemini Coder Toolkit" across all documentation and configuration files.
- Updated `CONTRIBUTING.md` with Yarn Berry setup instructions and new development workflows.
- Polished `README.md` with updated build and test commands.

## [0.4.0-alpha] - 2026-04-10

### Added
- Mandatory `/specialist` review pass to the release workflow to identify risks before release.
- User interview stage to the release process for informed decision-making based on review findings.

### Changed
- Updated documentation for the `release` skill to include new quality gates.

## [0.3.0-alpha] - 2026-04-10

### Added
- New `/release` skill to automate versioning, changelog, and git workflow.
- New `/specialist` skill for delegated expert reviews across 7 domains.
- Automated testing suite for skill validation.
- Version recommendation logic based on git history.

### Changed
- Migrated repository to Yarn Berry (v4.13.0) for improved package management.
- Updated global preferences to prioritize Yarn.

## [0.2.0-alpha] - 2026-04-10

### Added
- Created the new `specialist` skill: a router that delegates code, architecture, security, design, documentation, testing, and devops reviews to specialized sub-agent personas.
- Added 7 specialized reviewer personas in `skills/specialist/references/`.

## [0.1.0-alpha] - 2026-04-10

### Added
- Initial extraction of legacy skills into uncompressed source folders (`skills/`).
  - `finish-worktree`
  - `import-profile`
  - `markdown-manager`
  - `start-worktree`
- Established new project structure with `skills/`, `dist/`, and `docs/`.
- Selected and added the GPL-3.0 LICENSE file.
- Created human-friendly documentation for all core skills in `docs/`.
