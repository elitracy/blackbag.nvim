-- Black Bag: Sonar
-- Inspired by the Black Bag movie UI
-- Deep ocean teal-blue aesthetic

-- Clear existing highlights
if vim.g.colors_name then
    vim.cmd.hi("clear")
end

-- Set colorscheme name and enable true colors
vim.g.colors_name = "blackbag-sonar"
vim.o.termguicolors = true

-- Color Palette
local c = {
    -- Base colors
    none = "NONE",
    bg = "NONE",
    bg_alt = "#0a1114",
    bg_highlight = "#141b1f",
    bg_visual = "#1a2c32",

    -- Text hierarchy (teal-blue tinted)
    fg = "#c8e4ec",        -- Primary text
    fg_bright = "#ffffff", -- Brightest text
    fg_dim = "#90bcc4",    -- Dimmed text
    fg_muted = "#688f98",  -- Muted text

    -- Orange - RARE, only for primary focus (search, current position)
    orange = "#ff8800",
    orange_bright = "#ffaa44",

    -- Light red - accent color for errors, git deletions
    red_light = "#ff6b6b",
    red_dim = "#cc5555",
    red_subtle = "#994444",

    -- Supporting colors (spread across teal-blue spectrum, saturated)
    seafoam = "#3cc0be",       -- Keywords, statements — punchy teal
    seafoam_dim = "#2e9498",   -- Dimmed keywords, preprocessor
    seafoam_bright = "#44eed8", -- Functions — vivid bright teal
    aqua = "#38bce0",          -- Strings — saturated blue-cyan
    aqua_dim = "#2a90b8",      -- Regex, escape chars
    jade = "#40cc9c",          -- Numbers, constants — rich green-teal
    jade_dim = "#309470",      -- Labels, includes
    pale = "#80e4f0",          -- Types — bright icy blue
    ice = "#44c8ee",           -- Constructors, macros — vivid blue

    -- Git colors
    teal = "#3eb489", -- Seagreen/teal for git additions

    -- UI specific colors
    visual_bg = "#1c4450",     -- Dark teal-blue for visual selection
    cursorline_bg = "#2a1a0a", -- Subtle orange tint for cursor line
    black = "#000000",         -- Pure black

    -- UI elements
    border = "#486470",
    line_nr = "#587a82",
    cursor_line_nr = "#ff8800", -- Orange - draws eye to current position
    comment = "#486068",
}

-- Terminal colors
vim.g.terminal_color_0 = "#0a0a0a"
vim.g.terminal_color_1 = c.red_light
vim.g.terminal_color_2 = c.green
vim.g.terminal_color_3 = c.emerald
vim.g.terminal_color_4 = c.green_bright
vim.g.terminal_color_5 = c.fg_dim
vim.g.terminal_color_6 = c.mint
vim.g.terminal_color_7 = c.fg
vim.g.terminal_color_8 = c.comment
vim.g.terminal_color_9 = c.red_light
vim.g.terminal_color_10 = c.green_bright
vim.g.terminal_color_11 = c.emerald_bright
vim.g.terminal_color_12 = c.mint
vim.g.terminal_color_13 = c.fg_bright
vim.g.terminal_color_14 = c.green_bright
vim.g.terminal_color_15 = c.fg_bright

-- Helper function
local function hl(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- Core Editor
hl("Normal", { fg = c.fg, bg = c.none })
hl("NormalFloat", { fg = c.fg, bg = c.bg_alt })
hl("NormalNC", { fg = c.fg_dim, bg = c.none })
hl("LineNr", { fg = c.line_nr, bg = c.none })
hl("CursorLine", { bg = c.cursorline_bg })
hl("CursorLineNr", { fg = c.cursor_line_nr, bg = c.none, bold = true })
hl("CursorColumn", { bg = c.bg_highlight })
hl("SignColumn", { bg = c.none })
hl("ColorColumn", { bg = c.bg_highlight })
hl("FoldColumn", { fg = c.line_nr, bg = c.none })
hl("Folded", { fg = c.comment, bg = c.bg_highlight })
hl("Visual", { fg = c.fg_bright, bg = c.visual_bg, bold = true })
hl("VisualNOS", { fg = c.fg_bright, bg = c.visual_bg, bold = true })
hl("Search", { fg = c.black, bg = c.orange, bold = true })
hl("IncSearch", { fg = c.black, bg = c.orange_bright, bold = true })
hl("CurSearch", { link = "IncSearch" })
hl("Substitute", { fg = c.black, bg = c.seafoam })
hl("MatchParen", { fg = c.seafoam_bright, bold = true })
hl("Cursor", { fg = c.none, bg = c.fg })
hl("TermCursor", { fg = c.none, bg = c.fg })
hl("TermCursorNC", { fg = c.none, bg = c.fg_dim })

-- UI Elements
hl("Pmenu", { fg = c.fg, bg = c.bg_alt })
hl("PmenuSel", { fg = c.fg_bright, bg = c.bg_highlight })
hl("PmenuSbar", { bg = c.bg_highlight })
hl("PmenuThumb", { bg = c.fg_dim })
hl("PmenuKind", { fg = c.fg_muted, bg = c.bg_alt })
hl("PmenuKindSel", { fg = c.fg_dim, bg = c.bg_highlight })
hl("PmenuExtra", { fg = c.fg_muted, bg = c.bg_alt })
hl("PmenuExtraSel", { fg = c.fg_dim, bg = c.bg_highlight })
hl("SnippetTabstop", { bg = c.bg_highlight })
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
hl("ErrorMsg", { fg = c.red_light, bold = true })
hl("WarningMsg", { fg = c.orange })
hl("ModeMsg", { fg = c.fg_dim })
hl("MoreMsg", { fg = c.seafoam })
hl("Question", { fg = c.seafoam })
hl("Title", { fg = c.fg_bright, bold = true })
hl("Directory", { fg = c.aqua })
hl("NonText", { fg = c.comment })
hl("EndOfBuffer", { fg = c.bg_alt })
hl("SpecialKey", { fg = c.comment })

-- Syntax Highlighting — spread across seafoam/aqua/jade/ice for variety
hl("Comment", { fg = c.comment, italic = true })
hl("Constant", { fg = c.jade })
hl("String", { fg = c.aqua })           -- Pulls toward blue — distinct from keywords
hl("Character", { fg = c.aqua })
hl("Number", { fg = c.jade })           -- Warm green — stands out from cool tones
hl("Boolean", { fg = c.jade })
hl("Float", { fg = c.jade })
hl("Identifier", { fg = c.fg_dim })
hl("Function", { fg = c.seafoam_bright }) -- Bright seafoam — most prominent
hl("Statement", { fg = c.seafoam })
hl("Conditional", { fg = c.seafoam })
hl("Repeat", { fg = c.seafoam })
hl("Label", { fg = c.jade_dim })
hl("Operator", { fg = c.fg_muted })
hl("Keyword", { fg = c.seafoam })       -- Mid seafoam — backbone of syntax
hl("Exception", { fg = c.seafoam })
hl("PreProc", { fg = c.seafoam_dim })
hl("Include", { fg = c.jade_dim })
hl("Define", { fg = c.seafoam_dim })
hl("Macro", { fg = c.ice })             -- Cool blue-teal — distinct from keywords
hl("PreCondit", { fg = c.seafoam_dim })
hl("Type", { fg = c.pale })             -- Light and airy — clearly different from keywords
hl("StorageClass", { fg = c.pale })
hl("Structure", { fg = c.pale })
hl("Typedef", { fg = c.pale })
hl("Special", { fg = c.fg_dim })
hl("SpecialChar", { fg = c.ice })
hl("SpecialComment", { fg = c.aqua_dim })
hl("Tag", { fg = c.pale })
hl("Delimiter", { fg = c.fg_dim })
hl("Debug", { fg = c.red_subtle })
hl("Underlined", { underline = true })
hl("Ignore", { fg = c.comment })
hl("Error", { fg = c.red_light, bold = true })
hl("Todo", { fg = c.red_light, bold = true })
hl("Bold", { bold = true })
hl("Italic", { italic = true })

-- Treesitter — varied across seafoam/aqua/jade/ice/pale
hl("@comment", { link = "Comment" })
hl("@error", { fg = c.red_light })
hl("@none", { fg = c.fg })
hl("@operator", { link = "Operator" })
hl("@punctuation.delimiter", { fg = c.fg_dim })
hl("@punctuation.bracket", { fg = c.fg_dim })
hl("@punctuation.special", { fg = c.ice })
hl("@string", { link = "String" })
hl("@string.regex", { fg = c.aqua_dim })
hl("@string.escape", { fg = c.ice })
hl("@character", { link = "Character" })
hl("@boolean", { link = "Boolean" })
hl("@number", { link = "Number" })
hl("@float", { link = "Float" })
hl("@function", { fg = c.seafoam_bright })
hl("@function.builtin", { fg = c.aqua })
hl("@function.macro", { fg = c.aqua_dim })
hl("@method", { fg = c.seafoam_bright })
hl("@constructor", { fg = c.ice })
hl("@parameter", { fg = c.fg })
hl("@keyword", { fg = c.seafoam })
hl("@keyword.function", { fg = c.seafoam })
hl("@keyword.operator", { fg = c.seafoam_dim })
hl("@keyword.return", { fg = c.seafoam })
hl("@keyword.coroutine", { fg = c.seafoam })
hl("@conditional", { fg = c.seafoam })
hl("@repeat", { fg = c.seafoam })
hl("@label", { fg = c.jade_dim })
hl("@include", { fg = c.jade_dim })
hl("@exception", { fg = c.seafoam })
hl("@type", { link = "Type" })
hl("@type.builtin", { link = "Type" })
hl("@type.definition", { link = "Type" })
hl("@attribute", { fg = c.aqua_dim })
hl("@field", { fg = c.fg_dim })
hl("@property", { fg = c.fg_dim })
hl("@variable", { fg = c.fg_dim })
hl("@variable.builtin", { fg = c.fg_dim })
hl("@constant", { fg = c.jade })
hl("@constant.builtin", { fg = c.jade })
hl("@constant.macro", { fg = c.jade })
hl("@namespace", { fg = c.ice })
hl("@symbol", { fg = c.aqua })

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
hl("@markup.link", { fg = c.aqua, underline = true })
hl("@markup.link.label", { fg = c.aqua })
hl("@markup.link.url", { fg = c.aqua_dim, underline = true })
hl("@markup.list", { fg = c.seafoam_dim })
hl("@markup.list.checked", { fg = c.jade })
hl("@markup.list.unchecked", { fg = c.seafoam_dim })
hl("@markup.quote", { fg = c.comment, italic = true })
hl("@markup.math", { fg = c.jade })
hl("@markup.raw", { fg = c.ice })
hl("@markup.raw.markdown_inline", { fg = c.ice })
hl("@text", { fg = c.fg })
hl("@text.strong", { bold = true })
hl("@text.emphasis", { italic = true })
hl("@text.underline", { underline = true })
hl("@text.strike", { strikethrough = true })
hl("@text.title", { fg = c.fg_bright, bold = true })
hl("@text.literal", { fg = c.ice })
hl("@text.uri", { fg = c.aqua, underline = true })
hl("@tag", { fg = c.pale })
hl("@tag.attribute", { fg = c.aqua })
hl("@tag.delimiter", { fg = c.fg_dim })

-- LSP Semantic Tokens
hl("@lsp.type.class", { link = "Type" })
hl("@lsp.type.decorator", { fg = c.ice })
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

-- LSP Diagnostics
hl("DiagnosticError", { fg = c.red_light })
hl("DiagnosticWarn", { fg = c.orange })
hl("DiagnosticInfo", { fg = c.fg_dim })
hl("DiagnosticHint", { fg = c.fg_muted })
hl("DiagnosticOk", { fg = c.seafoam })
hl("DiagnosticUnderlineError", { undercurl = true, sp = c.red_light })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.orange })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.fg_dim })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.fg_muted })
hl("DiagnosticUnderlineOk", { undercurl = true, sp = c.seafoam })
hl("DiagnosticVirtualTextError", { fg = c.red_subtle })
hl("DiagnosticVirtualTextWarn", { fg = c.orange })
hl("DiagnosticVirtualTextInfo", { fg = c.comment })
hl("DiagnosticVirtualTextHint", { fg = c.comment })

-- LSP References
hl("LspReferenceText", { bg = c.bg_highlight })
hl("LspReferenceRead", { bg = c.bg_highlight })
hl("LspReferenceWrite", { bg = c.bg_highlight })
hl("LspSignatureActiveParameter", { fg = c.seafoam_bright, bold = true })
hl("LspCodeLens", { fg = c.comment })

-- Git Signs
hl("GitSignsAdd", { fg = c.teal, bg = c.none })
hl("GitSignsChange", { fg = c.orange, bg = c.none })
hl("GitSignsDelete", { fg = c.red_light, bg = c.none })
hl("GitSignsAddNr", { fg = c.teal })
hl("GitSignsChangeNr", { fg = c.orange })
hl("GitSignsDeleteNr", { fg = c.red_light })
hl("GitSignsAddLn", { bg = "#0a1a14" })
hl("GitSignsChangeLn", { bg = "#1a1408" })
hl("GitSignsDeleteLn", { bg = "#1a0808" })
hl("GitSignsCurrentLineBlame", { fg = c.comment, italic = true })

-- Diff
hl("DiffAdd", { bg = "#0a1a14" })
hl("DiffChange", { bg = "#1a1408" })
hl("DiffDelete", { bg = "#1a0808" })
hl("DiffText", { bg = "#2a1e0a" })
hl("DiffAdded", { fg = c.teal })
hl("DiffChanged", { fg = c.orange })
hl("DiffRemoved", { fg = c.red_light })

-- Snacks.nvim
hl("SnacksNormal", { fg = c.fg, bg = c.none })
hl("SnacksNormalNC", { fg = c.fg, bg = c.none })
hl("SnacksWin", { fg = c.fg, bg = c.none })
hl("SnacksWinNC", { fg = c.fg, bg = c.none })
hl("SnacksPickerDir", { fg = c.aqua })
hl("SnacksPickerFile", { fg = c.fg_bright })
hl("SnacksPickerMatch", { fg = c.orange, bold = true })
hl("SnacksExplorerNormal", { fg = c.fg, bg = c.none })
hl("SnacksExplorerNormalNC", { fg = c.fg, bg = c.none })
hl("SnacksPickerGitStatusModified", { fg = c.orange })
hl("SnacksPickerGitStatusAdded", { fg = c.teal })
hl("SnacksPickerGitStatusUntracked", { fg = c.teal })
hl("SnacksPickerGitStatusDeleted", { fg = c.red_light })
hl("SnacksPickerGitStatusUnmerged", { fg = c.teal })
hl("SnacksPickerGitAdd", { fg = c.teal })
hl("SnacksPickerGitChange", { fg = c.orange })
hl("SnacksPickerGitDelete", { fg = c.red_light })
hl("SnacksGitAdd", { fg = c.teal })
hl("SnacksGitChange", { fg = c.orange })
hl("SnacksGitDelete", { fg = c.red_light })
hl("SnacksPickerIconGitStatusModified", { fg = c.orange })
hl("SnacksPickerIconGitStatusAdded", { fg = c.teal })
hl("SnacksPickerIconGitStatusUntracked", { fg = c.teal })
hl("SnacksPickerIconGitStatusDeleted", { fg = c.red_light })
hl("SnacksPickerIconGitStatusUnmerged", { fg = c.teal })
hl("SnacksPickerIconGitAdd", { fg = c.teal })
hl("SnacksPickerIconGitChange", { fg = c.orange })
hl("SnacksPickerIconGitDelete", { fg = c.red_light })

-- Blink.cmp
hl("BlinkCmpMenu", { fg = c.fg, bg = c.bg_alt })
hl("BlinkCmpMenuBorder", { fg = c.border, bg = c.bg_alt })
hl("BlinkCmpMenuSelection", { fg = c.fg_bright, bg = c.bg_highlight })
hl("BlinkCmpLabel", { fg = c.fg_dim })
hl("BlinkCmpLabelMatch", { fg = c.orange, bold = true })
hl("BlinkCmpLabelMatchFuzzy", { fg = c.seafoam_bright })
hl("BlinkCmpKind", { fg = c.fg_muted })
hl("BlinkCmpDoc", { fg = c.fg, bg = c.bg_alt })
hl("BlinkCmpDocBorder", { fg = c.border, bg = c.bg_alt })
hl("BlinkCmpLabelDetail", { fg = c.fg_muted })
hl("BlinkCmpLabelDescription", { fg = c.fg_muted })
hl("BlinkCmpGhostText", { fg = c.comment })

-- Cmp (nvim-cmp) - for compatibility
hl("CmpItemAbbr", { fg = c.fg_dim })
hl("CmpItemAbbrMatch", { fg = c.orange, bold = true })
hl("CmpItemAbbrMatchFuzzy", { fg = c.seafoam_bright })
hl("CmpItemMenu", { fg = c.fg_muted, italic = true })
hl("CmpItemKind", { fg = c.seafoam })

-- Lualine (StatusLine groups for auto-detection)
hl("StatusNormal", { fg = c.black, bg = c.seafoam })
hl("StatusInsert", { fg = c.black, bg = c.teal })
hl("StatusVisual", { fg = c.black, bg = c.orange })
hl("StatusReplace", { fg = c.fg_bright, bg = c.red_light })
hl("StatusCommand", { fg = c.black, bg = c.ice })
hl("StatusTerminal", { fg = c.black, bg = c.aqua })

-- Bufferline
hl("BufferLineFill", { bg = c.none })
hl("BufferLineBackground", { fg = c.fg_muted, bg = c.none })
hl("BufferLineBufferSelected", { fg = c.fg_bright, bg = c.bg_highlight, bold = true })
hl("BufferLineBufferVisible", { fg = c.fg_dim, bg = c.none })
hl("BufferLineSeparator", { fg = c.border, bg = c.none })
hl("BufferLineDiagnostic", { fg = c.red_subtle })
hl("BufferLineDiagnosticVisible", { fg = c.red_subtle })
local icon_filetypes = {
  "lua", "vim", "js", "ts", "tsx", "jsx", "py", "go", "rs", "c", "cpp",
  "h", "hpp", "md", "txt", "json", "yaml", "toml", "sh", "bash", "zsh",
  "fish", "html", "css", "scss", "sass", "vue", "svelte", "rb", "java",
  "kt", "swift", "cs", "php", "sql", "dockerfile", "makefile", "default"
}
for _, ft in ipairs(icon_filetypes) do
  hl("BufferLineDevIcon" .. ft:gsub("^%l", string.upper), { bg = c.none })
  hl("BufferLineDevIcon" .. ft:gsub("^%l", string.upper) .. "Inactive", { bg = c.none })
  hl("BufferLineDevIcon" .. ft:gsub("^%l", string.upper) .. "Selected", { bg = c.bg_highlight })
end

-- Telescope (if used)
hl("TelescopeBorder", { fg = c.border, bg = c.bg_alt })
hl("TelescopeNormal", { fg = c.fg, bg = c.bg_alt })
hl("TelescopeSelection", { fg = c.fg_bright, bg = c.bg_highlight })
hl("TelescopeMatching", { fg = c.orange, bold = true })
hl("TelescopePromptPrefix", { fg = c.seafoam })

-- Notify
hl("NotifyERRORBorder", { fg = c.red_light })
hl("NotifyWARNBorder", { fg = c.orange })
hl("NotifyINFOBorder", { fg = c.fg_dim })
hl("NotifyDEBUGBorder", { fg = c.comment })
hl("NotifyTRACEBorder", { fg = c.comment })
hl("NotifyERRORIcon", { fg = c.red_light })
hl("NotifyWARNIcon", { fg = c.orange })
hl("NotifyINFOIcon", { fg = c.fg_dim })
hl("NotifyDEBUGIcon", { fg = c.comment })
hl("NotifyTRACEIcon", { fg = c.comment })
hl("NotifyERRORTitle", { fg = c.red_light, bold = true })
hl("NotifyWARNTitle", { fg = c.orange })
hl("NotifyINFOTitle", { fg = c.fg_dim })
hl("NotifyDEBUGTitle", { fg = c.comment })
hl("NotifyTRACETitle", { fg = c.comment })

-- Health
hl("HealthError", { fg = c.red_light })
hl("HealthWarning", { fg = c.orange })
hl("HealthSuccess", { fg = c.seafoam })

-- Misc
hl("Conceal", { fg = c.comment })
hl("SpellBad", { undercurl = true, sp = c.red_light })
hl("SpellCap", { undercurl = true, sp = c.red_dim })
hl("SpellLocal", { undercurl = true, sp = c.aqua })
hl("SpellRare", { undercurl = true, sp = c.seafoam })

return c
