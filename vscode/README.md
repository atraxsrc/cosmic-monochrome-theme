# Cosmic Monochrome for Cursor

A colour theme for [Cursor](https://cursor.com) from the COSMIC
[Monochrome](https://github.com/atraxsrc/cosmic-monochrome-theme) rice. It is a plain VS Code theme extension,
so VS Code and VSCodium take it too.

## Install

```bash
./vscode/install.sh                # Cursor
./vscode/install.sh code codium    # VS Code / VSCodium instead
```

It packs this folder into `vscode/cosmic-monochrome-theme-<version>.vsix` and installs
that with the editor's CLI (`cursor --install-extension`), so the theme is
listed under Extensions and running the script again updates it. Then press
<kbd>Ctrl</kbd>+<kbd>K</kbd> <kbd>Ctrl</kbd>+<kbd>T</kbd> and pick **Cosmic Monochrome**.

No CLI on the PATH (an AppImage, say): the script still builds the `.vsix`;
install it from Extensions → `...` → **Install from VSIX**.

## What it colours

Code is coloured the way Neovim is in the rice (`nvim/colors/*.lua`):

| Role | Monochrome |
|------|------------|
| Keywords, tags | ![#DDDDDD](https://placehold.co/12x12/DDDDDD/DDDDDD.png) `#DDDDDD` |
| Functions, tag attributes | ![#CCCCCC](https://placehold.co/12x12/CCCCCC/CCCCCC.png) `#CCCCCC` |
| Strings | ![#AAAAAA](https://placehold.co/12x12/AAAAAA/AAAAAA.png) `#AAAAAA` |
| Numbers, constants | ![#BDBDBD](https://placehold.co/12x12/BDBDBD/BDBDBD.png) `#BDBDBD` |
| Types, classes, modules | ![#A7A7A7](https://placehold.co/12x12/A7A7A7/A7A7A7.png) `#A7A7A7` |
| Imports, macros, decorators, escapes, `this` / `self` | ![#DDDDDD](https://placehold.co/12x12/DDDDDD/DDDDDD.png) `#DDDDDD` |
| Parameters (italic) | ![#A7A7A7](https://placehold.co/12x12/A7A7A7/A7A7A7.png) `#A7A7A7` |
| Operators, punctuation | ![#828282](https://placehold.co/12x12/828282/828282.png) `#828282` |
| Comments (italic) | ![#636363](https://placehold.co/12x12/636363/636363.png) `#636363` |
| Accent | ![#AAAAAA](https://placehold.co/12x12/AAAAAA/AAAAAA.png) `#AAAAAA` |

The workbench takes the window colour of the rice's `cosmic/*.ron` for the
editor, side bars, panel, title and status bar, the container colours for
menus, hovers, inputs and the command palette, and the accent for the active
tab line, buttons, badges and the menu highlight. The integrated terminal uses
the rice's COSMIC Terminal scheme (`cosmic-term/`), so command output looks the
same as in COSMIC Terminal.

Cursor's own panels (Agent, chat, inline diffs) have no colour keys of their
own. Cursor builds them from standard ones, and the theme sets those: the
button colour is the agent's accent, the side bar and panel colours are its
surfaces, the diff colours are its accept / reject highlights, and the
terminal's `blue` slot colours its links.

## Contrast

Text is at least 4.5:1 on the window background and on menus and hovers,
comments and line numbers at least 3:1, checked with a script over the text
and background pairs the theme sets.

On the highlighted current line, code can dip slightly under 4.5:1 and
comments under 3:1.
