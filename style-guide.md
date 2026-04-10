# Objective
Establish project-wide style rules (emoji tone, markdown formatting), enforce them via the `/specialist` skill, and automate formatting with markdownlint and VS Code workspace settings.

# Key Files & Context
- `STYLE_GUIDE.md`: New root-level file defining the project's styling rules.
- `.markdownlint.json`: Configuration for `markdownlint-cli`.
- `.vscode/settings.json`: VS Code workspace configuration.
- `.vscode/extensions.json`: VS Code extensions recommendations.
- `skills/specialist/references/design_reviewer.md`: Update to enforce `STYLE_GUIDE.md`.

# Implementation Steps

1. **Create `STYLE_GUIDE.md`:**
   - Define the mandatory use of the "medium dark" skin tone (🏾) for all emojis.
   - Outline general markdown and coding style guidelines (e.g., using GitHub-flavored Markdown).

2. **Configure Markdownlint (`.markdownlint.json`):**
   - Create a configuration file establishing basic markdown rules (e.g., no trailing spaces, consistent list indentation).

3. **Configure VS Code Workspace:**
   - Create `.vscode/settings.json` to enable format-on-save and format-on-paste specifically for markdown files.
   - Create `.vscode/extensions.json` to recommend the `DavidAnson.vscode-markdownlint` extension so the formatting works out of the box for contributors.

4. **Update Design Specialist (`skills/specialist/references/design_reviewer.md`):**
   - Add a review criterion instructing the persona to cross-reference all changes against `STYLE_GUIDE.md`, explicitly checking for the "medium dark" emoji skin tone rule.

5. **Package Skill:**
   - Run the build script to update `dist/specialist.skill`.

# Verification
- Ensure `.markdownlint.json` and `.vscode/settings.json` are valid JSON.
- Rebuild the `specialist` skill.