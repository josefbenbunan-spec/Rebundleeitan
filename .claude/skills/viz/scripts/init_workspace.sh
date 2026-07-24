#!/bin/bash
# Initialize a viz workspace directory
# Usage: ./init_workspace.sh "slug-name" ["title"]

SLUG="${1:?Usage: init_workspace.sh <slug> [title]}"
TITLE="${2:-$SLUG}"
DATE=$(date +%Y-%m-%d)
WORKSPACE="$(pwd)/viz/$SLUG"

mkdir -p "$WORKSPACE"

# Create metadata.json
cat > "$WORKSPACE/metadata.json" <<EOF
{
  "title": "$TITLE",
  "timestamp": "$DATE",
  "instruction": "",
  "archetype": ""
}
EOF

echo "$WORKSPACE"
