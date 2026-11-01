-- Monochrome for WezTerm, part of cosmic-monochrome-theme (MIT).
-- Colours follow the COSMIC Terminal scheme (cosmic-term/).
--
-- Install: ./wezterm/install.sh puts this in ~/.config/wezterm/, then in
-- ~/.config/wezterm/wezterm.lua:
--   config.colors = require("monochrome")
-- To follow COSMIC's Dark / Light toggle with the Monochrome Day half installed too:
--   local dark = (wezterm.gui and wezterm.gui.get_appearance() or "Dark"):find("Dark")
--   config.colors = require(dark and "monochrome" or "monochromeday")

return {
  foreground = "#BDBDBD",
  background = "#111111",

  cursor_bg = "#AAAAAA",
  cursor_fg = "#111111",
  cursor_border = "#AAAAAA",
  compose_cursor = "#AAAAAA",

  selection_bg = "#393939",
  selection_fg = "none",

  scrollbar_thumb = "#484848",
  split = "#484848",

  -- black, red, green, yellow, blue, magenta, cyan, white
  ansi = { "#111111", "#DDDDDD", "#CCCCCC", "#AAAAAA", "#A7A7A7", "#BDBDBD", "#AAAAAA", "#BDBDBD" },
  brights = { "#484848", "#EEEEEE", "#DDDDDD", "#CCCCCC", "#BDBDBD", "#DDDDDD", "#CCCCCC", "#F5F5F5" },

  copy_mode_active_highlight_bg = { Color = "#AAAAAA" },
  copy_mode_active_highlight_fg = { Color = "#111111" },
  copy_mode_inactive_highlight_bg = { Color = "#CCCCCC" },
  copy_mode_inactive_highlight_fg = { Color = "#111111" },

  quick_select_label_bg = { Color = "#AAAAAA" },
  quick_select_label_fg = { Color = "#111111" },
  quick_select_match_bg = { Color = "#CCCCCC" },
  quick_select_match_fg = { Color = "#111111" },

  tab_bar = {
    background = "#111111",
    active_tab = { bg_color = "#AAAAAA", fg_color = "#111111", intensity = "Bold" },
    inactive_tab = { bg_color = "#1C1C1C", fg_color = "#A7A7A7" },
    inactive_tab_hover = { bg_color = "#2A2A2A", fg_color = "#BDBDBD" },
    new_tab = { bg_color = "#111111", fg_color = "#A7A7A7" },
    new_tab_hover = { bg_color = "#2A2A2A", fg_color = "#AAAAAA" },
  },
}
