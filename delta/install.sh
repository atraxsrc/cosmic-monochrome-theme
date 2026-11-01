#!/usr/bin/env bash
# Installs the Monochrome delta config into ~/.config/delta/. It does not edit
# ~/.gitconfig: add the [include] it prints.
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/delta
mkdir -p "$dest"
[ -f "$dest/monochrome.gitconfig" ] && cp "$dest/monochrome.gitconfig" "$dest/monochrome.gitconfig.bak"
cp "$dir/monochrome.gitconfig" "$dest/"
if [ -f ~/.gitconfig ] && grep -qF "delta/monochrome.gitconfig" ~/.gitconfig; then
    echo "Done. ~/.gitconfig already includes it."
else
    echo "Done. Add to ~/.gitconfig:"
    echo "  [include]"
    echo "      path = ~/.config/delta/monochrome.gitconfig"
fi
echo "Needs the bat Monochrome theme for the code colours: ./bat/install.sh"
