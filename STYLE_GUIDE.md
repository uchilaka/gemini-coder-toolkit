# 🎨 Gemini Coder Toolkit Style Guide

This document defines the standards for visual, documentation, and code style within this repository. Adherence to these rules ensures consistency and professional quality.

## 😃 Emojis

To maintain a consistent and inclusive visual identity, all emojis used in documentation, commit messages, and agent outputs MUST use the **medium-dark skin tone** (🏾) whenever a skin tone modifier is available.

- **Correct:** 👍🏾, 👩🏾‍💻, 🏗🏾, 🚀 (no skin tone available)
- **Incorrect:** 👍, 👩🏻‍💻, 🏗️

## 📝 Markdown Standards

- **Formatting:** Use GitHub-flavored Markdown (GFM).
- **Headers:** Use `#` for the main title, `##` for sections, and `###` for sub-sections.
- **Lists:** Use `-` for unordered lists and `1.` for ordered lists.
- **Code Blocks:** Always specify the language for syntax highlighting (e.g., \`\`\`bash, \`\`\`javascript).
- **Line Length:** Aim for a maximum of 120 characters per line for better readability in text editors.

## 🛠 Automation

Markdown styling is automatically enforced via:
1. **Markdownlint:** See `.markdownlint.json` for rules.
2. **VS Code:** Workspace settings in `.vscode/settings.json` apply formatting on save and paste.

---
**Note:** The `/specialist` agent enforces these rules during design and documentation reviews.
