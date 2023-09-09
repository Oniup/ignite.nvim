local group = {}

local function set_terminal_colors(pallet)
  vim.g.terminal_color_0  = pallet.background1
  vim.g.terminal_color_8  = pallet.grey
  vim.g.terminal_color_1  = pallet.red
  vim.g.terminal_color_9  = pallet.red
  vim.g.terminal_color_2  = pallet.dark_green
  vim.g.terminal_color_10 = pallet.orange
  vim.g.terminal_color_3  = pallet.yellow
  vim.g.terminal_color_11 = pallet.yellow
  vim.g.terminal_color_4  = pallet.blue
  vim.g.terminal_color_12 = pallet.blue
  vim.g.terminal_color_5  = pallet.pink
  vim.g.terminal_color_13 = pallet.pink
  vim.g.terminal_color_6  = pallet.light_blue
  vim.g.terminal_color_14 = pallet.light_blue
  vim.g.terminal_color_7  = pallet.light_grey
  vim.g.terminal_color_15 = pallet.very_light_grey
end

function group.get()
  local pallet = require("ignite.pallet")

  set_terminal_colors(pallet)

  local groups = {
    ColorColumn                 = { bg = pallet.background3 },
    Conceal                     = { fg = pallet.dark_grey },

    Cursor                      = { fg = pallet.black, bg = pallet.very_light_grey },
    iCursor                     = { fg = pallet.black, bg = pallet.very_light_grey },
    vCursor                     = { fg = pallet.black, bg = pallet.very_light_grey },
    lCursor                     = { fg = pallet.black, bg = pallet.very_light_grey },
    CursorIM                    = { fg = pallet.black, bg = pallet.very_light_grey },
    CursorColumn                = { bg = pallet.background3 },
    CursorLine                  = { bg = pallet.background3 },

    Directory                   = { fg = pallet.light_blue },
    DiffAdd                     = { fg = pallet.light_green },
    DiffChange                  = { fg = pallet.yellow },
    DiffDelete                  = { fg = pallet.red },
    DiffText                    = { fg = pallet.orange },

    EndOfBuffer                 = { fg = pallet.background3 },

    TermCursor                  = { link = "Cursor" },
    TermCursorNC                = { link = "Comment" },

    ErrorMsg                    = { fg = pallet.red },
    WinSeparator                = { fg = pallet.background3 },

    Folded                      = { fg = pallet.light_blue },
    FoldColumn                  = { fg = pallet.background3 },
    SignColumn                  = { fg = pallet.background3 },

    IncSearch                   = { fg = pallet.yellow },
    CurSearch                   = { link = "IncSearch" },

    LineNr                      = { fg = pallet.dark_grey },
    MatchParen                  = { bg = pallet.dark_grey },

    ModeMsg                     = { fg = pallet.light_green, bg = pallet.background2 },
    MsgArea                     = { bg = pallet.background2 },
    MsgSeparator                = { fg = pallet.background3 },
    MoreMsg                     = { fg = pallet.dark_green, bg = pallet.background2 },

    VertSplit                   = { fg = pallet.light_grey, bg = pallet.background1, },

    Substitute                  = { fg = pallet.black, bg = pallet.yellow },
    CursorLineNr                = { fg = pallet.grey },

    NonText                     = { fg = pallet.red },
    Normal                      = { fg = pallet.light_grey, bg = pallet.background1 },
    NormalFloat                 = { fg = pallet.light_grey, bg = pallet.background1 },
    FloatBorder                 = { fg = pallet.dark_grey },
    FloatTitle                  = { fg = pallet.orange, bold = true },

    Pmenu                       = { link = "Normal" },
    PmenuSel                    = { link = "CursorLine" },
    PmenuKind                   = { fg = pallet.yellow },
    PmenuKindSel                = { fg = pallet.yellow },
    PmenuSBar                   = { bg = pallet.dark_grey },
    PmenuThumb                  = { bg = pallet.dark_grey },

    Question                    = { fg = pallet.light_green, bold = true },
    QuickFixLine                = { fg = pallet.light_green },
    Search                      = { fg = pallet.black, bg = pallet.yellow },
    SpecialKey                  = { fg = "NONE", bg = "NONE" },

    SpellBad                    = { undercurl = true, sp = pallet.red },

    StatusLine                  = { bg = pallet.background2 },
    StatusLineNC                = { fg = pallet.dark_grey, bg = pallet.background2 },

    TabLine                     = { bg = pallet.background2 },
    TabLineFill                 = { bg = pallet.background2 },
    TabLineSel                  = { bg = pallet.background2 },

    Title                       = { fg = pallet.orange, bold = true },
    Visual                      = { bg = pallet.background3 },
    VisualNOS                   = { bg = pallet.background3 },
    WarningMsg                  = { fg = pallet.yellow },

    Whitespace                  = { fg = pallet.dark_grey },
    Winseparator                = { fg = pallet.background3 },
    WildMenu                    = { fg = pallet.black, bg = pallet.yellow },
    WinBar                      = { fg = pallet.background3, bg = pallet.background3 },
    WinBarNC                    = { fg = pallet.background3, bg = pallet.background3 },

    -- Common
    Comment                     = { fg = pallet.dark_grey, italic = true },

    Constant                    = { fg = pallet.pink },
    String                      = { fg = pallet.dark_green },
    Character                   = { fg = pallet.pink },
    Number                      = { fg = pallet.pink },
    Boolean                     = { fg = pallet.pink },
    Float                       = { fg = pallet.pink },

    Identifier                  = { fg = pallet.very_light_green },
    Function                    = { fg = pallet.orange, italic = true },

    Statement                   = { fg = pallet.red },
    Conditional                 = { fg = pallet.red },
    Repeat                      = { fg = pallet.red },
    Label                       = { fg = pallet.red },
    Operator                    = { fg = pallet.light_blue },
    Keyword                     = { fg = pallet.red },
    Exception                   = { fg = pallet.red },

    PreProc                     = { fg = pallet.grey },
    Include                     = { fg = pallet.grey },
    Define                      = { fg = pallet.grey },
    Macro                       = { fg = pallet.pink },
    PreCondit                   = { fg = pallet.grey },

    Type                        = { fg = pallet.red },
    StorageClass                = { fg = pallet.yellow },
    Structure                   = { fg = pallet.yellow },
    Typedef                     = { fg = pallet.yellow },

    Special                     = { fg = pallet.pink },
    SpecialChar                 = { fg = pallet.pink },
    Tag                         = { fg = pallet.grey },
    Delimiter                   = { fg = pallet.grey },
    SpecialComment              = { fg = pallet.light_blue },
    Debug                       = { fg = pallet.yellow },

    Underlined                  = { fg = pallet.red, underline = true },
    Ignore                      = { fg = pallet.dark_grey },
    Error                       = { fg = pallet.red },
    Todo                        = { bg = pallet.light_blue },

    DiagnosticError             = { fg = pallet.red },
    DiagnosticWarn              = { fg = pallet.yellow },
    DiagnosticInfo              = { fg = pallet.dark_green },
    DiagnosticHint              = { fg = pallet.light_blue },
    DiagnosticSignError         = { fg = pallet.red },
    DiagnosticSignWarn          = { fg = pallet.yellow },
    DiagnosticSignInfo          = { fg = pallet.dark_green },
    DiagnosticSignHint          = { fg = pallet.light_blue },
    DiagnosticUnderlineError    = { undercurl = true, sp = pallet.red },
    DiagnosticUnderlineWarn     = { undercurl = true, sp = pallet.yellow },
    DiagnosticUnderlineInfo     = { undercurl = true, sp = pallet.dark_green },
    DiagnosticUnderlineHint     = {},
    DiagnosticFloatingError     = { fg = pallet.red },
    DiagnosticFloatingWarn      = { fg = pallet.yellow },
    DiagnosticFloatingInfo      = { fg = pallet.dark_green },
    DiagnosticFloatingHint      = { fg = pallet.light_blue },
    DiagnosticTextError         = { fg = pallet.red },
    DiagnosticTextWarn          = { fg = pallet.yellow },
    DiagnosticTextInfo          = { fg = pallet.dark_green },
    DiagnosticTextHint          = {},

    LspReferenceText            = { fg = pallet.red, bold = true },
    LspReferenceRead            = { fg = pallet.red, bold = true },
    LspReferenceWrite           = { fg = pallet.orange, bold = true },
    LspCodeLens                 = { fg = pallet.light_blue },
    LspSignatureActiveParameter = { bg = pallet.background3 },
    LspInlayHint                = { link = "Comment" },

    ["@none"]                   = { fg = "NONE", bg = "NONE" },

    ["@text"]                   = { link = "Normal" },
    ["@text.strong"]            = { bold = true },
    ["@text.emphasis"]          = { italic = true },
    ["@text.underline"]         = { link = "Underlined" },
    ["@text.strike"]            = { strikethrough = true },
    ["@text.literal"]           = { link = "String" },
    ["@text.reference"]         = { link = "Constant" },
    ["@text.math"]              = { fg = pallet.light_blue },
    ["@text.environment"]       = { link = "Macro" },
    ["@text.environment.name"]  = { link = "Type" },
    ["@text.title"]             = { link = "Title" },
    ["@text.uri"]               = { link = "Underlined" },
    ["@text.todo"]              = { link = "Todo" },
    ["@text.note"]              = { link = "SpecialComment" },
    ["@text.warning"]           = { link = "WarningMsg" },
    ["@text.danger"]            = { link = "ErrorMsg" },
    ["@text.danger.comment"]    = { link = "ErrorMsg" },
    ["@text.diff.add"]          = { link = "DiffAdd" },
    ["@text.diff.delete"]       = { link = "DiffDelete" },

    ["@tag"]                    = { link = "Tag" },
    ["@tag.attribute"]          = { link = "Identifier" },
    ["@tag.delimiter"]          = { link = "Delimiter" },

    ["@punctuation"]            = { link = "Delimiter" },
    ["@punctuation.bracket"]    = { link = "Delimiter" },
    ["@punctuation.special"]    = { link = "Special" },

    ["@lsp.type.class"]         = { link = "@storageclass" },
    ["@lsp.type.comment"]       = { link = "@type" },
    ["@lsp.type.decorator"]     = { link = "@macro" },
    ["@lsp.type.enum"]          = { link = "@enum" },
    ["@lsp.type.enumMember"]    = { link = "@constant" },
    ["@lsp.type.function"]      = { link = "@function" },
    ["@lsp.type.interface"]     = { link = "@constructor" },
    ["@lsp.type.macro"]         = { link = "@macro" },
    ["@lsp.type.method"]        = { link = "@method" },
    ["@lsp.type.namespace"]     = { link = "@namespace" },
    ["@lsp.type.parameter"]     = { link = "@parameter" },
    ["@lsp.type.property"]      = { link = "@property" },
    ["@lsp.type.struct"]        = { link = "@structure" },
    ["@lsp.type.type"]          = { link = "@type" },
    ["@lsp.type.TypeParameter"] = { link = "@type.definition" },
    ["@lsp.type.variable"]      = { link = "@variable" },

    ["@comment"]                = { link = "Comment" },
    ["@constant"]               = { link = "Constant" },
    ["@constant.builtin"]       = { link = "Function" },
    ["@constant.macro"]         = { link = "Define" },
    ["@define"]                 = { link = "Define" },
    ["@macro"]                  = { link = "Macro" },
    ["@string"]                 = { link = "String" },
    ["@string.escape"]          = { link = "Special" },
    ["@string.special"]         = { link = "SpecialChar" },
    ["@string.regex"]           = { link = "String" },
    ["@character"]              = { link = "String" },
    ["@character.special"]      = { link = "SpecialChar" },
    ["@number"]                 = { link = "Number" },
    ["@boolean"]                = { link = "Boolean" },
    ["@float"]                  = { link = "Float" },
    ["@function"]               = { link = "Function" },
    ["@function.call"]          = { link = "Function" },
    ["@function.builtin"]       = { link = "Function" },
    ["@function.macro"]         = { link = "Macro" },
    ["@parameter"]              = { fg = pallet.brown },
    ["@method"]                 = { link = "Function" },
    ["@method.call"]            = { link = "Function" },
    ["@field"]                  = { fg = pallet.very_light_green },
    ["@property"]               = { fg = pallet.very_light_green },
    ["@constructor"]            = { link = "Class" },
    ["@conditional"]            = { link = "Conditional" },
    ["@repeat"]                 = { link = "Repeat" },
    ["@label"]                  = { link = "Label" },
    ["@operator"]               = { link = "Operator" },
    ["@keyword"]                = { link = "Keyword" },
    ["@keyword.operator"]       = { link = "Operator" },
    ["@keyword.return"]         = { link = "Keyword" },
    ["@exception"]              = { link = "Exception" },
    ["@variable"]               = { fg = pallet.grey },
    ["@variable.builtin"]       = { link = "Special" },
    ["@storageclass"]           = { link = "StorageClass" },
    ["@structure"]              = { link = "Structure" },
    ["@namespace"]              = { fg = pallet.light_green },
    ["@type"]                   = { link = "Type" },
    ["@type.definition"]        = { link = "Typedef" },
    ["@type.builtin"]           = { link = "Type" },
    ["@type.qualifier"]         = { link = "Keyword" },
    ["@include"]                = { link = "Include" },
    ["@preproc"]                = { link = "PreProc" },
    ["@debug"]                  = { link = "Debug" },

    NvimTreeNormal              = { bg = pallet.background2 },

    -- coc
    CocErrorSign                = { link = "DiagnosticError" },
    CocWarningSign              = { link = "DiagnosticWarn" },
    CocInfoSign                 = { link = "DiagnosticSignInfo" },
    CocHintSign                 = { link = "DiagnosticSignHint" },
    CocErrorFloat               = { link = "DiagnosticFloatingError" },
    CocWarningFloat             = { link = "DiagnosticFloatingWarn" },
    CocInfoFloat                = { link = "DiagnosticFloatingInfo" },
    CocHintFloat                = { link = "DiagnosticFloatingHint" },
    CocDiagnosticsError         = { link = "DiagnosticError" },
    CocDiagnosticsWarning       = { link = "DiagnosticWarn" },
    CocDiagnosticsInfo          = { link = "DiagnosticInfo" },
    CocDiagnosticsHint          = { link = "DiagnosticHint" },
    CocSelectedText             = { fg = pallet.yellow },
    CocMenuSel                  = { link = "PmenuSel" },
    CocCodeLens                 = { fg = pallet.light_blue },
    CocErrorHighlight           = { undercurl = true, sp = pallet.red },
    CocWarningHighlight         = { undercurl = true, sp = pallet.yellow },
    CocInfoHighlight            = { undercurl = true, sp = pallet.dark_green },
    CocHintHighlight            = { undercurl = true, sp = pallet.light_blue },

    -- telescope
    TelescopeNormal             = { link = "Normal" },
    TelescopePromptNormal       = { link = "Normal" },
    TelescopeBorder             = { link = "FloatBorder" },
    TelescopePromptBorder       = { link = "FloatBorder" },
    TelescopePromptTitle        = { link = "Title" },
    TelescopePreviewTitle       = { link = "Title" },
    TelescopeResultsTitle       = { link = "Title" },
    TelescopeMatching           = { fg = pallet.yellow, bold = true },
    TelescopePromptPrefix       = { fg = pallet.red, bg = pallet.background3 },
    TelescopeSelectionCaret     = { fg = pallet.orange, bg = pallet.background3 },
    TelescopeSelection          = { fg = pallet.orange, bg = pallet.background3 },

    -- cmp
    CmpItemAbbrMatch            = { fg = pallet.yellow },
    CmpItemAbbrMatchFuzzy       = { fg = pallet.orange },
    CmpItemKindArray            = { fg = pallet.grey },
    CmpItemKindBoolean          = { link = "Keyword" },
    CmpItemKindClass            = { link = "Class" },
    CmpItemKindColor            = { fg = pallet.light_blue },
    CmpItemKindConstant         = { link = "Constant" },
    CmpItemKindConstructor      = { link = "Class" },
    CmpItemKindCopilot          = { fg = pallet.light_blue },
    CmpItemKindEnum             = { link = "Structure" },
    CmpItemKindEnumMember       = { link = "Constant" },
    CmpItemKindEvent            = { link = "Normal" },
    CmpItemKindField            = { fg = pallet.very_light_green },
    CmpItemKindFile             = { link = "Normal" },
    CmpItemKindFolder           = { link = "Directory" },
    CmpItemKindPackage          = { link = "Directory" },
    CmpItemKindProperty         = { fg = pallet.very_light_green },
    CmpItemKindText             = { link = "Normal" },
    CmpItemKindFunction         = { link = "Function", italic = false },
    CmpItemKindInterface        = { link = "Class" },
    CmpItemKindKeyword          = { link = "Keyword" },
    CmpItemKindReference        = { fg = pallet.light_blue },
    CmpItemKindTypeParameter    = { link = "Type" },
    CmpItemKindMethod           = { link = "Function", italic = false },
    CmpItemKindModule           = { fg = pallet.light_green },
    CmpItemKindNamespace        = { fg = pallet.light_green },
    CmpItemKindNull             = { link = "Constant" },
    CmpItemKindNumber           = { link = "Number" },
    CmpItemKindObject           = { link = "Structure" },
    CmpItemKindStruct           = { link = "Structure" },
    CmpItemKindOperator         = { link = "Operator" },
    CmpItemKindSnippet          = { fg = pallet.light_blue },
    CmpItemKindString           = { link = "String" },
    CmpItemKindUnit             = { link = "String" },
    CmpItemKindValue            = { link = "Constant" },
    CmpItemKindVariable         = { fg = pallet.grey },
  }

  return groups
end

return group
