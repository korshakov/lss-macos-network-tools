#!/bin/bash
set -e
set -o pipefail

SCRIPT_NAME="lss-macos-network-tools"
TARGET_ALIAS="/usr/local/bin/lss"
TARGET_FULL="/usr/local/bin/lss-macos-network-tools"

if [[ ! -f "$SCRIPT_NAME" ]]; then
  echo "Error: $SCRIPT_NAME not found in current directory."
  exit 1
fi

chmod +x "$SCRIPT_NAME"
sudo cp "$SCRIPT_NAME" "$TARGET_ALIAS"
sudo cp "$SCRIPT_NAME" "$TARGET_FULL"
sudo chmod +x "$TARGET_ALIAS" "$TARGET_FULL"

echo "Installation complete."
echo "Run the tool with: lss"
