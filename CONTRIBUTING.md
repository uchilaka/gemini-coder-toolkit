# Contributing to Gemini for Coding Toolkit

We'd love to accept your patches and contributions to this project!

## 🚀 Getting Started

1.  **Fork the repository** on GitHub.
2.  **Clone your fork** locally:
    ```bash
    git clone https://github.com/google/gemini-for-coding-toolkit.git
    ```
3.  **Install dependencies**:
    ```bash
    npm install
    ```

## 🛠 Adding a New Skill

1.  Create a new directory in `skills/`:
    ```bash
    mkdir -p skills/my-new-skill/{scripts,assets,references}
    ```
2.  Add your `SKILL.md`. Ensure it has the required YAML frontmatter:
    ```markdown
    ---
    name: my-new-skill
    description: A brief description of what this skill does.
    ---
    # My New Skill
    ...
    ```
3.  Add human-friendly documentation in `docs/my-new-skill.md`.
4.  Update the root `README.md` and `CHANGELOG.md`.
5.  Run the build script to verify:
    ```bash
    npm run build
    ```

## 📋 Standards

- **Consistency:** Follow the existing directory structure and naming conventions.
- **Documentation:** Every skill must have a corresponding guide in the `docs/` folder.
- **Portability:** Scripts should be written in POSIX-compliant shell or cross-platform Node.js whenever possible.
- **Licensing:** By contributing, you agree that your contributions will be licensed under the project's **GPL-3.0** license.

## 🤝 Contributor License Agreement

Contributions to this project must be accompanied by a [Contributor License Agreement](https://cla.developers.google.com/about) (CLA). You (or your employer) retain the copyright to your contribution; this simply gives us permission to use and redistribute your contributions as part of the project.

Visit <https://cla.developers.google.com/> to see your current agreements or to sign a new one.

## 🏁 Community Guidelines

This project follows [Google's Open Source Community Guidelines](https://opensource.google/conduct/).
