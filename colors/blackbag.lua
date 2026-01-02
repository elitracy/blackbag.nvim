-- Black Bag Theme
-- Inspired by the Black Bag movie UI
-- Focused design: light blue/white-blue on black
-- Orange ONLY for primary focus points, light red for accents

-- Clear existing highlights
if vim.g.colors_name then
  vim.cmd.hi("clear")
end

-- Set colorscheme name and enable true colors
vim.g.colors_name = "blackbag"
vim.o.termguicolors = true

-- Color Palette
local c = {
  -- Base colors
  none = "NONE",
  bg = "NONE",
  bg_alt = "#0a0e14",
  bg_highlight = "#16191f",
  bg_visual = "#1a2332",

  -- Text hierarchy (light blue/white-blue)
  fg = "#d0e8ff",           -- Primary text
  fg_bright = "#ffffff",    -- Brightest text
  fg_dim = "#a0c5e0",       -- Dimmed text
  fg_muted = "#7099ba",     -- Muted text

  -- Orange - RARE, only for primary focus (search, current position)
  orange = "#ff8800",
  orange_bright = "#ffaa44",

  -- Light red - accent color for warnings, git changes, secondary highlights
  red_light = "#ff6b6b",
  red_dim = "#cc5555",
  red_subtle = "#994444",

  -- Supporting colors (most syntax uses these)
  cyan = "#66d9ef",
  cyan_dim = "#4db8cc",
  cyan_bright = "#88eeff",
  blue = "#78b9ff",
  blue_bright = "#a0d0ff",
  blue_dim = "#5588cc",

  -- UI elements
  border = "#5a6a7a",
  line_nr = "#708090",
  cursor_line_nr = "#ff8800",  -- Orange - draws eye to current position
  comment = "#556677",
}

-- Terminal colors
vim.g.terminal_color_0 = "#0a0a0a"
vim.g.terminal_color_1 = c.red_light
vim.g.terminal_color_2 = c.cyan
vim.g.terminal_color_3 = c.blue
vim.g.terminal_color_4 = c.blue_bright
vim.g.terminal_color_5 = c.fg_dim
vim.g.terminal_color_6 = c.cyan_bright
vim.g.terminal_color_7 = c.fg
vim.g.terminal_color_8 = c.comment
vim.g.terminal_color_9 = c.red_light
vim.g.terminal_color_10 = c.cyan_bright
vim.g.terminal_color_11 = c.blue_bright
vim.g.terminal_color_12 = c.blue_bright
vim.g.terminal_color_13 = c.fg_bright
vim.g.terminal_color_14 = c.cyan_bright
vim.g.terminal_color_15 = c.fg_bright

-- Helper function
local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Core Editor
hl("Normal", { fg = c.fg, bg = c.none })
hl("NormalFloat", { fg = c.fg, bg = c.bg_alt })
hl("NormalNC", { fg = c.fg_dim, bg = c.none })  -- Dimmed for non-focused windows
hl("LineNr", { fg = c.line_nr, bg = c.none })
hl("CursorLine", { bg = "#2a1a0a" })  -- Subtle orange tint for current line
hl("CursorLineNr", { fg = c.cursor_line_nr, bg = c.none, bold = true })  -- ORANGE - shows position
hl("CursorColumn", { bg = c.bg_highlight })
hl("SignColumn", { bg = c.none })
hl("ColorColumn", { bg = c.bg_highlight })
hl("FoldColumn", { fg = c.line_nr, bg = c.none })
hl("Folded", { fg = c.comment, bg = c.bg_highlight })
hl("Visual", { fg = c.fg_bright, bg = "#2a5a9a", bold = true })  -- Light blue bg for visibility
hl("VisualNOS", { fg = c.fg_bright, bg = "#2a5a9a", bold = true })
hl("Search", { fg = "#000000", bg = c.orange, bold = true })  -- ORANGE - primary focus
hl("IncSearch", { fg = "#000000", bg = c.orange_bright, bold = true })  -- ORANGE - current match
hl("CurSearch", { link = "IncSearch" })
hl("Substitute", { fg = "#000000", bg = c.cyan })  -- Cyan instead of orange
hl("MatchParen", { fg = c.cyan_bright, bold = true })  -- Bright cyan instead of orange
hl("Cursor", { fg = c.none, bg = c.fg })
hl("TermCursor", { fg = c.none, bg = c.fg })
hl("TermCursorNC", { fg = c.none, bg = c.fg_dim })

-- UI Elements
hl("Pmenu", { fg = c.fg, bg = c.bg_alt })
hl("PmenuSel", { fg = c.fg_bright, bg = c.bg_highlight })
hl("PmenuSbar", { bg = c.bg_highlight })
hl("PmenuThumb", { bg = c.fg_dim })
hl("FloatBorder", { fg = c.border, bg = c.bg_alt })
hl("WinSeparator", { fg = c.border, bg = c.none })
hl("VertSplit", { fg = c.border, bg = c.none })
hl("TabLine", { fg = c.fg_muted, bg = c.bg_alt })
hl("TabLineFill", { bg = c.none })
hl("TabLineSel", { fg = c.fg_bright, bg = c.bg_highlight, bold = true })
hl("StatusLine", { fg = c.fg_dim, bg = c.bg_alt })
hl("StatusLineNC", { fg = c.comment, bg = c.none })
hl("WildMenu", { fg = c.fg_bright, bg = c.bg_highlight })
hl("QuickFixLine", { bg = c.bg_highlight })

-- Messages
hl("ErrorMsg", { fg = c.red_light, bold = true })  -- Red instead of orange
hl("WarningMsg", { fg = c.red_light })  -- Red instead of orange
hl("ModeMsg", { fg = c.fg_dim })
hl("MoreMsg", { fg = c.cyan })
hl("Question", { fg = c.cyan })
hl("Title", { fg = c.fg_bright, bold = true })
hl("Directory", { fg = c.cyan })
hl("NonText", { fg = c.comment })
hl("EndOfBuffer", { fg = c.bg_alt })
hl("SpecialKey", { fg = c.comment })

-- Syntax Highlighting (Basic) - Mostly blue/cyan, NO orange
hl("Comment", { fg = c.comment, italic = true })
hl("Constant", { fg = c.blue })
hl("String", { fg = c.cyan })
hl("Character", { fg = c.cyan })
hl("Number", { fg = c.blue_bright })
hl("Boolean", { fg = c.blue })
hl("Float", { fg = c.blue_bright })
hl("Identifier", { fg = c.fg_dim })
hl("Function", { fg = c.cyan_bright })  -- Cyan, not orange
hl("Statement", { fg = c.blue })  -- Blue, not orange
hl("Conditional", { fg = c.blue })  -- Blue, not orange
hl("Repeat", { fg = c.blue })  -- Blue, not orange
hl("Label", { fg = c.blue_dim })
hl("Operator", { fg = c.fg_muted })
hl("Keyword", { fg = c.blue })  -- Blue, not orange
hl("Exception", { fg = c.blue })
hl("PreProc", { fg = c.blue_dim })
hl("Include", { fg = c.blue_dim })
hl("Define", { fg = c.blue_dim })
hl("Macro", { fg = c.cyan })
hl("PreCondit", { fg = c.blue_dim })
hl("Type", { fg = c.blue })
hl("StorageClass", { fg = c.blue })
hl("Structure", { fg = c.blue })
hl("Typedef", { fg = c.blue })
hl("Special", { fg = c.fg_dim })
hl("SpecialChar", { fg = c.cyan })
hl("SpecialComment", { fg = c.cyan_dim })
hl("Tag", { fg = c.blue })
hl("Delimiter", { fg = c.fg_dim })
hl("Debug", { fg = c.red_subtle })
hl("Underlined", { underline = true })
hl("Ignore", { fg = c.comment })
hl("Error", { fg = c.red_light, bold = true })  -- Red
hl("Todo", { fg = c.red_light, bold = true })  -- Red for TODOs
hl("Bold", { bold = true })
hl("Italic", { italic = true })

-- Treesitter - Mostly blue/cyan for calm, focused syntax
hl("@comment", { link = "Comment" })
hl("@error", { fg = c.red_light })
hl("@none", { fg = c.fg })
hl("@operator", { link = "Operator" })
hl("@punctuation.delimiter", { fg = c.fg_dim })
hl("@punctuation.bracket", { fg = c.fg_dim })
hl("@punctuation.special", { fg = c.cyan })
hl("@string", { link = "String" })
hl("@string.regex", { fg = c.cyan_dim })
hl("@string.escape", { fg = c.cyan_bright })
hl("@character", { link = "Character" })
hl("@boolean", { link = "Boolean" })
hl("@number", { link = "Number" })
hl("@float", { link = "Float" })
hl("@function", { fg = c.cyan_bright })  -- Cyan, not orange
hl("@function.builtin", { fg = c.cyan })
hl("@function.macro", { fg = c.cyan_dim })
hl("@method", { fg = c.cyan_bright })  -- Cyan, not orange
hl("@constructor", { fg = c.blue })
hl("@parameter", { fg = c.fg })
hl("@keyword", { fg = c.blue })  -- Blue, not orange
hl("@keyword.function", { fg = c.blue })  -- Blue, not orange
hl("@keyword.operator", { fg = c.blue_dim })
hl("@keyword.return", { fg = c.blue })
hl("@keyword.coroutine", { fg = c.blue })
hl("@conditional", { fg = c.blue })
hl("@repeat", { fg = c.blue })
hl("@label", { fg = c.blue_dim })
hl("@include", { fg = c.blue_dim })
hl("@exception", { fg = c.blue })
hl("@type", { link = "Type" })
hl("@type.builtin", { link = "Type" })
hl("@type.definition", { link = "Type" })
hl("@attribute", { fg = c.cyan_dim })
hl("@field", { fg = c.fg_dim })
hl("@property", { fg = c.fg_dim })
hl("@variable", { fg = c.fg_dim })
hl("@variable.builtin", { fg = c.fg_dim })
hl("@constant", { fg = c.blue })
hl("@constant.builtin", { fg = c.blue })
hl("@constant.macro", { fg = c.blue })
hl("@namespace", { fg = c.cyan })
hl("@symbol", { fg = c.cyan })

-- Treesitter markup (Markdown, etc.)
hl("@markup", { fg = c.fg })
hl("@markup.strong", { bold = true })
hl("@markup.emphasis", { italic = true })
hl("@markup.italic", { italic = true })
hl("@markup.strikethrough", { strikethrough = true })
hl("@markup.underline", { underline = true })
hl("@markup.heading", { fg = c.fg_bright, bold = true })
hl("@markup.heading.1", { fg = c.fg_bright, bold = true })
hl("@markup.heading.2", { fg = c.fg_bright, bold = true })
hl("@markup.heading.3", { fg = c.fg_bright, bold = true })
hl("@markup.heading.4", { fg = c.fg_bright, bold = true })
hl("@markup.heading.5", { fg = c.fg_bright, bold = true })
hl("@markup.heading.6", { fg = c.fg_bright, bold = true })
hl("@markup.link", { fg = c.cyan, underline = true })
hl("@markup.link.label", { fg = c.cyan })
hl("@markup.link.url", { fg = c.cyan_dim, underline = true })
hl("@markup.list", { fg = c.blue_dim })  -- Blue instead of orange
hl("@markup.list.checked", { fg = c.blue })
hl("@markup.list.unchecked", { fg = c.blue_dim })
hl("@markup.quote", { fg = c.comment, italic = true })
hl("@markup.math", { fg = c.blue })
hl("@markup.raw", { fg = c.cyan })
hl("@markup.raw.markdown_inline", { fg = c.cyan })
hl("@text", { fg = c.fg })
hl("@text.strong", { bold = true })
hl("@text.emphasis", { italic = true })
hl("@text.underline", { underline = true })
hl("@text.strike", { strikethrough = true })
hl("@text.title", { fg = c.fg_bright, bold = true })
hl("@text.literal", { fg = c.cyan })
hl("@text.uri", { fg = c.cyan, underline = true })
hl("@tag", { fg = c.blue })  -- Blue instead of orange
hl("@tag.attribute", { fg = c.cyan })
hl("@tag.delimiter", { fg = c.fg_dim })

-- LSP Semantic Tokens
hl("@lsp.type.class", { link = "Type" })
hl("@lsp.type.decorator", { fg = c.cyan })
hl("@lsp.type.enum", { link = "Type" })
hl("@lsp.type.enumMember", { link = "@constant" })
hl("@lsp.type.function", { link = "@function" })
hl("@lsp.type.interface", { link = "Type" })
hl("@lsp.type.macro", { link = "Macro" })
hl("@lsp.type.method", { link = "@method" })
hl("@lsp.type.namespace", { link = "@namespace" })
hl("@lsp.type.parameter", { link = "@parameter" })
hl("@lsp.type.property", { link = "@property" })
hl("@lsp.type.struct", { link = "Structure" })
hl("@lsp.type.type", { link = "Type" })
hl("@lsp.type.typeParameter", { link = "Type" })
hl("@lsp.type.variable", { link = "@variable" })
hl("@lsp.type.comment", { link = "Comment" })
hl("@lsp.type.keyword", { link = "@keyword" })
hl("@lsp.type.string", { link = "String" })
hl("@lsp.type.number", { link = "Number" })
hl("@lsp.type.operator", { link = "Operator" })
hl("@lsp.mod.readonly", { link = "@constant" })
hl("@lsp.mod.deprecated", { strikethrough = true })
hl("@lsp.typemod.function.defaultLibrary", { link = "@function.builtin" })
hl("@lsp.typemod.variable.defaultLibrary", { link = "@variable.builtin" })

-- LSP Diagnostics - Light red for warnings/errors
hl("DiagnosticError", { fg = c.red_light })
hl("DiagnosticWarn", { fg = c.red_light })
hl("DiagnosticInfo", { fg = c.fg_dim })
hl("DiagnosticHint", { fg = c.fg_muted })
hl("DiagnosticOk", { fg = c.cyan })
hl("DiagnosticUnderlineError", { undercurl = true, sp = c.red_light })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.red_dim })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.fg_dim })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.fg_muted })
hl("DiagnosticUnderlineOk", { undercurl = true, sp = c.cyan })
hl("DiagnosticVirtualTextError", { fg = c.red_subtle })  -- Subtle so not distracting
hl("DiagnosticVirtualTextWarn", { fg = c.red_subtle })
hl("DiagnosticVirtualTextInfo", { fg = c.comment })
hl("DiagnosticVirtualTextHint", { fg = c.comment })

-- LSP References - subtle highlight when hovering/referencing
hl("LspReferenceText", { bg = c.bg_highlight })
hl("LspReferenceRead", { bg = c.bg_highlight })
hl("LspReferenceWrite", { bg = c.bg_highlight })
hl("LspSignatureActiveParameter", { fg = c.cyan_bright, bold = true })  -- Cyan, not orange
hl("LspCodeLens", { fg = c.comment })

-- Git Signs - Teal for additions, orange for changes, red for deletions
hl("GitSignsAdd", { fg = "#3eb489", bg = c.none })  -- Seagreen/teal
hl("GitSignsChange", { fg = c.orange, bg = c.none })  -- Orange for changes
hl("GitSignsDelete", { fg = c.red_light, bg = c.none })  -- Red for deletions
hl("GitSignsAddNr", { fg = "#3eb489" })
hl("GitSignsChangeNr", { fg = c.orange })
hl("GitSignsDeleteNr", { fg = c.red_light })
hl("GitSignsAddLn", { bg = "#0a1a14" })  -- Very subtle teal tint
hl("GitSignsChangeLn", { bg = "#1a1408" })  -- Subtle orange tint
hl("GitSignsDeleteLn", { bg = "#1a0808" })  -- Subtle red tint
hl("GitSignsCurrentLineBlame", { fg = c.comment, italic = true })

-- Diff - teal for additions, orange for changes, red for deletions
hl("DiffAdd", { bg = "#0a1a14" })  -- Subtle teal tint
hl("DiffChange", { bg = "#1a1408" })  -- Subtle orange tint
hl("DiffDelete", { bg = "#1a0808" })  -- Subtle red tint
hl("DiffText", { bg = "#2a1e0a" })  -- Orange highlight for changed text
hl("DiffAdded", { fg = "#3eb489" })  -- Seagreen/teal
hl("DiffChanged", { fg = c.orange })  -- Orange
hl("DiffRemoved", { fg = c.red_light })  -- Red

-- Snacks.nvim
hl("SnacksNormal", { fg = c.fg, bg = c.none })
hl("SnacksNormalNC", { fg = c.fg, bg = c.none })
hl("SnacksWin", { fg = c.fg, bg = c.none })
hl("SnacksWinNC", { fg = c.fg, bg = c.none })
hl("SnacksPickerDir", { fg = c.cyan })
hl("SnacksPickerFile", { fg = c.fg_bright })
hl("SnacksPickerMatch", { fg = c.orange, bold = true })  -- ORANGE - what you're selecting
hl("SnacksExplorerNormal", { fg = c.fg, bg = c.none })
hl("SnacksExplorerNormalNC", { fg = c.fg, bg = c.none })

-- Blink.cmp
hl("BlinkCmpMenu", { fg = c.fg, bg = c.bg_alt })
hl("BlinkCmpMenuBorder", { fg = c.border, bg = c.bg_alt })
hl("BlinkCmpMenuSelection", { fg = c.fg_bright, bg = c.bg_highlight })
hl("BlinkCmpLabel", { fg = c.fg_dim })
hl("BlinkCmpLabelMatch", { fg = c.orange, bold = true })  -- ORANGE - matched characters
hl("BlinkCmpLabelMatchFuzzy", { fg = c.cyan_bright })  -- Cyan for fuzzy (less important)
hl("BlinkCmpKind", { fg = c.fg_muted })
hl("BlinkCmpDoc", { fg = c.fg, bg = c.bg_alt })
hl("BlinkCmpDocBorder", { fg = c.border, bg = c.bg_alt })

-- Cmp (nvim-cmp) - for compatibility
hl("CmpItemAbbr", { fg = c.fg_dim })
hl("CmpItemAbbrMatch", { fg = c.orange, bold = true })  -- ORANGE
hl("CmpItemAbbrMatchFuzzy", { fg = c.cyan_bright })
hl("CmpItemMenu", { fg = c.fg_muted, italic = true })
hl("CmpItemKind", { fg = c.blue })

-- Lualine (StatusLine groups for auto-detection)
hl("StatusNormal", { fg = "#000000", bg = c.blue })  -- Blue for normal mode
hl("StatusInsert", { fg = "#000000", bg = "#3eb489" })  -- Teal for insert mode
hl("StatusVisual", { fg = "#000000", bg = c.orange })  -- Orange for visual mode
hl("StatusReplace", { fg = "#ffffff", bg = c.red_light })  -- Red for replace mode
hl("StatusCommand", { fg = "#000000", bg = c.cyan_bright })  -- Bright cyan for command mode
hl("StatusTerminal", { fg = "#000000", bg = c.blue_bright })  -- Bright blue for terminal mode

-- Bufferline
hl("BufferLineFill", { bg = c.none })
hl("BufferLineBackground", { fg = c.fg_muted, bg = c.none })
hl("BufferLineBufferSelected", { fg = c.fg_bright, bg = c.bg_highlight, bold = true })  -- Bright text, not orange
hl("BufferLineBufferVisible", { fg = c.fg_dim, bg = c.none })
hl("BufferLineSeparator", { fg = c.border, bg = c.none })
hl("BufferLineDiagnostic", { fg = c.red_subtle })
hl("BufferLineDiagnosticVisible", { fg = c.red_subtle })

-- Telescope (if used)
hl("TelescopeBorder", { fg = c.border, bg = c.bg_alt })
hl("TelescopeNormal", { fg = c.fg, bg = c.bg_alt })
hl("TelescopeSelection", { fg = c.fg_bright, bg = c.bg_highlight })
hl("TelescopeMatching", { fg = c.orange, bold = true })  -- ORANGE - matched text
hl("TelescopePromptPrefix", { fg = c.cyan })  -- Cyan instead of orange

-- Notify
hl("NotifyERRORBorder", { fg = c.red_light })
hl("NotifyWARNBorder", { fg = c.red_dim })
hl("NotifyINFOBorder", { fg = c.fg_dim })
hl("NotifyDEBUGBorder", { fg = c.comment })
hl("NotifyTRACEBorder", { fg = c.comment })
hl("NotifyERRORIcon", { fg = c.red_light })
hl("NotifyWARNIcon", { fg = c.red_dim })
hl("NotifyINFOIcon", { fg = c.fg_dim })
hl("NotifyDEBUGIcon", { fg = c.comment })
hl("NotifyTRACEIcon", { fg = c.comment })
hl("NotifyERRORTitle", { fg = c.red_light, bold = true })
hl("NotifyWARNTitle", { fg = c.red_dim })
hl("NotifyINFOTitle", { fg = c.fg_dim })
hl("NotifyDEBUGTitle", { fg = c.comment })
hl("NotifyTRACETitle", { fg = c.comment })

-- Health
hl("HealthError", { fg = c.red_light })
hl("HealthWarning", { fg = c.red_dim })
hl("HealthSuccess", { fg = c.cyan })

-- Misc
hl("Conceal", { fg = c.comment })
hl("SpellBad", { undercurl = true, sp = c.red_light })
hl("SpellCap", { undercurl = true, sp = c.red_dim })
hl("SpellLocal", { undercurl = true, sp = c.cyan })
hl("SpellRare", { undercurl = true, sp = c.blue })

return c
