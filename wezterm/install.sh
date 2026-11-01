#!/usr/bin/env bash
# Installs the Monochrome WezTerm colour module into ~/.config/wezterm/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/wezterm
mkdir -p "$dest"
[ -f "$dest/monochrome.lua" ] && cp "$dest/monochrome.lua" "$dest/monochrome.lua.bak"
cp "$dir/monochrome.lua" "$dest/"
echo 'Done. Add to ~/.config/wezterm/wezterm.lua:  config.colors = require("monochrome")'
