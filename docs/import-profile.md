# Import Profile Skill

## Overview
The `import-profile` skill acts as an automated synchronization script. It is designed to perform periodic (e.g., weekly) reviews of a user's environment configuration and import updates into the Gemini CLI setup.

## Features
- **Cross-Profile Sync:** Checks for updates in external profiles (like `~/.claude/settings.json`, memory, goals, or skills).
- **MD5 Baseline Tracking:** Uses robust MD5 hashing (compatible with macOS and Linux) to detect changes in configuration files since the last review.
- **Safe Mapping:** Safely syncs and maps these settings into the Gemini CLI environment.
- **Drift Prevention:** Reduces manual configuration drift between different AI assistant setups.

## Usage
Activate this skill when you want to "import profile" or run a scheduled synchronization to ensure your Gemini CLI environment reflects your latest global preferences and memory items.
