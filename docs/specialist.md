# Specialist Skill

The `/specialist` skill acts as an intelligent coordinator designed to conduct deep, multifaceted technical reviews. Instead of relying on a single generalist prompt, it dynamically loads specific expert personas based on the focus of your request.

## How It Works

1.  **Analyze:** The skill reads your request to determine which domains (e.g., Code, Security, Design) are relevant.
2.  **Delegate:** It loads the corresponding persona definitions from its `references/` directory.
3.  **Synthesize:** It reviews the provided code or context through those specific lenses and returns a unified report.

## Available Personas

*   **Architecture Reviewer:** Focuses on system design, coupling, patterns, and scalability.
*   **Code Reviewer:** Focuses on idiomatic language features, readability, efficiency, and styling.
*   **Design & Frontend Reviewer:** Focuses on UX/UI, accessibility (WCAG), visual consistency, and state management.
*   **DevOps Reviewer:** Focuses on CI/CD pipelines, Dockerfile optimization, and infrastructure-as-code.
*   **Documentation Reviewer:** Focuses on clarity, Markdown standards, and ensuring canonical storage.
*   **Security Reviewer:** Focuses on OWASP vulnerabilities, secrets detection, and input validation.
*   **Testing & QA Reviewer:** Focuses on test coverage, mocking strategies, and preventing flaky tests.

## Usage Examples

Trigger the skill using the Gemini CLI:

```javascript
// Run a targeted security and architecture audit on a PR
"Run a /specialist review on the new authentication flow, focusing on security and architecture."

// Run a frontend specific review
"Can you run a /specialist review on the new Button component?"

// Run a DevOps pipeline review
"Do a specialist review on my new Dockerfile and CI YAML."
```