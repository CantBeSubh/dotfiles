return {
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    -- opts = {
    --   transparent = true,
    -- },
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "snazzy",
      -- colorscheme = "cyberdream",
      -- colorscheme = "catppuccin",
    },
  },
}

-- return {
--     { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
--     {
--         "LazyVim/LazyVim",
--         opts = {
--             colorscheme = "moonfly",
--         }
--     }
-- }
