-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Toggle between light and dark backgrounds
vim.keymap.set("n", "<leader>uu", function()
  if vim.o.background == "dark" then
    vim.o.background = "light"
  else
    vim.o.background = "dark"
  end
end, { desc = "Toggle Dark/Light theme" })

-- Toggle background transparency
local transparent = false
local groups = {
  "Normal",
  "NormalNC",
  "NormalFloat",
  "FloatBorder",
  "SignColumn",
  "LineNr",
}

vim.keymap.set("n", "<leader>uU", function()
  transparent = not transparent
  for _, g in ipairs(groups) do
    vim.api.nvim_set_hl(0, g, { bg = transparent and "none" or nil })
  end
  vim.notify("Transparency " .. (transparent and "ON" or "OFF"))
end, { desc = "Toggle transparency" })
