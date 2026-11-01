#!/usr/bin/env bash
# Installs the Monochrome Helix theme into ~/.config/helix/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/helix/themes
mkdir -p "$dest"
[ -f "$dest/monochrome.toml" ] && cp "$dest/monochrome.toml" "$dest/monochrome.toml.bak"
cp "$dir/monochrome.toml" "$dest/"
echo 'Done. Add to ~/.config/helix/config.toml:  theme = "monochrome"'
