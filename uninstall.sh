#!/bin/bash
set -e
set -o pipefail

TARGET_ALIAS="/usr/local/bin/lss"
TARGET_FULL="/usr/local/bin/lss-macos-network-tools"

if [[ -f "$TARGET_ALIAS" ]]; then
  sudo rm "$TARGET_ALIAS"
  echo "Removed $TARGET_ALIAS"
fi

if [[ -f "$TARGET_FULL" ]]; then
  sudo rm "$TARGET_FULL"
  echo "Removed $TARGET_FULL"
fi

if [[ ! -f "$TARGET_ALIAS" && ! -f "$TARGET_FULL" ]]; then
  echo "Uninstall complete."
fi
