#!/usr/bin/env bash
set -euo pipefail

CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/fastfetch"
CONFIG_FILE="$CONFIG_DIR/config.jsonc"

URL="https://raw.githubusercontent.com/eemelijw/configs-fastfetch/main/Minima/config.jsonc"

mkdir -p "$CONFIG_DIR"

tmp="$(mktemp)"
trap 'rm -f "$tmp"' EXIT

curl -fL "$URL" -o "$tmp"

if [ -f "$CONFIG_FILE" ]; then
    backup="${CONFIG_FILE}.bak.$(date +%Y%m%d-%H%M%S)"
    cp "$CONFIG_FILE" "$backup"
    echo "Backed up existing config to: $backup"
fi

mv "$tmp" "$CONFIG_FILE"

echo "Minima configuration installed!"
echo "Deleting installer..."
rm -f -- "${BASH_SOURCE[0]}"
