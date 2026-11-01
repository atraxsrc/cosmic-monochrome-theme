#!/usr/bin/env bash
# Installs the Monochrome kitty colour scheme into ~/.config/kitty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/kitty/themes
mkdir -p "$dest"
[ -f "$dest/Monochrome.conf" ] && cp "$dest/Monochrome.conf" "$dest/Monochrome.conf.bak"
cp "$dir/Monochrome.conf" "$dest/"
echo "Done. Add to ~/.config/kitty/kitty.conf:  include themes/Monochrome.conf"
echo "then reload kitty (Ctrl+Shift+F5)."
