-- snazzy.lua — generated from Colorscheme Lab (v5 — operator + cursive)
-- Drop in ~/.config/nvim/colors/snazzy.lua
-- Then set colorscheme = "snazzy" in your LazyVim opts.
--
-- ┌─ CURSIVE ITALICS ─────────────────────────────────────────────┐
-- │ Italics below do NOTHING unless your terminal font has a       │
-- │ genuine CURSIVE italic. FiraCode does not (plain oblique).     │
-- │ Recommended free font: Victor Mono (closest to Operator Mono). │
-- │   brew install --cask font-victor-mono-nerd-font              │
-- │ Then set your terminal font to "VictorMono Nerd Font".        │
-- │ Ghostty:  font-family = "VictorMono Nerd Font"                │
-- │           font-style-italic = "VictorMono Nerd Font Italic"    │
-- │ Alacritty: set [font.italic] family = "VictorMono Nerd Font"   │
-- │ Neovim (Neovide/GUI): needs a GUI or a terminal that renders   │
-- │ the font's italic face — italics are a FONT feature, not a     │
-- │ colorscheme one. This file only marks WHICH groups are italic. │
-- └───────────────────────────────────────────────────────────────┘
--
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end
vim.o.background = "light"
vim.g.colors_name = "snazzy-light"

-- Light palette — dark, saturated hues tuned for contrast on a warm off-white bg.
local c = {
  bg = "#faf8f5", -- warm off-white (less clinical than pure white)
  fg = "#2b2d3a", -- near-black, warm — high contrast body text
  black = "#faf8f5",
  red = "#d1273d", -- deep rose
  green = "#1f8a4c", -- forest green
  yellow = "#9a6700", -- dark amber (readable where pure yellow fails)
  cyan = "#0077cc", -- strong azure
  blue = "#0057b8", -- deep blue
  magenta = "#c21e83", -- deep magenta/berry
  white = "#2b2d3a",
  grey = "#8a8d99", -- comments — muted but still legible
  sel = "#dfe1e8", -- selection block, cool grey
  seltext = "#2b2d3a",
  cursor = "#2b2d3a",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor UI
hi("Normal", { fg = c.fg, bg = c.bg })
hi("NormalFloat", { fg = c.fg, bg = c.bg })
hi("FloatBorder", { fg = c.grey, bg = c.bg })
hi("Cursor", { fg = c.bg, bg = c.cursor })
hi("CursorLine", { bg = c.black })
hi("CursorLineNr", { fg = c.yellow, bold = true })
hi("LineNr", { fg = c.grey })
hi("SignColumn", { bg = c.bg })
hi("ColorColumn", { bg = c.black })
hi("Visual", { fg = c.seltext, bg = c.sel })
hi("Search", { fg = c.bg, bg = c.yellow })
hi("IncSearch", { fg = c.bg, bg = c.magenta })
hi("StatusLine", { fg = c.fg, bg = c.black })
hi("Pmenu", { fg = c.fg, bg = c.black })
hi("PmenuSel", { fg = c.bg, bg = c.cyan })
hi("VertSplit", { fg = c.grey })
hi("WinSeparator", { fg = c.grey })
hi("MatchParen", { fg = c.magenta, bold = true })
hi("Folded", { fg = c.grey, bg = c.black })
hi("NonText", { fg = c.grey })
hi("Whitespace", { fg = c.grey })

-- Syntax
hi("Comment", { fg = c.grey, italic = true })
hi("Constant", { fg = c.green })
hi("String", { fg = c.green })
hi("Character", { fg = c.green })
hi("Number", { fg = c.green })
hi("Boolean", { fg = c.green })
hi("Identifier", { fg = c.fg })
hi("Function", { fg = c.cyan })
hi("Statement", { fg = c.magenta })
hi("Keyword", { fg = c.magenta })
hi("Operator", { fg = c.fg })
hi("Type", { fg = c.yellow })
hi("PreProc", { fg = c.magenta })
hi("Special", { fg = c.cyan })
hi("Todo", { fg = c.bg, bg = c.yellow, bold = true })
hi("Error", { fg = c.red })
hi("Underlined", { fg = c.blue, underline = true })

-- Treesitter
hi("@variable", { fg = c.fg })
hi("@variable.builtin", { fg = c.magenta, italic = true }) -- this/self
hi("@variable.member", { fg = c.yellow }) -- obj.property
hi("@property", { fg = c.yellow })
hi("@field", { fg = c.yellow })
hi("@function", { fg = c.cyan })
hi("@function.call", { fg = c.cyan })
hi("@function.builtin", { fg = c.cyan })
hi("@function.method", { fg = c.cyan })
hi("@method", { fg = c.cyan })
hi("@method.call", { fg = c.cyan })
hi("@constructor", { fg = c.red }) -- class names
hi("@keyword", { fg = c.magenta, italic = true })
hi("@keyword.function", { fg = c.magenta, italic = true })
hi("@keyword.import", { fg = c.magenta })
hi("@keyword.coroutine", { fg = c.magenta, italic = true }) -- async/await
hi("@keyword.modifier", { fg = c.magenta, italic = true }) -- static/public/async
hi("@type.qualifier", { fg = c.magenta, italic = true }) -- const/readonly modifiers
hi("@conditional", { fg = c.magenta })
hi("@repeat", { fg = c.magenta })
hi("@string", { fg = c.green })
hi("@number", { fg = c.green })
hi("@boolean", { fg = c.green })
hi("@constant", { fg = c.green })
hi("@constant.builtin", { fg = c.green }) -- null/None
hi("@type", { fg = c.yellow })
hi("@type.builtin", { fg = c.cyan }) -- primitives
hi("@type.definition", { fg = c.red }) -- class defn
hi("@parameter", { fg = c.fg, italic = true })
hi("@punctuation", { fg = c.fg })
hi("@tag", { fg = c.red })
hi("@tag.attribute", { fg = c.yellow, italic = true })
hi("@tag.delimiter", { fg = c.fg })
hi("@comment", { fg = c.grey, italic = true })
hi("@module", { fg = c.red, italic = true }) -- imported modules

-- LSP / Diagnostics
hi("DiagnosticError", { fg = c.red })
hi("DiagnosticWarn", { fg = c.yellow })
hi("DiagnosticInfo", { fg = c.blue })
hi("DiagnosticHint", { fg = c.cyan })
hi("DiagnosticUnderlineError", { undercurl = true, sp = c.red })
hi("DiagnosticUnderlineWarn", { undercurl = true, sp = c.yellow })
hi("LspReferenceText", { bg = c.black })

-- Git
hi("DiffAdd", { fg = c.green })
hi("DiffChange", { fg = c.yellow })
hi("DiffDelete", { fg = c.red })
hi("GitSignsAdd", { fg = c.green })
hi("GitSignsChange", { fg = c.yellow })
hi("GitSignsDelete", { fg = c.red })
