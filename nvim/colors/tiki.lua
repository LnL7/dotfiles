vim.cmd("hi clear")
vim.g.colors_name = "tiki"
vim.o.background = "dark"

local c = {
  bg        = "#1A1410",
  bg0       = "#1A1E14",
  bg1       = "#252018",
  bg2       = "#2E2820",
  bg3       = "#3A342A",
  fg        = "#E8D5B7",
  fg_dim    = "#B8A88A",
  fg_dark   = "#7A6A54",
  cursor    = "#F0A84C",
  sel_bg    = "#D4843E",
  sel_fg    = "#1A1410",
  black     = "#1A1E14",
  red       = "#E85A4F",
  green     = "#6AAF5C",
  yellow    = "#F0A84C",
  blue      = "#8A9A6A",
  magenta   = "#D4843E",
  cyan      = "#5C9A7A",
  white     = "#E8D5B7",
  br_black  = "#4A5440",
  br_red    = "#F07A6F",
  br_green  = "#8ACF7A",
  br_yellow = "#F0C06C",
  br_blue   = "#A0B08A",
  br_mag    = "#E8A060",
  br_cyan   = "#7AB89A",
  br_white  = "#F4E8D0",
  none      = "NONE",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor
hi("Normal",        { fg = c.fg,       bg = c.bg })
hi("NormalFloat",   { fg = c.fg,       bg = c.bg2 })
hi("FloatBorder",   { fg = c.br_black, bg = c.bg2 })
hi("Cursor",        { fg = c.bg,       bg = c.cursor })
hi("CursorLine",    { bg = c.bg1 })
hi("CursorColumn",  { bg = c.bg1 })
hi("CursorLineNr",  { fg = c.cursor,   bg = c.bg1, bold = true })
hi("LineNr",        { fg = c.br_black })
hi("SignColumn",    { fg = c.br_black, bg = c.bg })
hi("ColorColumn",   { bg = c.bg1 })
hi("Visual",        { fg = c.sel_fg,   bg = c.sel_bg })
hi("VisualNOS",     { fg = c.sel_fg,   bg = c.sel_bg })
hi("Search",        { fg = c.bg,       bg = c.yellow })
hi("IncSearch",     { fg = c.bg,       bg = c.cursor, bold = true })
hi("CurSearch",     { fg = c.bg,       bg = c.cursor, bold = true })
hi("MatchParen",    { fg = c.br_yellow, bold = true, underline = true })
hi("Pmenu",         { fg = c.fg,       bg = c.bg2 })
hi("PmenuSel",      { fg = c.sel_fg,   bg = c.sel_bg, bold = true })
hi("PmenuSbar",     { bg = c.bg3 })
hi("PmenuThumb",    { bg = c.br_black })
hi("WildMenu",      { fg = c.sel_fg,   bg = c.sel_bg })
hi("StatusLine",    { fg = c.fg,       bg = c.bg2 })
hi("StatusLineNC",  { fg = c.fg_dark,  bg = c.bg1 })
hi("WinBar",        { fg = c.fg_dim,   bg = c.bg })
hi("WinBarNC",      { fg = c.fg_dark,  bg = c.bg })
hi("TabLine",       { fg = c.fg_dark,  bg = c.bg1 })
hi("TabLineSel",    { fg = c.fg,       bg = c.bg,   bold = true })
hi("TabLineFill",   { bg = c.bg1 })
hi("VertSplit",     { fg = c.bg3,      bg = c.bg })
hi("WinSeparator",  { fg = c.bg3,      bg = c.bg })
hi("Folded",        { fg = c.fg_dim,   bg = c.bg2 })
hi("FoldColumn",    { fg = c.br_black, bg = c.bg })
hi("EndOfBuffer",   { fg = c.bg2 })
hi("NonText",       { fg = c.bg3 })
hi("SpecialKey",    { fg = c.br_black })
hi("Whitespace",    { fg = c.bg3 })
hi("Directory",     { fg = c.br_green, bold = true })
hi("Title",         { fg = c.br_yellow, bold = true })
hi("Question",      { fg = c.green })
hi("MoreMsg",       { fg = c.green })
hi("ModeMsg",       { fg = c.fg, bold = true })
hi("ErrorMsg",      { fg = c.br_red, bold = true })
hi("WarningMsg",    { fg = c.br_yellow })
hi("SpellBad",      { undercurl = true, sp = c.red })
hi("SpellCap",      { undercurl = true, sp = c.blue })
hi("SpellRare",     { undercurl = true, sp = c.cyan })
hi("SpellLocal",    { undercurl = true, sp = c.green })
hi("DiffAdd",       { fg = c.green,    bg = c.bg1 })
hi("DiffChange",    { fg = c.yellow,   bg = c.bg1 })
hi("DiffDelete",    { fg = c.red,      bg = c.bg1 })
hi("DiffText",      { fg = c.bg,       bg = c.yellow })
hi("QuickFixLine",  { bg = c.bg2 })

-- Syntax
hi("Comment",       { fg = c.br_black, italic = true })
hi("Constant",      { fg = c.br_yellow })
hi("String",        { fg = c.br_green })
hi("Character",     { fg = c.br_green })
hi("Number",        { fg = c.br_yellow })
hi("Boolean",       { fg = c.br_yellow })
hi("Float",         { fg = c.br_yellow })
hi("Identifier",    { fg = c.fg })
hi("Function",      { fg = c.br_cyan, bold = true })
hi("Statement",     { fg = c.magenta, bold = true })
hi("Conditional",   { fg = c.magenta, bold = true })
hi("Repeat",        { fg = c.magenta, bold = true })
hi("Label",         { fg = c.magenta })
hi("Operator",      { fg = c.br_mag })
hi("Keyword",       { fg = c.magenta, bold = true })
hi("Exception",     { fg = c.red, bold = true })
hi("PreProc",       { fg = c.cyan })
hi("Include",       { fg = c.cyan })
hi("Define",        { fg = c.cyan })
hi("Macro",         { fg = c.cyan })
hi("PreCondit",     { fg = c.cyan })
hi("Type",          { fg = c.yellow, bold = true })
hi("StorageClass",  { fg = c.yellow })
hi("Structure",     { fg = c.yellow })
hi("Typedef",       { fg = c.yellow })
hi("Special",       { fg = c.br_mag })
hi("SpecialChar",   { fg = c.br_mag })
hi("Tag",           { fg = c.br_green })
hi("Delimiter",     { fg = c.fg_dim })
hi("SpecialComment",{ fg = c.br_black, italic = true })
hi("Debug",         { fg = c.red })
hi("Underlined",    { underline = true })
hi("Error",         { fg = c.br_red, bold = true })
hi("Todo",          { fg = c.bg, bg = c.cursor, bold = true })

-- Treesitter
hi("@variable",              { fg = c.fg })
hi("@variable.builtin",      { fg = c.br_mag, italic = true })
hi("@variable.parameter",    { fg = c.fg_dim })
hi("@variable.member",       { fg = c.br_blue })
hi("@constant",              { fg = c.br_yellow })
hi("@constant.builtin",      { fg = c.br_yellow, italic = true })
hi("@constant.macro",        { fg = c.cyan })
hi("@module",                { fg = c.br_blue })
hi("@string",                { fg = c.br_green })
hi("@string.escape",         { fg = c.br_mag })
hi("@string.special",        { fg = c.br_mag })
hi("@character",             { fg = c.br_green })
hi("@number",                { fg = c.br_yellow })
hi("@boolean",               { fg = c.br_yellow })
hi("@float",                 { fg = c.br_yellow })
hi("@function",              { fg = c.br_cyan, bold = true })
hi("@function.builtin",      { fg = c.cyan, italic = true })
hi("@function.call",         { fg = c.br_cyan })
hi("@function.macro",        { fg = c.cyan })
hi("@function.method",       { fg = c.br_cyan, bold = true })
hi("@function.method.call",  { fg = c.br_cyan })
hi("@constructor",           { fg = c.yellow })
hi("@operator",              { fg = c.br_mag })
hi("@keyword",               { fg = c.magenta, bold = true })
hi("@keyword.function",      { fg = c.magenta, bold = true })
hi("@keyword.operator",      { fg = c.br_mag })
hi("@keyword.import",        { fg = c.cyan })
hi("@keyword.return",        { fg = c.magenta, bold = true })
hi("@keyword.exception",     { fg = c.red, bold = true })
hi("@keyword.conditional",   { fg = c.magenta, bold = true })
hi("@keyword.repeat",        { fg = c.magenta, bold = true })
hi("@type",                  { fg = c.yellow })
hi("@type.builtin",          { fg = c.yellow, italic = true })
hi("@type.definition",       { fg = c.yellow, bold = true })
hi("@attribute",             { fg = c.br_mag })
hi("@property",              { fg = c.br_blue })
hi("@punctuation.delimiter", { fg = c.fg_dim })
hi("@punctuation.bracket",   { fg = c.fg_dim })
hi("@punctuation.special",   { fg = c.br_mag })
hi("@comment",               { fg = c.br_black, italic = true })
hi("@comment.todo",          { fg = c.bg, bg = c.cursor, bold = true })
hi("@comment.error",         { fg = c.bg, bg = c.red, bold = true })
hi("@comment.warning",       { fg = c.bg, bg = c.yellow, bold = true })
hi("@comment.note",          { fg = c.bg, bg = c.cyan, bold = true })
hi("@tag",                   { fg = c.red })
hi("@tag.attribute",         { fg = c.yellow })
hi("@tag.delimiter",         { fg = c.fg_dim })
hi("@markup.heading",        { fg = c.br_yellow, bold = true })
hi("@markup.italic",         { italic = true })
hi("@markup.bold",           { bold = true })
hi("@markup.underline",      { underline = true })
hi("@markup.strikethrough",  { strikethrough = true })
hi("@markup.link",           { fg = c.cyan, underline = true })
hi("@markup.link.url",       { fg = c.br_cyan, underline = true })
hi("@markup.raw",            { fg = c.br_green })
hi("@markup.list",           { fg = c.magenta })

-- LSP
hi("LspReferenceText",       { bg = c.bg2 })
hi("LspReferenceRead",       { bg = c.bg2 })
hi("LspReferenceWrite",      { bg = c.bg3 })
hi("LspInlayHint",           { fg = c.br_black, italic = true })
hi("DiagnosticError",        { fg = c.red })
hi("DiagnosticWarn",         { fg = c.yellow })
hi("DiagnosticInfo",         { fg = c.cyan })
hi("DiagnosticHint",         { fg = c.br_blue })
hi("DiagnosticOk",           { fg = c.green })
hi("DiagnosticUnderlineError",{ undercurl = true, sp = c.red })
hi("DiagnosticUnderlineWarn", { undercurl = true, sp = c.yellow })
hi("DiagnosticUnderlineInfo", { undercurl = true, sp = c.cyan })
hi("DiagnosticUnderlineHint", { undercurl = true, sp = c.br_blue })
hi("DiagnosticVirtualTextError", { fg = c.red,    bg = c.bg1, italic = true })
hi("DiagnosticVirtualTextWarn",  { fg = c.yellow, bg = c.bg1, italic = true })
hi("DiagnosticVirtualTextInfo",  { fg = c.cyan,   bg = c.bg1, italic = true })
hi("DiagnosticVirtualTextHint",  { fg = c.br_blue,bg = c.bg1, italic = true })

-- nvim-tree / neo-tree
hi("NvimTreeNormal",         { fg = c.fg,      bg = c.bg1 })
hi("NvimTreeRootFolder",     { fg = c.cursor,  bold = true })
hi("NvimTreeFolderName",     { fg = c.br_blue })
hi("NvimTreeOpenedFolderName",{ fg = c.br_cyan, bold = true })
hi("NvimTreeGitDirty",       { fg = c.yellow })
hi("NvimTreeGitNew",         { fg = c.green })
hi("NvimTreeGitDeleted",     { fg = c.red })

-- Telescope
hi("TelescopeNormal",        { fg = c.fg,      bg = c.bg1 })
hi("TelescopeBorder",        { fg = c.br_black, bg = c.bg1 })
hi("TelescopePromptNormal",  { fg = c.fg,      bg = c.bg2 })
hi("TelescopePromptBorder",  { fg = c.br_black, bg = c.bg2 })
hi("TelescopePromptPrefix",  { fg = c.cursor })
hi("TelescopeSelection",     { fg = c.sel_fg,  bg = c.sel_bg })
hi("TelescopeMatching",      { fg = c.cursor,  bold = true })
hi("TelescopeResultsTitle",  { fg = c.bg,      bg = c.magenta, bold = true })
hi("TelescopePreviewTitle",  { fg = c.bg,      bg = c.cyan, bold = true })
hi("TelescopePromptTitle",   { fg = c.bg,      bg = c.cursor, bold = true })

-- Git signs
hi("GitSignsAdd",            { fg = c.green })
hi("GitSignsChange",         { fg = c.yellow })
hi("GitSignsDelete",         { fg = c.red })

-- Indent guides
hi("IblIndent",              { fg = c.bg2 })
hi("IblScope",               { fg = c.bg3 })

-- Which-key
hi("WhichKey",               { fg = c.cursor })
hi("WhichKeyGroup",          { fg = c.br_cyan })
hi("WhichKeyDesc",           { fg = c.fg_dim })
hi("WhichKeyBorder",         { fg = c.br_black, bg = c.bg2 })
hi("WhichKeyFloat",          { bg = c.bg2 })
