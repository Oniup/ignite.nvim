local M = {}

M.default_pallet = {
  background1      = "#131515",
  background2      = "#181b1a",
  background3      = "#222625",

  cursor           = "#bfb2a4",
  cursor_under_txt = "#000000",
  text             = "#a69a8d",
  text2            = "#9a8d8d",

  variable         = "#879291",
  property         = "#a6a499",
  comment          = "#59544d",
  operator         = "#82979C",
  namespace        = "#b1ca78",
  constant         = "#ee617b",
  keyword          = "#e74e3d",
  type             = "#f6ba41",
  functions        = "#fe7442",
  string           = "#9aad6c",
  parameter        = "#c19c6c",
}

function M.get_terminal(pallet)
  return {
    pallet.background1,
    pallet.red,
    pallet.dark_green,
    pallet.yellow,
    pallet.blue,
    pallet.pink,
    pallet.light_blue,
    pallet.light_grey,
    pallet.grey,
    pallet.red,
    pallet.orange,
    pallet.yellow,
    pallet.blue,
    pallet.pink,
    pallet.light_blue,
    pallet.very_light_grey,
  }
end

function M.get_groups(pallet, style)
  return {
    Background1                  = { bg = pallet.background1 },
    Background2                  = { bg = pallet.background2 },
    Background3                  = { bg = pallet.background3 },

    NoBorderNormalFloat          = { fg = pallet.text, bg = pallet.background2 },
    NoBorderFloatTitle           = { fg = pallet.functions, bg = pallet.background3, bold = style.bold },

    ColorColumn                  = { bg = pallet.background3 },
    Conceal                      = { fg = pallet.comment },

    Cursor                       = { fg = pallet.cursor_under_txt, bg = pallet.cursor },
    iCursor                      = { link = "Cursor" },
    vCursor                      = { link = "Cursor" },
    lCursor                      = { link = "Cursor" },
    CursorIM                     = { link = "Cursor" },
    CursorColumn                 = { link = "Background3Color" },
    CursorLine                   = { link = "Background3Color" },

    Directory                    = { fg = pallet.operator },
    DiffAdd                      = { fg = pallet.namespace },
    DiffChange                   = { fg = pallet.type },
    DiffDelete                   = { fg = pallet.keyword },
    DiffText                     = { fg = pallet.functions },

    EndOfBuffer                  = { fg = pallet.background3 },

    TermCursor                   = { link = "Cursor" },
    TermCursorNC                 = { link = "Comment" },

    ErrorMsg                     = { fg = pallet.keyword },
    WinSeparator                 = { fg = pallet.background3 },

    Folded                       = { fg = pallet.comment },
    FoldColumn                   = { fg = pallet.background3 },
    SignColumn                   = { fg = pallet.background3 },

    IncSearch                    = { fg = pallet.type },
    CurSearch                    = { link = "IncSearch" },

    LineNr                       = { fg = pallet.comment },
    MatchParen                   = { bg = pallet.comment },

    ModeMsg                      = { fg = pallet.namespace, bg = pallet.background2 },
    MsgArea                      = { bg = pallet.background2 },
    MsgSeparator                 = { fg = pallet.background3 },
    MoreMsg                      = { fg = pallet.string, bg = pallet.background2 },

    VertSplit                    = { fg = pallet.text, bg = pallet.background1, },

    Substitute                   = { fg = pallet.cursor_under_txt, bg = pallet.type },
    CursorLineNr                 = { fg = pallet.text2 },

    NonText                      = { fg = pallet.keyword },
    Normal                       = { fg = pallet.text, bg = pallet.background1 },
    NormalFloat                  = { fg = pallet.text, bg = pallet.background1 },
    FloatBorder                  = { fg = pallet.comment },
    FloatTitle                   = { fg = pallet.functions, bold = style.bold },
    Pmenu                        = { bg = pallet.background2 },
    PmenuSel                     = { fg = "NONE", bg = pallet.background3 },
    PmenuKind                    = { fg = pallet.type },
    PmenuKindSel                 = { fg = pallet.type },
    PmenuSBar                    = { bg = pallet.background3 },
    PmenuThumb                   = { bg = pallet.background2 },

    Question                     = { fg = pallet.namespace, bold = style.bold },
    QuickFixLine                 = { fg = pallet.namespace },
    Search                       = { fg = pallet.cursor_under_txt, bg = pallet.type },
    SpecialKey                   = { fg = "NONE", bg = "NONE" },

    SpellBad                     = { undercurl = style.undercurl, sp = pallet.keyword },

    StatusLine                   = { bg = pallet.background2 },
    StatusLineNC                 = { fg = pallet.comment, bg = pallet.background2 },

    TabLine                      = { bg = pallet.background2 },
    TabLineFill                  = { bg = pallet.background2 },
    TabLineSel                   = { bg = pallet.background2 },

    Title                        = { fg = pallet.functions, bold = style.bold },
    Visual                       = { bg = pallet.background3 },
    VisualNOS                    = { bg = pallet.background3 },
    WarningMsg                   = { fg = pallet.type },

    Whitespace                   = { fg = pallet.comment },
    Winseparator                 = { fg = pallet.background3 },
    WildMenu                     = { fg = pallet.cursor_under_txt, bg = pallet.type },
    WinBar                       = { fg = pallet.background3, bg = pallet.background3 },
    WinBarNC                     = { fg = pallet.background3, bg = pallet.background3 },

    -- Common
    Comment                      = { fg = pallet.comment, italic = style.italic },

    Constant                     = { fg = pallet.constant },
    String                       = { fg = pallet.string },
    Character                    = { fg = pallet.constant },
    Number                       = { fg = pallet.constant },
    Boolean                      = { fg = pallet.constant },
    Float                        = { fg = pallet.constant },

    Identifier                   = { fg = pallet.variable },
    Function                     = { fg = pallet.functions, italic = style.italic },

    Statement                    = { fg = pallet.keyword },
    Conditional                  = { fg = pallet.keyword },
    Repeat                       = { fg = pallet.keyword },
    Label                        = { fg = pallet.keyword },
    Operator                     = { fg = pallet.operator },
    Keyword                      = { fg = pallet.keyword },
    Exception                    = { fg = pallet.keyword },

    PreProc                      = { fg = pallet.text2 },
    Include                      = { fg = pallet.text2 },
    Define                       = { fg = pallet.text2 },
    Macro                        = { fg = pallet.constant },
    PreCondit                    = { fg = pallet.text2 },

    Type                         = { fg = pallet.keyword },
    StorageClass                 = { fg = pallet.keyword },
    Structure                    = { fg = pallet.type },
    Typedef                      = { fg = pallet.type },

    Special                      = { fg = pallet.constant },
    SpecialChar                  = { fg = pallet.constant },
    Tag                          = { fg = pallet.keyword },
    Delimiter                    = { fg = pallet.text2 },
    SpecialComment               = { fg = pallet.operator },
    Debug                        = { fg = pallet.type },

    Underlined                   = { fg = pallet.keyword, underline = style.underline },
    Ignore                       = { fg = pallet.comment },
    Error                        = { fg = pallet.keyword },
    Todo                         = { bg = pallet.operator },

    DiagnosticError              = { fg = pallet.keyword },
    DiagnosticWarn               = { fg = pallet.type },
    DiagnosticInfo               = { fg = pallet.string },
    DiagnosticHint               = { fg = pallet.operator },
    DiagnosticSignError          = { fg = pallet.keyword },
    DiagnosticSignWarn           = { fg = pallet.type },
    DiagnosticSignInfo           = { fg = pallet.string },
    DiagnosticSignHint           = { fg = pallet.operator },
    DiagnosticUnderlineError     = { undercurl = style.undercurl, sp = pallet.keyword },
    DiagnosticUnderlineWarn      = { undercurl = style.undercurl, sp = pallet.type },
    DiagnosticUnderlineInfo      = { undercurl = style.undercurl, sp = pallet.string },
    DiagnosticUnderlineHint      = {},
    DiagnosticFloatingError      = { fg = pallet.keyword },
    DiagnosticFloatingWarn       = { fg = pallet.type },
    DiagnosticFloatingInfo       = { fg = pallet.string },
    DiagnosticFloatingHint       = { fg = pallet.operator },
    DiagnosticTextError          = { fg = pallet.keyword },
    DiagnosticTextWarn           = { fg = pallet.type },
    DiagnosticTextInfo           = { fg = pallet.string },
    DiagnosticTextHint           = {},

    LspReferenceText             = { fg = pallet.keyword, bold = style.bold },
    LspReferenceRead             = { fg = pallet.keyword, bold = style.bold },
    LspReferenceWrite            = { fg = pallet.functions, bold = style.bold },
    LspCodeLens                  = { fg = pallet.operator },
    LspSignatureActiveParameter  = { bg = pallet.background3 },
    LspInlayHint                 = { link = "Comment" },

    ["@none"]                    = { fg = "NONE", bg = "NONE" },

    ["@text"]                    = { link = "Normal" },
    ["@text.strong"]             = { bold = style.bold },
    ["@text.emphasis"]           = { italic = style.italic },
    ["@text.underline"]          = { link = "Underlined" },
    ["@text.strike"]             = { strikethrough = style.strikethrough },
    ["@text.literal"]            = { link = "String" },
    ["@text.reference"]          = { link = "Constant" },
    ["@text.math"]               = { fg = pallet.operator },
    ["@text.environment"]        = { link = "Macro" },
    ["@text.environment.name"]   = { link = "@text" },
    ["@text.title"]              = { link = "Title" },
    ["@text.uri"]                = { link = "Underlined" },
    ["@text.todo"]               = { link = "Todo" },
    ["@text.note"]               = { link = "SpecialComment" },
    ["@text.warning"]            = { link = "WarningMsg" },
    ["@text.danger"]             = { link = "ErrorMsg" },
    ["@text.danger.comment"]     = { link = "ErrorMsg" },
    ["@text.diff.add"]           = { link = "DiffAdd" },
    ["@text.diff.delete"]        = { link = "DiffDelete" },

    ["@tag"]                     = { link = "Tag" },
    ["@tag.attribute"]           = { link = "Identifier" },
    ["@tag.delimiter"]           = { link = "Delimiter" },

    ["@punctuation"]             = { link = "Delimiter" },
    ["@punctuation.bracket"]     = { link = "Delimiter" },
    ["@punctuation.special"]     = { link = "Special" },

    ["@lsp.type.class"]          = { link = "Structure" },
    ["@lsp.type.comment"]        = { link = "@comment" },
    ["@lsp.type.decorator"]      = { link = "@macro" },
    ["@lsp.type.enum"]           = { link = "@structure" },
    ["@lsp.type.enumMember"]     = { fg = pallet.namespace },
    ["@lsp.type.function"]       = { link = "@function" },
    ["@lsp.type.interface"]      = { link = "Identifier" },
    ["@lsp.type.macro"]          = { link = "@macro" },
    ["@lsp.type.method"]         = { link = "@method" },
    ["@lsp.type.namespace"]      = { link = "@namespace" },
    ["@lsp.type.parameter"]      = { link = "@parameter" },
    ["@lsp.type.property"]       = { link = "@property" },
    ["@lsp.type.struct"]         = { link = "@structure" },
    ["@lsp.type.type"]           = { link = "@type.definition" },
    ["@lsp.type.TypeParameter"]  = { link = "@type.definition" },
    ["@lsp.type.variable"]       = { link = "@variable" },

    ["@comment"]                 = { link = "Comment" },
    ["@constant"]                = { link = "Constant" },
    ["@constant.builtin"]        = { link = "Constant" },
    ["@constant.macro"]          = { link = "Define" },
    ["@define"]                  = { link = "Define" },
    ["@macro"]                   = { link = "Macro" },
    ["@string"]                  = { link = "String" },
    ["@string.escape"]           = { link = "Special" },
    ["@string.special"]          = { link = "SpecialChar" },
    ["@string.regex"]            = { link = "SpecialChar" },
    ["@character"]               = { link = "String" },
    ["@character.special"]       = { link = "SpecialChar" },
    ["@number"]                  = { link = "Number" },
    ["@boolean"]                 = { link = "Boolean" },
    ["@float"]                   = { link = "Float" },
    ["@function"]                = { link = "Function" },
    ["@function.call"]           = { link = "Function" },
    ["@function.builtin"]        = { link = "Function" },
    ["@function.macro"]          = { link = "Macro" },
    ["@parameter"]               = { fg = pallet.parameter },
    ["@method"]                  = { link = "Function" },
    ["@method.call"]             = { link = "Function" },
    ["@field"]                   = { fg = pallet.property },
    ["@property"]                = { fg = pallet.property },
    ["@constructor"]             = { link = "Delimiter" },
    ["@conditional"]             = { link = "Conditional" },
    ["@repeat"]                  = { link = "Repeat" },
    ["@label"]                   = { link = "Label" },
    ["@operator"]                = { link = "Operator" },
    ["@keyword"]                 = { link = "Keyword" },
    ["@keyword.operator"]        = { link = "Operator" },
    ["@keyword.return"]          = { link = "Keyword" },
    ["@exception"]               = { link = "Exception" },
    ["@variable"]                = { fg = pallet.variable },
    ["@variable.builtin"]        = { link = "Special" },
    ["@storageclass"]            = { link = "StorageClass" },
    ["@structure"]               = { link = "Structure" },
    ["@namespace"]               = { fg = pallet.namespace },
    ["@type"]                    = { link = "Type" },
    ["@type.builtin"]            = { link = "Type" },
    ["@type.definition"]         = { link = "Typedef" },
    ["@type.qualifier"]          = { link = "Keyword" },
    ["@include"]                 = { link = "Include" },
    ["@preproc"]                 = { link = "PreProc" },
    ["@debug"]                   = { link = "Debug" },

    htmlTag                      = { link = "Keyword" },
    htmlEndTag                   = { link = "Keyword" },
    htmlTagName                  = { link = "Identifier" },
    htmlArg                      = { fg = pallet.parameter },
    htmlTagN                     = { link = "Normal" },
    htmlSpecialTagName           = { link = "Identifier" },
    htmlLink                     = { fg = pallet.operator, underline = style.underline },
    htmlSpecialChar              = { link = "Keyword" },
    htmlBold                     = { bold = style.bold },
    htmlBoldUnderline            = { bold = style.bold, underline = style.underline },
    htmlBoldItalic               = { bold = style.bold, italic = style.italic },
    htmlBoldUnderlineItalic      = {
      fg = pallet.text,
      bg = pallet.background1,
      bold = style.bold,
      italic = style.italic,
      underline = style.underline,
    },
    htmlUnderline                = {
      fg = pallet.text,
      bg = pallet.background1,
      underline = style.underline
    },
    htmlUnderlineItalic          = {
      fg = pallet.text,
      bg = pallet.background1,
      italic = style.italic,
      underline = style.underline,
    },
    htmlItalic                   = {
      fg = pallet.text,
      bg = pallet.background1,
      italic = style.italic
    },

    xmlTag                       = { link = "Delimiter" },
    xmlEndTag                    = { link = "Delimiter" },
    xmlTagName                   = { link = "Identifier" },
    xmlEqual                     = { link = "Operator" },
    docbkKeyword                 = { link = "Keyword" },
    xmlDocTypeDecl               = { link = "Comment" },
    xmlDocTypeKeyword            = { link = "Keyword" },
    xmlCdataStart                = { link = "Normal" },
    xmlCdataCdata                = { link = "Function" },
    dtdFunction                  = { link = "Comment" },
    dtdTagName                   = { link = "Identifier" },
    xmlAttrib                    = { fg = pallet.parameter },
    xmlProcessingDelim           = { link = "Normal" },
    dtdParamEntityPunct          = { link = "Normal" },
    dtdParamEntityDPunct         = { link = "Normal" },
    xmlAttribPunct               = { link = "Normal" },
    xmlEntity                    = { link = "Keyword" },
    xmlEntityPunct               = { link = "Keyword" },

    NvimTreeNormal               = { bg = pallet.background2 },
    NvimTreeSymlink              = { fg = pallet.variable },
    NvimTreeRootFolder           = { fg = pallet.functions, bold = style.bold },
    NvimTreeFolderIcon           = { fg = pallet.operator, bold = style.bold },
    NvimTreeFileIcon             = { fg = pallet.text },
    NvimTreeExecFile             = { fg = pallet.namespace, bold = style.bold },
    NvimTreeOpenedFile           = { fg = pallet.keyword, bold = style.bold },
    NvimTreeSpecialFile          = {
      fg = pallet.type,
      bold = style.bold,
      underline = style.underline
    },
    NvimTreeImageFile            = { fg = pallet.constant },
    NvimTreeIndentMarker         = { fg = pallet.background3 },
    NvimTreeGitDirty             = { fg = pallet.keyword },
    NvimTreeGitStaged            = { fg = pallet.namespace },
    NvimTreeGitMerge             = { fg = pallet.functions },
    NvimTreeGitRenamed           = { fg = pallet.functions },
    NvimTreeGitNew               = { fg = pallet.namespace },
    NvimTreeGitDeleted           = { fg = pallet.keyword },
    NvimTreeWindowPicker         = { fg = pallet.cursor_under_txt, bg = pallet.operator },

    TelescopeNormal              = { link = "Normal" },
    TelescopePromptNormal        = { link = "Normal" },
    TelescopeBorder              = { link = "FloatBorder" },
    TelescopePromptBorder        = { link = "FloatBorder" },
    TelescopePromptTitle         = { link = "Title" },
    TelescopePreviewTitle        = { link = "Title" },
    TelescopeResultsTitle        = { link = "Title" },
    TelescopeMatching            = { fg = pallet.type, bold = style.bold },
    TelescopePromptPrefix        = { fg = pallet.keyword },
    TelescopeSelectionCaret      = { fg = pallet.functions, bg = pallet.background3 },
    TelescopeSelection           = { fg = pallet.functions, bg = pallet.background3 },

    CmpItemAbbrMatch             = { fg = pallet.type },
    CmpItemMenu                  = { link = "Comment" },
    CmpItemAbbrMatchFuzzy        = { fg = pallet.functions },
    CmpItemAbbrDeprecated        = { fg = pallet.comment, italics = style.italics, strikethrough = style.strikethrough },
    CmpItemKindArray             = { fg = pallet.text2 },
    CmpItemKindBoolean           = { link = "Keyword" },
    CmpItemKindClass             = { link = "Structure" },
    CmpItemKindColor             = { fg = pallet.operator },
    CmpItemKindConstant          = { link = "Constant" },
    CmpItemKindConstructor       = { link = "Structure" },
    CmpItemKindCopilot           = { fg = pallet.operator },
    CmpItemKindEnum              = { link = "Structure" },
    CmpItemKindEnumMember        = { fg = pallet.namespace },
    CmpItemKindEvent             = { link = "Normal" },
    CmpItemKindField             = { fg = pallet.property },
    CmpItemKindFile              = { link = "Normal" },
    CmpItemKindFolder            = { link = "Directory" },
    CmpItemKindPackage           = { link = "Directory" },
    CmpItemKindProperty          = { fg = pallet.property },
    CmpItemKindText              = { link = "Normal" },
    CmpItemKindFunction          = { fg = pallet.functions },
    CmpItemKindInterface         = { link = "Identifier" },
    CmpItemKindKeyword           = { link = "Keyword" },
    CmpItemKindReference         = { fg = pallet.operator },
    CmpItemKindTypeParameter     = { link = "Type" },
    CmpItemKindMethod            = { fg = pallet.functions },
    CmpItemKindModule            = { fg = pallet.namespace },
    CmpItemKindNamespace         = { fg = pallet.namespace },
    CmpItemKindNull              = { link = "Constant" },
    CmpItemKindNumber            = { link = "Number" },
    CmpItemKindObject            = { link = "Structure" },
    CmpItemKindStruct            = { link = "Structure" },
    CmpItemKindOperator          = { link = "Operator" },
    CmpItemKindSnippet           = { fg = pallet.operator },
    CmpItemKindString            = { link = "String" },
    CmpItemKindUnit              = { link = "String" },
    CmpItemKindValue             = { link = "Constant" },
    CmpItemKindVariable          = { fg = pallet.variable },

    CocErrorSign                 = { link = "DiagnosticError" },
    CocWarningSign               = { link = "DiagnosticWarn" },
    CocInfoSign                  = { link = "DiagnosticSignInfo" },
    CocHintSign                  = { link = "DiagnosticSignHint" },
    CocErrorFloat                = { link = "DiagnosticFloatingError" },
    CocWarningFloat              = { link = "DiagnosticFloatingWarn" },
    CocInfoFloat                 = { link = "DiagnosticFloatingInfo" },
    CocHintFloat                 = { link = "DiagnosticFloatingHint" },
    CocDiagnosticsError          = { link = "DiagnosticError" },
    CocDiagnosticsWarning        = { link = "DiagnosticWarn" },
    CocDiagnosticsInfo           = { link = "DiagnosticInfo" },
    CocDiagnosticsHint           = { link = "DiagnosticHint" },
    CocSelectedText              = { fg = pallet.type },
    CocMenuSel                   = { link = "PmenuSel" },
    CocCodeLens                  = { fg = pallet.operator },
    CocErrorHighlight            = { undercurl = style.undercurl, sp = pallet.keyword },
    CocWarningHighlight          = { undercurl = style.undercurl, sp = pallet.type },
    CocInfoHighlight             = { undercurl = style.undercurl, sp = pallet.string },
    CocHintHighlight             = { undercurl = style.undercurl, sp = pallet.operator },

    debugPC                      = { bg = pallet.background3 },
    debugBreakpoint              = { fg = pallet.keyword },

    DapBreakpointSymbol          = { fg = pallet.keyword },
    DapStoppedSymbol             = { fg = pallet.namespace },
    DapUIBreakpointsCurrentLine  = { link = "Structure" },
    DapUIBreakpointsDisabledLine = { link = "Comment" },
    DapUIBreakpointsInfo         = { link = "Normal" },
    DapUIBreakpointsLine         = { fg = pallet.constant },
    DapUIBreakpointsPath         = { fg = pallet.operator, bold = style.bold },
    DapUICurrentFrameName        = { link = "Identifier" },
    DapUIDecoration              = { link = "Constant" },
    DapUIFloatBorder             = { link = "FloatBorder" },
    DapUILineNumber              = { link = "LineNr" },
    DapUIModifiedValue           = { fg = pallet.namespace },
    DapUIScope                   = { fg = pallet.keyword, bold = style.bold },
    DapUISource                  = { fg = pallet.property, italic = style.italic },
    DapUIStoppedThread           = { fg = pallet.keyword, bold = style.bold },
    DapUIThread                  = { link = "Comment" },
    DapUIType                    = { link = "Type" },
    DapUIUnavailable             = { link = "Comment" },
    DapUIWatchesEmpty            = { link = "Comment" },
    DapUIWatchesError            = { link = "DiagnosticError" },
    DapUIWatchesValue            = { link = "Constant" },
    DapUIWinSelect               = { link = "Type" },
    DapUIPlayPause               = { fg = pallet.namespace, bg = pallet.background3 },
    DapUIRestart                 = { fg = pallet.namespace, bg = pallet.background3 },
    DapUIStepBack                = { fg = pallet.operator, bg = pallet.background3 },
    DapUIStepInto                = { fg = pallet.operator, bg = pallet.background3 },
    DapUIStepOut                 = { fg = pallet.operator, bg = pallet.background3 },
    DapUIStepOver                = { fg = pallet.operator, bg = pallet.background3 },
    DapUIStop                    = { fg = pallet.keyword, bg = pallet.background3 },

    TSRainbowRed                 = { fg = pallet.keyword },
    TSRainbowOrange              = { fg = pallet.functions },
    TSRainbowYellow              = { fg = pallet.type },
    TSRainbowGreen               = { fg = pallet.namespace },
    TSRainbowBlue                = { fg = pallet.operator },
    TSRainbowViolet              = { fg = pallet.constant },
    TSRainbowCyan                = { fg = pallet.property },

    IlluminatedWordText          = { link = "LspReferenceText" },
    IlluminatedWordRead          = { link = "LspReferenceRead" },
    IlluminatedWordWrite         = { link = "LspReferenceWrite" },

    NoiceCursor                  = { link = "TermCursor" },
    NotifyDEBUGBorder            = { link = "FloatBorder" },
    NotifyDEBUGIcon              = { link = "Debug" },
    NotifyDEBUGTitle             = { link = "Debug" },
    NotifyERRORBorder            = { link = "DiagnosticError" },
    NotifyERRORIcon              = { link = "DiagnosticError" },
    NotifyERRORTitle             = { link = "DiagnosticError" },
    NotifyINFOBorder             = { link = "DiagnosticInfo" },
    NotifyINFOIcon               = { link = "DiagnosticInfo" },
    NotifyINFOTitle              = { link = "DiagnosticInfo" },
    NotifyTRACEBorder            = { link = "DiagnosticHint" },
    NotifyTRACEIcon              = { link = "DiagnosticHint" },
    NotifyTRACETitle             = { link = "DiagnosticHint" },
    NotifyWARNBorder             = { link = "DiagnosticWarn" },
    NotifyWARNIcon               = { link = "DiagnosticWarn" },
    NotifyWARNTitle              = { link = "DiagnosticWarn" },
  }
end

return M
