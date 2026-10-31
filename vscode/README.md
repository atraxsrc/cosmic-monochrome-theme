# Cosmic Monochrome / Cosmic Monochrome Day for Cursor

Colour themes for [Cursor](https://cursor.com) from the COSMIC
[Monochrome](https://github.com/atraxsrc/cosmic-monochrome-theme) rice and its light half
[Monochrome Day](https://github.com/atraxsrc/cosmic-monochromeday-theme): **Cosmic Monochrome** and **Cosmic Monochrome Day** in one
extension. It is a plain VS Code theme extension, so VS Code and VSCodium
take it too. The same extension ships in both repos.

## Install

```bash
./vscode/install.sh                # Cursor
./vscode/install.sh code codium    # VS Code / VSCodium instead
```

It packs this folder into `vscode/cosmic-monochrome-theme-<version>.vsix` and installs
that with the editor's CLI (`cursor --install-extension`), so the theme is
listed under Extensions and running the script again updates it. Then press
<kbd>Ctrl</kbd>+<kbd>K</kbd> <kbd>Ctrl</kbd>+<kbd>T</kbd> and pick **Cosmic Monochrome** or **Cosmic Monochrome Day**.

No CLI on the PATH (an AppImage, say): the script still builds the `.vsix`;
install it from Extensions → `...` → **Install from VSIX**.

## Follow COSMIC's Dark / Light toggle

COSMIC tells apps which mode is on through its desktop portal. With these
lines in Cursor's `settings.json` (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd> →
**Preferences: Open User Settings (JSON)**), Cursor switches between the two
themes along with the desktop:

```jsonc
"window.autoDetectColorScheme": true,
"workbench.preferredDarkColorTheme": "Cosmic Monochrome",
"workbench.preferredLightColorTheme": "Cosmic Monochrome Day"
```

## What it colours

Code is coloured the way Neovim is in the rice (`nvim/colors/*.lua`):

| Role | Monochrome | Monochrome Day |
|------|---|---|
| Keywords, tags | ![#DDDDDD](https://placehold.co/12x12/dddddd/dddddd.png) `#DDDDDD` | ![#424242](https://placehold.co/12x12/424242/424242.png) `#424242` |
| Functions, tag attributes | ![#CCCCCC](https://placehold.co/12x12/cccccc/cccccc.png) `#CCCCCC` | ![#515151](https://placehold.co/12x12/515151/515151.png) `#515151` |
| Strings | ![#AAAAAA](https://placehold.co/12x12/aaaaaa/aaaaaa.png) `#AAAAAA` | ![#5C5C5C](https://placehold.co/12x12/5c5c5c/5c5c5c.png) `#5C5C5C` |
| Numbers, constants | ![#BDBDBD](https://placehold.co/12x12/bdbdbd/bdbdbd.png) `#BDBDBD` | ![#1A1A1A](https://placehold.co/12x12/1a1a1a/1a1a1a.png) `#1A1A1A` |
| Types, classes, modules | ![#A7A7A7](https://placehold.co/12x12/a7a7a7/a7a7a7.png) `#A7A7A7` | ![#5C5C5C](https://placehold.co/12x12/5c5c5c/5c5c5c.png) `#5C5C5C` |
| Imports, macros, decorators, escapes, `this` / `self` | ![#DDDDDD](https://placehold.co/12x12/dddddd/dddddd.png) `#DDDDDD` | ![#424242](https://placehold.co/12x12/424242/424242.png) `#424242` |
| Parameters (italic) | ![#A7A7A7](https://placehold.co/12x12/a7a7a7/a7a7a7.png) `#A7A7A7` | ![#5C5C5C](https://placehold.co/12x12/5c5c5c/5c5c5c.png) `#5C5C5C` |
| Operators, punctuation | ![#828282](https://placehold.co/12x12/828282/828282.png) `#828282` | ![#616161](https://placehold.co/12x12/616161/616161.png) `#616161` |
| Comments (italic) | ![#636363](https://placehold.co/12x12/636363/636363.png) `#636363` | ![#818181](https://placehold.co/12x12/818181/818181.png) `#818181` |
| Accent | ![#AAAAAA](https://placehold.co/12x12/aaaaaa/aaaaaa.png) `#AAAAAA` | ![#5C5C5C](https://placehold.co/12x12/5c5c5c/5c5c5c.png) `#5C5C5C` |
| Errors, deleted, conflicts | ![#DDDDDD](https://placehold.co/12x12/dddddd/dddddd.png) `#DDDDDD` | ![#424242](https://placehold.co/12x12/424242/424242.png) `#424242` |

The workbench takes the window colour of the rice's `cosmic/*.ron` for the
editor, side bars, panel, title and status bar, the container colours for
menus, hovers, inputs and the command palette, and the grey accent for the
active tab line, buttons, badges and the menu highlight. Button hover is a
step away from the accent, ![#B7B7B7](https://placehold.co/12x12/b7b7b7/b7b7b7.png) `#B7B7B7` in Monochrome and ![#5D5D5D](https://placehold.co/12x12/5d5d5d/5d5d5d.png) `#5D5D5D` in Monochrome Day. The integrated terminal uses the rice's COSMIC
Terminal scheme (`cosmic-term/`), so command output looks the same as in
COSMIC Terminal.

Cursor's own panels (Agent, chat, inline diffs) have no colour keys of their
own. Cursor builds them from standard ones, and the theme sets those: the
button colour is the agent's accent, the side bar and panel colours are its
surfaces, the diff colours are its accept / reject highlights, and the
terminal's `blue` slot colours its links.

## Contrast

Text is at least 4.5:1 on the window background and on menus and hovers,
comments and line numbers at least 3:1, in both halves.

- **Monochrome**: Grey ![#AAAAAA](https://placehold.co/12x12/aaaaaa/aaaaaa.png)
  `#AAAAAA` is 8.1:1 on the window background and 7.3:1 on the container colour
  ![#1C1C1C](https://placehold.co/12x12/1c1c1c/1c1c1c.png) `#1C1C1C`, so it
  stays the same colour everywhere, the match highlight in the suggest and hover
  widgets included. Keywords on the highlighted current line are 12.5:1; comments
  dip under 3:1 there.
- **Monochrome Day**: Grey ![#5C5C5C](https://placehold.co/12x12/5c5c5c/5c5c5c.png)
  `#5C5C5C` is 5.4:1 on the window background and 5.9:1 on the container colour
  ![#F1F1F1](https://placehold.co/12x12/f1f1f1/f1f1f1.png) `#F1F1F1`, so it
  stays the same colour everywhere, the match highlight in the suggest and hover
  widgets included. Keywords on the highlighted current line are 8.9:1; comments
  dip under 3:1 there.
