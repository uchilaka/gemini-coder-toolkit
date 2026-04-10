# Import Profile Skill

## Overview
The `import-profile` skill acts as an automated synchronization script. It is designed to perform periodic (e.g., weekly) reviews of a user's environment configuration and import updates into the Gemini CLI setup.

## Features
- Checks for updates in external profiles (like `~/.claude/settings.json`, memory, goals, or skills).
- Safely syncs and maps these settings into the Gemini CLI environment.
- Reduces manual configuration drift between different AI assistant setups.

## Usage
Activate this skill when you want to "import profile" or run a scheduled synchronization to ensure your Gemini CLI environment reflects your latest global preferences and memory items.
