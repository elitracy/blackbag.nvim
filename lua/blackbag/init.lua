-- Black Bag Neovim Theme Plugin
local M = {}

function M.load()
  vim.cmd("colorscheme blackbag")
end

function M.setup()
  -- Auto-load theme (optional)
  M.load()
end

return M
