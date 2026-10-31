# COSMIC Terminal schemes

Colour schemes for COSMIC Terminal. The desktop `.ron` in `cosmic/` does not
colour ANSI text, so the terminal needs its own import.

1. COSMIC Terminal → **View → Color schemes…** (not Settings → Appearance)
2. **Dark** tab → **Import** → a `.ron` from this folder
3. View → Settings → Appearance → Color scheme (dark) → the scheme name

If a profile is set as default, set the scheme on that profile too or the
dropdown will look like it did nothing. `cosmic/install.sh` selects **Monochrome Dark**,
so import that one at least.

Every scheme here keeps the 16 ANSI colours of Monochrome Dark. Only the plain text
colour and the dim text change, so bat, lsd, starship, nala and btop look the
same whichever one you pick. The cursor stays the accent grey ![#AAAAAA](https://placehold.co/12x12/aaaaaa/aaaaaa.png) `#AAAAAA`.

The ANSI slots follow the rice: `red` is higher
![#DDDDDD](https://placehold.co/12x12/dddddd/dddddd.png) `#DDDDDD`; `green` is high
![#CCCCCC](https://placehold.co/12x12/cccccc/cccccc.png) `#CCCCCC`; `yellow` is the
accent grey ![#AAAAAA](https://placehold.co/12x12/aaaaaa/aaaaaa.png) `#AAAAAA`;
`blue` is control ![#A7A7A7](https://placehold.co/12x12/a7a7a7/a7a7a7.png)
`#A7A7A7`; `magenta` is edge grey, the plain text colour
![#BDBDBD](https://placehold.co/12x12/bdbdbd/bdbdbd.png) `#BDBDBD`; `cyan` is the
accent grey ![#AAAAAA](https://placehold.co/12x12/aaaaaa/aaaaaa.png) `#AAAAAA`;
`white` is edge grey ![#BDBDBD](https://placehold.co/12x12/bdbdbd/bdbdbd.png)
`#BDBDBD`. Directories are not affected: `LS_COLORS` in `zsh/monochrome.zsh` colours
them in truecolor.

## Which one

Edge grey ![#BDBDBD](https://placehold.co/12x12/bdbdbd/bdbdbd.png) `#BDBDBD` is the default. The others move through Monochrome Dark's own greys
and tints: calmer above it, brighter below it, for whoever finds the default
glares at night or reads too dim by day.

| Scheme | Plain text | Contrast | Also used for |
|--------|------------|----------|---------------|
| Monochrome Dark Mute | ![#828282](https://placehold.co/12x12/828282/828282.png) `#828282` | 4.9:1 | muted text, the dim text colour and every `dim` slot |
| Monochrome Dark Control | ![#A7A7A7](https://placehold.co/12x12/a7a7a7/a7a7a7.png) `#A7A7A7` | 7.8:1 | the `blue` slot |
| Monochrome Dark Accent | ![#AAAAAA](https://placehold.co/12x12/aaaaaa/aaaaaa.png) `#AAAAAA` | 8.1:1 | the accent, the cursor, the `yellow` and `cyan` slots |
| Monochrome Dark High | ![#CCCCCC](https://placehold.co/12x12/cccccc/cccccc.png) `#CCCCCC` | 11.8:1 | success, the `green` slot |
| Monochrome Dark Higher | ![#DDDDDD](https://placehold.co/12x12/dddddd/dddddd.png) `#DDDDDD` | 13.9:1 | errors, the `red` slot and the bright text colour |
| **Monochrome Dark** (default) | ![#BDBDBD](https://placehold.co/12x12/bdbdbd/bdbdbd.png) `#BDBDBD` | 10.1:1 | the plain text colour of the rice |

When plain text shares a colour with an ANSI slot, output in that slot stops
standing out: the `blue` slot in Monochrome Dark Control, for example, looks like plain text.
Errors and numbers stand out more against the dimmer schemes than against
edge grey.

**Bold:** `bright_foreground` (![#DDDDDD](https://placehold.co/12x12/dddddd/dddddd.png) `#DDDDDD`) only colours bold text when
`use_bright_bold` is on. The baseline config in `cosmic/config/` leaves it off,
so bold text is the plain text colour at weight 800.

Previews are rendered in Fira Mono on the terminal background ![#111111](https://placehold.co/12x12/111111/111111.png) `#111111`, not
taken from the terminal. In COSMIC you get Maple Mono at 77% opacity over the wallpaper, so text looks a little softer and contrast a little lower.

## Dark

**Monochrome Dark** · `Monochrome-Dark-term.ron` · edge grey ![#BDBDBD](https://placehold.co/12x12/bdbdbd/bdbdbd.png) `#BDBDBD`, 10.1:1. The default.

![Monochrome Dark](../assets/cosmic-term/Monochrome-Dark-term.png)

**Monochrome Dark Mute** · `Monochrome-Dark-term-mute.ron` · ![#828282](https://placehold.co/12x12/828282/828282.png) `#828282`, 4.9:1. Muted text, the dim text colour and every `dim` slot.

![Monochrome Dark Mute](../assets/cosmic-term/Monochrome-Dark-term-mute.png)

**Monochrome Dark Control** · `Monochrome-Dark-term-control.ron` · ![#A7A7A7](https://placehold.co/12x12/a7a7a7/a7a7a7.png) `#A7A7A7`, 7.8:1. The `blue` slot.

![Monochrome Dark Control](../assets/cosmic-term/Monochrome-Dark-term-control.png)

**Monochrome Dark Accent** · `Monochrome-Dark-term-accent.ron` · ![#AAAAAA](https://placehold.co/12x12/aaaaaa/aaaaaa.png) `#AAAAAA`, 8.1:1. The accent, the cursor, the `yellow` and `cyan` slots.

![Monochrome Dark Accent](../assets/cosmic-term/Monochrome-Dark-term-accent.png)

**Monochrome Dark High** · `Monochrome-Dark-term-high.ron` · ![#CCCCCC](https://placehold.co/12x12/cccccc/cccccc.png) `#CCCCCC`, 11.8:1. Success, the `green` slot.

![Monochrome Dark High](../assets/cosmic-term/Monochrome-Dark-term-high.png)

**Monochrome Dark Higher** · `Monochrome-Dark-term-higher.ron` · ![#DDDDDD](https://placehold.co/12x12/dddddd/dddddd.png) `#DDDDDD`, 13.9:1. Errors, the `red` slot and the bright text colour.

![Monochrome Dark Higher](../assets/cosmic-term/Monochrome-Dark-term-higher.png)

Contrast is plain text on the terminal background, WCAG 2.
