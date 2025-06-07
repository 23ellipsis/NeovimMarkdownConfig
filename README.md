# Installation

```
git clone https://github.com/23ellipsis/NvimConfig ~/.config/nvim/
```

# Theme
For the theme provided in the screenshot, paste the following into `~/.local/share/nvim/lazy/base46/lua/base46/themes/mytheme.lua`
```
local M = {}

M.base_30 = {
  white = "#c9c1fb",
  darker_black = "#000013",
  black = "#050517", -- nvim bg
  black2 = "#040322",
  one_bg = "#2a2a34",
  one_bg2 = "#0f0f33",
  one_bg3 = "#0b0b2a",
  grey = "#6666ff",
  grey_fg = "#494987",
  grey_fg2 = "#09091f",
  light_grey = "#a3a3ff",
  red = "#1a27dd",
  baby_pink = "#6904b1",
  pink = "#dc26c1",
  line = "#5555ce", -- for lines like vertsplit
  green = "#00dae5",
  vibrant_green = "#008fe8",
  blue = "#ff2dd5",
  nord_blue = "#413eff",
  yellow = "#9814f0",
  sun = "#8808ff",
  purple = "#f780da",
  dark_purple = "#f43ef7",
  teal = "#8ef1e8",
  orange = "#6ee4eb",
  cyan = "#49c9ff",
  statusline_bg = "#100232",
  lightbg = "#4801ac",
  pmenu_bg = "#8b89ff",
  folder_bg = "#00d4dc",
}

M.base_16 = {
  base00 = "#050517",
  base01 = "#2c2e3e",
  base02 = "#3D4059",
  base03 = "#313449",
  base04 = "#63718b",
  base05 = "#bac0cb",
  base06 = "#c5cbd6",
  base07 = "#c9c1fb",
  base08 = "#1a27dd",
  base09 = "#6ee4eb",
  base0A = "#9814f0",
  base0B = "#00dae5",
  base0C = "#49c9ff",
  base0D = "#ff2dd5",
  base0E = "#f780da",
  base0F = "#6904b1",
}

M.type = "dark"

M = require("base46").override_theme(M, "mytheme")

return M
```

then open neovim and hit <leader + th> and choose "mytheme"


