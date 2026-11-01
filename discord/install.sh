#!/usr/bin/env bash
# Installs the cosmic-monochrome Discord theme (Monochrome dark / Monochrome Day light) for
# Vencord and Vesktop, into whichever of their config folders exist.
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
installed=0
for app in Vencord vesktop; do
    [ -d ~/.config/$app ] || continue
    dest=~/.config/$app/themes
    mkdir -p "$dest"
    [ -f "$dest/cosmic-monochrome.theme.css" ] && cp "$dest/cosmic-monochrome.theme.css" "$dest/cosmic-monochrome.theme.css.bak"
    cp "$dir/cosmic-monochrome.theme.css" "$dest/"
    echo "  $app: $dest/cosmic-monochrome.theme.css"
    installed=1
done
if [ "$installed" = 0 ]; then
    echo "No ~/.config/Vencord or ~/.config/vesktop found. Start the app once, or copy by hand:"
    echo "  $dir/cosmic-monochrome.theme.css -> <app config>/themes/"
    exit 0
fi
echo "Done. Discord: Settings -> Vencord -> Themes -> tick Cosmic Monochrome."
echo "Appearance -> Theme -> Sync with computer follows COSMIC's Dark / Light toggle."
