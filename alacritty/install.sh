#!/usr/bin/env bash
# Installs the Monochrome Alacritty colour scheme into ~/.config/alacritty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/alacritty/themes
mkdir -p "$dest"
[ -f "$dest/monochrome.toml" ] && cp "$dest/monochrome.toml" "$dest/monochrome.toml.bak"
cp "$dir/monochrome.toml" "$dest/"
echo "Done. Add to ~/.config/alacritty/alacritty.toml:"
echo '  [general]'
echo '  import = ["~/.config/alacritty/themes/monochrome.toml"]'
