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
vim.o.background = "dark"
vim.g.colors_name = "snazzy"

local d = {
  bg = "#1e2127",
  fg = "#ffffff",
  black = "#1e2127",
  red = "#e06c75",
  green = "#98c379",
  yellow = "#d19a66",
  blue = "#61afef",
  magenta = "#c678dd",
  cyan = "#56b6c2",
  white = "#828791",
  grey = "#5c6370",
  sel = "#3e4451",
  seltext = "#ffffff",
  cursor = "#ffffff",
}

local c = {
  bg = "#1c1e26",
  fg = "#ffffff",
  black = "#282a36",
  red = "#ff5c57",
  green = "#5af78e",
  yellow = "#f3f99d",
  -- yes I have flipped blue and cyan
  cyan = "#57c7ff",
  blue = "#9aedfe",
  magenta = "#ff6ac1",
  white = "#f1f1f0",
  grey = "#5c6370",
  sel = "#3e4451",
  seltext = "#ffffff",
  cursor = "#ffffff",
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
