#!/usr/bin/env bash
# Installs the Monochrome Ghostty theme into ~/.config/ghostty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/ghostty/themes
mkdir -p "$dest"
[ -f "$dest/Monochrome" ] && cp "$dest/Monochrome" "$dest/Monochrome.bak"
cp "$dir/Monochrome" "$dest/"
echo "Done. Add to ~/.config/ghostty/config:  theme = Monochrome"
echo "(or  theme = dark:Monochrome,light:MonochromeDay  to follow COSMIC's toggle), then reload: Ctrl+Shift+,"
