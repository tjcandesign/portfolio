#!/usr/bin/env bash
# Stamps today's date into the footer of index.html on every build.
# Targets the HTML comment markers: <!-- LAST_EDITED:START -->...<!-- LAST_EDITED:END -->
# Runs on Netlify (Linux). Safe to run locally too; use `bash scripts/update-last-edited.sh`.

set -euo pipefail

DATE=$(date +'%B %-d, %Y')
FILE="index.html"

if [ ! -f "$FILE" ]; then
  echo "Error: $FILE not found. Run from repo root." >&2
  exit 1
fi

# Use a different sed -i syntax for macOS vs Linux.
if [[ "$OSTYPE" == "darwin"* ]]; then
  sed -i '' "s|<!-- LAST_EDITED:START -->.*<!-- LAST_EDITED:END -->|<!-- LAST_EDITED:START -->${DATE}<!-- LAST_EDITED:END -->|" "$FILE"
else
  sed -i "s|<!-- LAST_EDITED:START -->.*<!-- LAST_EDITED:END -->|<!-- LAST_EDITED:START -->${DATE}<!-- LAST_EDITED:END -->|" "$FILE"
fi

echo "Stamped last-edited date: $DATE"
