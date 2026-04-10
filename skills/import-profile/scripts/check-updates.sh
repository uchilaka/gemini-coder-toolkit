#!/bin/bash
BASELINE_FILE=~/.gemini/claude_baseline_hashes.txt
NEW_HASHES=~/.gemini/claude_new_hashes.tmp

# Function to get MD5 hash of a file
get_md5() {
    if command -v md5 >/dev/null 2>&1; then
        md5 -r "$1"
    elif command -v md5sum >/dev/null 2>&1; then
        md5sum "$1"
    else
        echo "Error: Neither md5 nor md5sum found." >&2
        exit 1
    fi
}

echo "Calculating current hashes for ~/.claude configuration..."
# Find files and calculate hashes
find ~/.claude -type f \( -path "*/memory/*" -o -path "*/goals/*" -o -path "*/skills/*" -o -name "settings.json" \) | while read -r file; do
    get_md5 "$file"
done | sort > "$NEW_HASHES"

if [ ! -f "$BASELINE_FILE" ]; then
    echo "Baseline file not found at $BASELINE_FILE. Creating it now..."
    cp "$NEW_HASHES" "$BASELINE_FILE"
    echo "Baseline created. No changes to review yet."
    exit 0
fi

# sort the baseline file too just in case
sort "$BASELINE_FILE" -o "$BASELINE_FILE"

echo "Comparing current hashes to baseline..."
DIFF_OUTPUT=$(diff "$BASELINE_FILE" "$NEW_HASHES")

if [ -z "$DIFF_OUTPUT" ]; then
    echo "No changes detected since the last review."
    rm "$NEW_HASHES"
    exit 0
else
    echo "Changes detected!"
    echo "================="
    echo "$DIFF_OUTPUT"
    echo "================="
    echo "Please review these changes. Once imported, you can update the baseline by copying $NEW_HASHES to $BASELINE_FILE."
    exit 1
fi
