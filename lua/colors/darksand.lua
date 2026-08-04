local colors = {
    yellow     = "#E6DB74",
    orange     = "#567425",
    red        = "#ff5c5c",
    magenta    = "#fc8bf3",
    blue       = "#fca644",
    green      = "#00a800",
    cyan       = "#64d65c",
    violet     = "#AE81FF",

    background   = "#1f1f1f",
    gutter       = "#4B5345",
    selection    = "#334230",
    text         = "#AF9374",
    comment      = "#4a4a4a",
    punctuation  = "#AF9374",
    keyword      = "#ab6f44",
    variable     = "#AF9374",
    function_    = "#AF9374",
    string       = "#b0ac46",
    constant     = "#aa675f",
    macro        = "#aa675f",
    number       = "#ab5744",
    white        = "#ab6f44",
    error        = "#ff5c5c",
    warning      = "#ffaa00",
    highlight    = "#334230",
    line_fg      = "#2F342D",
    cursor_line  = "#0f0f0f",
    color_column = "#0f0f0f",
    lualine_fg   = "#AF9374",
    lualine_bg   = "#121212",

    dimmed_keyword  = "#b0b0b0",
    dimmed_function = "#cccccc",
    dimmed_variable = "#a0b8c8",
    dimmed_string   = "#2fa89e",
    dimmed_type     = "#79c4a6",
}

vim.cmd("highlight clear")
vim.o.background = "dark"
vim.g.colors_name = "darksand"

local set = vim.api.nvim_set_hl

-- Core UI
set(0, "Normal",           { fg = colors.text, bg = colors.background })
set(0, "Cursor",           { bg = colors.white })
set(0, "Visual",           { reverse = true })
set(0, "LineNr",           { fg = colors.gutter })
set(0, "CursorLineNr",     { fg = colors.white, bg = colors.background })
set(0, "CursorLine",       { bg = colors.cursor_line })
set(0, "ColorColumn",      { bg = colors.color_column })
set(0, "VertSplit",        { fg = colors.line_fg })
set(0, "MatchParen",       { bg = colors.white, fg = colors.background })
set(0, "IncSearch",        { bg = colors.blue, fg = colors.background })
set(0, "Search",           { bg = colors.yellow, fg = colors.background })
set(0, "CurSearch",        { bg = colors.string, fg = colors.background })
set(0, "Substitute",       { bg = colors.cyan, fg = colors.background })
set(0, "Folded",           { bg = colors.lualine_bg })
set(0, "WinBar",           { bg = colors.background, fg = colors.white })
set(0, "WinBarNC",         { bg = colors.background })

-- Floating windows (Harpoon, Telescope, etc.)
set(0, "NormalFloat",      { fg = colors.text, bg = colors.lualine_bg })
set(0, "FloatBorder",      { fg = colors.line_fg, bg = colors.lualine_bg })

-- Mini indent scope plugin
set(0, "MiniIndentscopeSymbol", { link = "Comment" })

-- Trouble
set(0, "TroubleNormal",    { fg = colors.text, bg = colors.background })
set(0, "TroubleNormalNC",  { fg = colors.text, bg = colors.background })

-- Syntax
set(0, "Comment",          { fg = colors.comment })
set(0, "String",           { fg = colors.string })
set(0, "Number",           { fg = colors.number })
set(0, "Boolean",          { fg = colors.constant })
set(0, "Constant",         { fg = colors.constant })
set(0, "Identifier",       { fg = colors.variable })
set(0, "Function",         { fg = colors.function_ })
set(0, "Statement",        { fg = colors.keyword })
set(0, "Keyword",          { fg = colors.keyword })
set(0, "Type",             { fg = colors.punctuation })
set(0, "PreProc",          { fg = colors.macro })
set(0, "Special",          { fg = colors.constant })
set(0, "WarningMsg",       { fg = colors.warning })
set(0, "Error",            { fg = colors.error })
set(0, "Operator",         { fg = colors.keyword})
set(0, "Title",            { fg = colors.keyword})

-- Diagnostics
set(0, "DiagnosticError",  { fg = colors.red })
set(0, "DiagnosticWarn",   { fg = colors.warning })
set(0, "DiagnosticInfo",   { fg = colors.blue })
set(0, "DiagnosticHint",   { fg = colors.cyan })
set(0, "Test",             { fg = colors.magenta})

-- Rainbow delimiters (optional)
set(0, "rainbowcol1", { fg = colors.violet })
set(0, "rainbowcol2", { fg = colors.blue })
set(0, "rainbowcol3", { fg = colors.green })
set(0, "rainbowcol4", { fg = colors.yellow })
set(0, "rainbowcol5", { fg = colors.orange })
set(0, "rainbowcol6", { fg = colors.red })

-- Lualine integration
set(0, "StatusLine",        { fg = colors.lualine_fg, bg = colors.lualine_bg })
set(0, "StatusLineNC",      { fg = colors.line_fg, bg = colors.gutter })

local ok, lualine = pcall(require, "lualine")
if ok then
    local owly_lualine = {
        normal = {
            a = { fg = colors.lualine_bg, bg = colors.macro, gui = "bold" },
            b = { fg = colors.lualine_fg, bg = colors.gutter },
            c = { fg = colors.lualine_fg, bg = colors.lualine_bg },
        },
        insert = {
            a = { fg = colors.lualine_bg, bg = colors.string, gui = "bold" },
            b = { fg = colors.lualine_fg, bg = colors.gutter },
            c = { fg = colors.lualine_fg, bg = colors.lualine_bg },
        },
        visual = {
            a = { fg = colors.lualine_bg, bg = colors.number, gui = "bold" },
            b = { fg = colors.lualine_fg, bg = colors.gutter },
            c = { fg = colors.lualine_fg, bg = colors.lualine_bg },
        },
        replace = {
            a = { fg = colors.lualine_bg, bg = colors.error, gui = "bold" },
            b = { fg = colors.lualine_fg, bg = colors.gutter },
            c = { fg = colors.lualine_fg, bg = colors.lualine_bg },
        },
        command = {
            a = { fg = colors.lualine_bg, bg = colors.white, gui = "bold" },
            b = { fg = colors.lualine_fg, bg = colors.gutter },
            c = { fg = colors.lualine_fg, bg = colors.lualine_bg },
        },
        inactive = {
            a = { fg = colors.line_fg, bg = colors.lualine_bg },
            b = { fg = colors.line_fg, bg = colors.lualine_bg },
            c = { fg = colors.line_fg, bg = colors.lualine_bg },
        },
    }
    lualine.setup({ options = { theme = owly_lualine } })
end

-- Treesitter highlights
set(0, "@comment",             { link = "Comment" })
set(0, "@string",              { link = "String" })
set(0, "@number",              { link = "Number" })
set(0, "@boolean",             { link = "Boolean" })
set(0, "@constant",            { link = "Constant" })
set(0, "@function",            { link = "Function" })
set(0, "@function.builtin",    { link = "Function" })
set(0, "@variable",            { link = "Identifier" })
set(0, "@type",                { link = "Type" })
set(0, "@keyword",             { link = "Keyword" })
set(0, "@keyword.function",    { link = "Keyword" })
set(0, "@keyword.repeat",      { link = "Keyword" })
set(0, "@keyword.conditional", { link = "Keyword" })
set(0, "@field",               { link = "Identifier" })
set(0, "@property",            { link = "Identifier" })
set(0, "@parameter",           { link = "Identifier" })

set(0, "@punctuation.delimiter", { fg = colors.punctuation })
set(0, "@punctuation.bracket",   { fg = colors.punctuation })
set(0, "@punctuation.special",   { fg = colors.punctuation })
set(0, "@operator",              { fg = colors.punctuation })
set(0, "@variable.builtin",      { fg = colors.keyword })
set(0, "@constant.builtin",      { fg = colors.constant })
set(0, "@function.call",         { link = "Function" })
set(0, "@method",                { link = "Function" })
set(0, "@method.call",           { link = "Function" })
set(0, "@preproc",               { fg = colors.macro })
set(0, "@namespace",             { fg = colors.variable })

return colors

