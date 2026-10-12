<div align="center">

# COSMIC · Monochrome

Pop!_OS 24.04 on COSMIC in grays only: desktop, terminal, shell, Firefox.

![Pop!_OS](https://img.shields.io/badge/Pop!_OS-24.04_LTS-aaaaaa?style=for-the-badge&logo=popos&logoColor=white)
![COSMIC](https://img.shields.io/badge/COSMIC-1.0.0-bdbdbd?style=for-the-badge)
![Monochrome](https://img.shields.io/badge/Theme-Monochrome_Dark-828282?style=for-the-badge)
![Firefox](https://img.shields.io/badge/Firefox-Monochrome_Dark-dddddd?style=for-the-badge&logo=firefox-browser&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-636363?style=for-the-badge)

</div>

---
![Pop!_OS COSMIC desktop with the Monochrome theme](assets/screenshot.png)

## Palette

Sourced from the monochrome dark slots in
[claude-desktop-extra](https://github.com/patrickjaja/claude-desktop-extra/blob/master/themes/palettes/monochrome.svg).

| Role | Color | Hex |
|------|-------|-----|
| Background | ![#111111](https://placehold.co/12x12/111111/111111.png) Void | `#111111` |
| Elevated | ![#1c1c1c](https://placehold.co/12x12/1c1c1c/1c1c1c.png) Surface | `#1c1c1c` |
| Text | ![#828282](https://placehold.co/12x12/828282/828282.png) Mute | `#828282` |
| Primary | ![#aaaaaa](https://placehold.co/12x12/aaaaaa/aaaaaa.png) Accent | `#aaaaaa` |
| Secondary | ![#a7a7a7](https://placehold.co/12x12/a7a7a7/a7a7a7.png) Control | `#a7a7a7` |
| Border | ![#bdbdbd](https://placehold.co/12x12/bdbdbd/bdbdbd.png) Edge | `#bdbdbd` |
| Success | ![#cccccc](https://placehold.co/12x12/cccccc/cccccc.png) High | `#cccccc` |
| Error | ![#dddddd](https://placehold.co/12x12/dddddd/dddddd.png) Higher | `#dddddd` |

There is no hue. Status colours are lighter grays, not green / red.

---

## Repo Structure

```
.
├── assets
│   ├── screenshot.png           # README screenshot
│   └── wallpaper.png            # the reaper on the bare desktop
├── backgrounds/                 # wallpapers, monochrome-<subject>.png (see Icons and wallpaper)
├── btop
│   └── Monochrome.theme         # btop colour theme
├── cosmic
│   ├── Monochrome-Dark.ron      # COSMIC Appearance import
│   ├── config/                  # baseline settings: fonts, icons, terminal look
│   └── install.sh
├── cosmic-term
│   └── Monochrome-Dark-term.ron # COSMIC Terminal colour scheme
├── icons
│   └── install.sh               # Cosmic-Monochrome icon pack from cosmic-icon-themes
├── fastfetch
│   ├── config.jsonc             # gray fastfetch config
│   ├── cosmic.txt               # COSMIC logo
│   └── install.sh
├── firefox
│   ├── theme                    # Cosmic Monochrome theme add-on (manifest + icons)
│   ├── chrome
│   │   ├── userChrome.css       # rounded chrome, grey menu hover
│   │   └── userContent.css      # new tab accents, blank tiles
│   ├── install.sh
│   └── README.md
├── lsd
│   ├── config.yaml              # theme: custom
│   ├── colors.yaml              # permission / size / date / git columns
│   └── install.sh
├── nvim                         # Neovim colorscheme, LazyVim spec, RON syntax, install.sh
├── scripts
│   └── update_system.sh         # nala + flatpak, monochrome ANSI
├── zsh
│   ├── monochrome.zsh           # LS_COLORS, highlighting colours, aliases, starship
│   └── install.sh
├── docs
│   └── showcase.md              # the rice describing itself, for the Postilla pane of the screenshot
├── LICENSE
└── README.md
```

---

## COSMIC Desktop

Settings → Desktop → Appearance → **Dark** → **Import** → `cosmic/Monochrome-Dark.ron`

Accent tiles will all be gray. That is the theme. Use the `+` control if you want a custom swatch.

Frosted glass is on in the `.ron` at `frosted: Low` with an opacity table of
0.66 to 0.96, tinted with the palette's middle neutral, for windows, panel,
applets and system UI (maximized apps stay solid), and corners are squared
(`radius_*: 2.0`), the same as the DarkGold baseline. Adjust frosted glass on
Appearance → Style → Frosted glass after import; those sliders survive a theme switch.

Export from Appearance if you tweak backgrounds / tints so you do not lose them.

### Baseline settings

`cosmic/config/` holds the settings that make up the look and rarely change
(panel, dock, applets and shortcuts are left out on purpose):

| Where | Setting |
|-------|---------|
| Fonts | Interface `Maple Normal UI`, monospace `Maple Mono Normal NFM` |
| Icons | Cosmic-Monochrome-Silver |
| Windows | Minimize / maximize buttons hidden, theme applied to GNOME apps |
| Terminal | Maple Mono 15 (weights 500 / bold 800 / dim 300), 77% opacity, no header bar, Monochrome Dark |

Install the [Maple fonts](https://github.com/subframe7536/maple-font) and the
Cosmic-Monochrome icons (see Icons below) and import the terminal scheme first, then:

```bash
./cosmic/install.sh
```

It backs up each file it replaces to `*.bak` and COSMIC applies it live.

---

## COSMIC Terminal

The desktop `.ron` does not colour ANSI text.

1. COSMIC Terminal → **View → Color schemes…** (not Settings → Appearance)
2. Dark tab → **Import** → `cosmic-term/Monochrome-Dark-term.ron`
3. View → Settings → Appearance → Color scheme (dark) → **Monochrome Dark**

If a profile is set as default, set the scheme on that profile too or the dropdown will look like it did nothing.

---

## Firefox

Two layers:

1. **Theme (colours):** install
   **[cosmic-monochrome-theme on addons.mozilla.org](https://addons.mozilla.org/en-US/firefox/addon/cosmic-monochrome-theme/)**.
   This is the main look.
2. **Stylesheets (optional):** `firefox/chrome/` adds rounded corners, grey
   menu hover, grey accents and blank new-tab tiles on top of the add-on
   (they also work with Firefox's built-in Dark theme):

```bash
./firefox/install.sh
```

Fully quit Firefox afterward. Details and CSS rules: [`firefox/README.md`](firefox/README.md).

---

## Scripts

### `update_system.sh`

nala + flatpak updater. Headers, success, and the figlet ramp are gray.

```bash
chmod +x scripts/update_system.sh
./scripts/update_system.sh
```

---

## Terminal extras

Need a [Nerd Font](https://www.nerdfonts.com/) in the terminal for the icons
(Maple Mono NFM in the baseline above).

### zsh

`zsh/monochrome.zsh` is the rice part of the shell only: `LS_COLORS` (also
used by lsd for file names and by the completion menu), gray colours for
zsh-autosuggestions and zsh-syntax-highlighting, lsd / bat / nvim aliases and
the starship prompt. With no hue, bold / italic / underline tell file types
and errors apart. Your own `~/.zshrc` stays private and sources it.

Needs zsh + [oh-my-zsh](https://ohmyz.sh/). `install.sh` clones the two
plugins if missing and appends one `source` line to `~/.zshrc` (backup in
`~/.zshrc.bak`):

```bash
./zsh/install.sh
exec zsh
```

In `~/.zshrc` keep `ZSH_THEME=""` and
`plugins=(git sudo zsh-autosuggestions zsh-syntax-highlighting)`.

### lsd

File names are coloured by `LS_COLORS` from `zsh/monochrome.zsh`;
`lsd/colors.yaml` colours the other columns with the 256-colour grays nearest
the palette (253 `#dddddd`, 252 `#cccccc`, 250 `#bdbdbd`, 248 `#aaaaaa`,
244 `#828282`, 241 `#636363`). lsd 1.0.0 does not accept `#hex` there.

```bash
./lsd/install.sh
lsd -l
```

### fastfetch

COSMIC logo and Hardware / Software / Age boxes in grays. `install.sh` backs
up any existing `~/.config/fastfetch/config.jsonc` to `config.jsonc.bak`.

```bash
./fastfetch/install.sh
fastfetch
```

### Neovim

`nvim/` carries the rice into Neovim: a dependency-free colorscheme built from
the palette (`nvim/colors/monochrome.lua`), a LazyVim spec that selects it and makes
sure the treesitter parsers for the files in this repo are installed
(`nvim/lua/plugins/monochrome.lua`), and a small RON syntax file so `cosmic/*.ron`
is coloured even before the parser exists. `:terminal` inside Neovim uses the
Monochrome Dark scheme.

```bash
./nvim/install.sh
# restart nvim; LazyVim switches to the monochrome colorscheme
```

Without LazyVim, copy `nvim/colors/monochrome.lua` to `~/.config/nvim/colors/` and
run `:colorscheme monochrome`.

### btop

`btop/Monochrome.theme`: near-black background, gray boxes, meters ramp from
dim gray to near-white.

```bash
mkdir -p ~/.config/btop/themes
cp btop/Monochrome.theme ~/.config/btop/themes/
# btop → Esc → Options → Color theme → Monochrome
```

---

## Icons and wallpaper

Icons: **Cosmic-Monochrome**, the [Kanagawa icons](https://github.com/Fausto-Korpsvart/Kanagawa-GKT-Theme/tree/main/icons/Kanagawa)
by Fausto Korpsvart recolored to this palette in
[cosmic-icon-themes](https://github.com/atraxsrc/cosmic-icon-themes). Folders come in
three colors: **Silver** `#AAAAAA` (default), **White** `#DDDDDD` and **Dark** `#2A2A2A` with light symbols.

![Cosmic-Monochrome folder colors](https://raw.githubusercontent.com/atraxsrc/cosmic-icon-themes/main/previews/Cosmic-Monochrome.png)

```bash
./icons/install.sh                 # Silver folders
./icons/install.sh --variant Dark  # or White
```

It downloads the pack from the latest cosmic-icon-themes release, checks its SHA256,
installs it to `~/.local/share/icons/` and sets it as the COSMIC icon theme.
Restart open apps afterwards (Files caches icons per window).
Add `--system` to install to `/usr/share/icons` instead, for every user and the
login screen (asks for sudo); `--user` is the default.

Wallpapers ship in [`backgrounds/`](backgrounds/), named `monochrome-<subject>.png`:
the thirteen subjects every dark rice has, rendered in greys only.
The reaper and the blueprint are Harbor Dark subjects, the eagle and the
portrait are from The Greek (both [HANCORE-linux](https://github.com/HANCORE-linux),
MIT); the samurai, sushi, geisha, mug and street are from the Tokyo Night set in
[cool-wallpapers](https://github.com/atraxsrc/cool-wallpapers). Each was rendered
again in this palette, then upscaled.

| File | Size | What it is |
|------|------|------------|
| [`monochrome-reaper-skull.png`](backgrounds/monochrome-reaper-skull.png) | 5120x3200 | Harbor Dark reaper in greys, the one in the screenshot |
| [`monochrome-hyundai-blueprint.png`](backgrounds/monochrome-hyundai-blueprint.png) | 5120x3200 | Hyundai N Vision 74 blueprint, line work |
| [`monochrome-cosmic-astronaut.png`](backgrounds/monochrome-cosmic-astronaut.png) | 5376x3312 | The COSMIC astronaut in greys. Its light top edge shows through the frosted panel, so the panel looks pale behind white applets |
| [`monochrome-samurai.png`](backgrounds/monochrome-samurai.png) | 5120x3200 | Samurai silhouette against a full moon |
| [`monochrome-sushi-switch.png`](backgrounds/monochrome-sushi-switch.png) | 5120x3200 | Sushi on a Switch, clouds and wave pattern |
| [`monochrome-geisha-vivid.png`](backgrounds/monochrome-geisha-vivid.png) | 5120x3200 | Geisha in a patterned kimono inside a circle |
| [`monochrome-js-mug.png`](backgrounds/monochrome-js-mug.png) | 5120x3200 | JS mug with a splash |
| [`monochrome-neon-city.png`](backgrounds/monochrome-neon-city.png) | 5120x3200 | Rainy street of lit shopfronts |
| [`monochrome-eagle.png`](backgrounds/monochrome-eagle.png) | 5376x3312 | Ink eagle head with splashes |
| [`monochrome-anime.png`](backgrounds/monochrome-anime.png) | 5376x3312 | Ink portrait, long hair, splashes |
| [`monochrome-city.png`](backgrounds/monochrome-city.png) | 5376x3312 | Night skyline, one lit tower, a disc in the sky |
| [`monochrome-panel.png`](backgrounds/monochrome-panel.png) | 5120x3200 | Layered circuit panels, one lit strip |
| [`monochrome-tower.png`](backgrounds/monochrome-tower.png) | 5120x3200 | Isometric dark tower on a platform |

Settings → Wallpaper → Add image → a file from `backgrounds/`.

![The reaper wallpaper on the Monochrome desktop, panel only](assets/wallpaper.png)

---

## Setup

```bash
git clone https://github.com/atraxsrc/cosmic-monochrome-theme.git
cd cosmic-monochrome-theme

# desktop
# Settings → Appearance → Dark → Import cosmic/Monochrome-Dark.ron

# terminal
# View → Color schemes → Import cosmic-term/Monochrome-Dark-term.ron

# firefox add-on
# https://addons.mozilla.org/en-US/firefox/addon/cosmic-monochrome-theme/

# optional extra chrome
./firefox/install.sh

# shell + terminal tools (see Terminal extras above)
./zsh/install.sh
./lsd/install.sh
./fastfetch/install.sh
./nvim/install.sh
mkdir -p ~/.config/btop/themes && cp btop/Monochrome.theme ~/.config/btop/themes/

# wallpaper
# Settings → Wallpaper → Add image → a file from backgrounds/ (see Icons and wallpaper above)

./icons/install.sh                  # icons (see Icons above)
# Maple fonts (https://github.com/subframe7536/maple-font), then
# fonts, icons, terminal look from cosmic/config/
./cosmic/install.sh
```

---

## Stack

| Tool | What it does |
|------|-------------|
| [Pop!_OS 24.04](https://pop.system76.com/) | Base OS by System76 |
| [COSMIC DE](https://system76.com/cosmic) | Desktop environment |
| [oh-my-zsh](https://ohmyz.sh/) | zsh framework + plugins |
| [lsd](https://github.com/lsd-rs/lsd) | `ls` with icons and colours |
| [fastfetch](https://github.com/fastfetch-cli/fastfetch) | System info |
| [btop](https://github.com/aristocratos/btop) | Resource monitor |
| [cosmic-icon-themes](https://github.com/atraxsrc/cosmic-icon-themes) | Icon pack (Cosmic-Monochrome), recolored from [Kanagawa icons](https://github.com/Fausto-Korpsvart/Kanagawa-GKT-Theme/tree/main/icons/Kanagawa) |

## License

MIT
