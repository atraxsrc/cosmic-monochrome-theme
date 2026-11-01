#!/usr/bin/env bash
# Installs the Monochrome lazygit colours beside your own config.yml
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/lazygit
mkdir -p "$dest"
[ -f "$dest/monochrome.yml" ] && cp "$dest/monochrome.yml" "$dest/monochrome.yml.bak"
cp "$dir/monochrome.yml" "$dest/"
echo "Done. zsh/monochrome.zsh points LG_CONFIG_FILE at config.yml plus monochrome.yml; without it:"
echo "  export LG_CONFIG_FILE=\"\$HOME/.config/lazygit/config.yml,\$HOME/.config/lazygit/monochrome.yml\""
