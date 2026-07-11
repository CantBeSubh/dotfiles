-- snazzy-lab.lua — generated from Colorscheme Lab (v2 — hyper-snazzy)
-- Drop in ~/.config/nvim/colors/snazzy-lab.lua
-- Then set colorscheme = "snazzy-lab" in your LazyVim opts.

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end
vim.o.background = "dark"
vim.g.colors_name = "snazzy-lab"

local c = {
  bg = "#282a36",
  fg = "#eff0eb",
  black = "#282a36",
  red = "#ff5c57",
  green = "#5af78e",
  yellow = "#f3f99d",
  blue = "#57c7ff",
  magenta = "#ff6ac1",
  cyan = "#9aedfe",
  white = "#f1f1f0",
  grey = "#686868",
  sel = "#feffff",
  seltext = "#282a36",
  cursor = "#97979b",
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
hi("Constant", { fg = c.yellow })
hi("String", { fg = c.green })
hi("Character", { fg = c.green })
hi("Number", { fg = c.magenta })
hi("Boolean", { fg = c.magenta })
hi("Identifier", { fg = c.blue })
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
hi("@variable.builtin", { fg = c.red })
hi("@property", { fg = c.blue })
hi("@field", { fg = c.blue })
hi("@function", { fg = c.cyan })
hi("@function.call", { fg = c.cyan })
hi("@function.builtin", { fg = c.cyan })
hi("@method", { fg = c.cyan })
hi("@constructor", { fg = c.yellow })
hi("@keyword", { fg = c.magenta })
hi("@keyword.function", { fg = c.magenta })
hi("@keyword.return", { fg = c.magenta })
hi("@conditional", { fg = c.magenta })
hi("@repeat", { fg = c.magenta })
hi("@string", { fg = c.green })
hi("@number", { fg = c.magenta })
hi("@boolean", { fg = c.magenta })
hi("@type", { fg = c.yellow })
hi("@type.builtin", { fg = c.yellow })
hi("@constant", { fg = c.yellow })
hi("@constant.builtin", { fg = c.magenta })
hi("@parameter", { fg = c.red })
hi("@punctuation", { fg = c.fg })
hi("@tag", { fg = c.magenta })
hi("@tag.attribute", { fg = c.green })
hi("@comment", { fg = c.grey, italic = true })

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
