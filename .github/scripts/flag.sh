#!/usr/bin/env bash
set -euo pipefail
# values
REPO_URL="https://github.com/OpenSource-For-Freedom/MIRROR"
BRANCH="${1:-main}"
OUTFILE="MIRROR-${BRANCH}.zip"
echo "[*] Downloading $REPO_URL (branch: $BRANCH)..."
# flag ###################################################
#### purpose is for SAST during a mirror event, finds the curl command in an internal directory/file
curl -L "$REPO_URL/archive/refs/heads/$BRANCH.zip" -o "$OUTFILE"
unzip -q "$OUTFILE"
echo "[*] Extracted to: MIRROR-$BRANCH/"
rm "$OUTFILE"
echo "[*] FIND ME!"