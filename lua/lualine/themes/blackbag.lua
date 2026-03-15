-- Lualine theme for blackbag.nvim
-- Matches the colorscheme palette so lualine auto-detection works

local colors = {
  bg = "#0a0e14",
  bg_inactive = "#16191f",
  fg = "#d0e8ff",
  fg_dim = "#a0c5e0",
  fg_muted = "#7099ba",
  comment = "#556677",
  black = "#000000",
  blue = "#78b9ff",
  cyan_bright = "#88eeff",
  teal = "#3eb489",
  orange = "#ff8800",
  red_light = "#ff6b6b",
}

return {
  normal = {
    a = { fg = colors.black, bg = colors.blue, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg_inactive },
    c = { fg = colors.fg_dim, bg = colors.bg },
  },
  insert = {
    a = { fg = colors.black, bg = colors.teal, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg_inactive },
    c = { fg = colors.fg_dim, bg = colors.bg },
  },
  visual = {
    a = { fg = colors.black, bg = colors.orange, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg_inactive },
    c = { fg = colors.fg_dim, bg = colors.bg },
  },
  replace = {
    a = { fg = colors.black, bg = colors.red_light, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg_inactive },
    c = { fg = colors.fg_dim, bg = colors.bg },
  },
  command = {
    a = { fg = colors.black, bg = colors.cyan_bright, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg_inactive },
    c = { fg = colors.fg_dim, bg = colors.bg },
  },
  inactive = {
    a = { fg = colors.comment, bg = colors.bg_inactive },
    b = { fg = colors.comment, bg = colors.bg_inactive },
    c = { fg = colors.comment, bg = colors.bg },
  },
}
