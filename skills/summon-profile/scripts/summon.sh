#!/bin/bash

# summon.sh - Synchronize Gemini CLI profile from a remote machine

set -e

if [ -z "$1" ]; then
  echo "Usage: $0 <remote_host> [username]"
  exit 1
fi

REMOTE_HOST=$1
USERNAME=${2:-$USER}

GEMINI_DIR="$HOME/.gemini"
BACKUP_DIR="$GEMINI_DIR/backups/profile_sync_$(date +%Y%m%d_%H%M%S)"

echo "Starting profile synchronization from ${USERNAME}@${REMOTE_HOST}..."

# 1. Backup Local State
echo "Backing up local profile to $BACKUP_DIR..."
mkdir -p "$BACKUP_DIR"

if [ -d "$GEMINI_DIR/skills" ]; then cp -R "$GEMINI_DIR/skills" "$BACKUP_DIR/"; fi
if [ -d "$GEMINI_DIR/hooks" ]; then cp -R "$GEMINI_DIR/hooks" "$BACKUP_DIR/"; fi
if [ -f "$GEMINI_DIR/GEMINI.md" ]; then cp "$GEMINI_DIR/GEMINI.md" "$BACKUP_DIR/"; fi
if [ -f "$GEMINI_DIR/settings.json" ]; then cp "$GEMINI_DIR/settings.json" "$BACKUP_DIR/"; fi

# 2. Synchronize from Remote (Merge Strategy)
echo "Pulling remote profile files..."

# Ensure local directories exist before copying into them
mkdir -p "$GEMINI_DIR/skills"
mkdir -p "$GEMINI_DIR/hooks"

# Use scp with -r for directories, -p to preserve times
# Using -q for quiet, or standard output
# Note: scp copying into a directory merges file contents, but leaves existing un-copied files intact.

scp -pr "${USERNAME}@${REMOTE_HOST}:~/.gemini/skills/*" "$GEMINI_DIR/skills/" || echo "Warning: No remote skills found or copy failed."
scp -pr "${USERNAME}@${REMOTE_HOST}:~/.gemini/hooks/*" "$GEMINI_DIR/hooks/" || echo "Warning: No remote hooks found or copy failed."
scp -p "${USERNAME}@${REMOTE_HOST}:~/.gemini/GEMINI.md" "$GEMINI_DIR/" || echo "Warning: Remote GEMINI.md not found or copy failed."
scp -p "${USERNAME}@${REMOTE_HOST}:~/.gemini/settings.json" "$GEMINI_DIR/" || echo "Warning: Remote settings.json not found or copy failed."

echo "Synchronization complete!"
echo "Your profile has been updated. Backup available at $BACKUP_DIR."
