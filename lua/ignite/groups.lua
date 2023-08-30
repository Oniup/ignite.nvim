local group = {}

local function set_terminal_colors(pallet)
  vim.g.terminal_color_0  = pallet.background1
  vim.g.terminal_color_8  = pallet.grey
  vim.g.terminal_color_1  = pallet.red
  vim.g.terminal_color_9  = pallet.red
  vim.g.terminal_color_2  = pallet.orange
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
    ColorColumn                 = { fg = pallet.background3, bg = pallet.background3 },
    Conceal                     = { fg = pallet.yellow, bg = pallet.background3 },

    Cursor                      = { fg = pallet.black, bg = pallet.very_light_grey },
    iCursor                      = { fg = pallet.black, bg = pallet.very_light_grey },
    vCursor                      = { fg = pallet.black, bg = pallet.very_light_grey },
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

    ErrorMsg                    = { fg = pallet.red },
    -- ModeMsg      = { },
    -- MsgArea      = { },
    -- MsgSeparator = { },
    MoreMsg                     = { fg = pallet.dark_green },
    WarningMsg                  = { fg = pallet.yellow },

    VertSplit                   = { fg = pallet.grey, bg = pallet.background1 },
    Folded                      = { fg = pallet.light_blue },
    FoldColumn                  = { fg = pallet.background3 },
    SignColumn                  = { fg = pallet.background3 },
    LineNr                      = { fg = pallet.dark_grey },
    MatchParen                  = { bg = pallet.dark_grey },

    IncSearch                   = { fg = pallet.yellow },

    Substitute                  = { fg = pallet.black, bg = pallet.yellow },
    CursorLineNr                = { fg = pallet.grey },

    NonText                     = { fg = pallet.red },
    Normal                      = { fg = pallet.grey, bg = pallet.background1 },
    NormalFloat                 = { fg = pallet.very_light_grey, bg = pallet.background1 },
    FloatBorder                 = { fg = pallet.dark_grey },
    NormalNC                    = { fg = pallet.very_light_grey, bg = pallet.background1 },
    Pmenu                       = { fg = pallet.very_light_grey, bg = pallet.background1 },
    PmenuSel                    = { fg = pallet.very_light_grey, bg = pallet.background3 },
    PmenuSbar                   = { bg = pallet.background3 },
    PmenuThumb                  = { fg = pallet.black, bg = pallet.background3 },

    Question                    = { fg = pallet.dark_green, bold = true },
    QuickFixLine                = { fg = pallet.black, bg = pallet.yellow },
    Search                      = { fg = pallet.black, bg = pallet.yellow },
    SpecialKey                  = { fg = pallet.background1 },

    SpellBad                    = { fg = pallet.red, Underlined = true },
    -- SpellCap     = { },
    -- SpellLocal   = { },
    -- SpellRare    = { },
    --
    StatusLine                  = { fg = pallet.background3 },
    StatusLineNC                = { fg = pallet.background3 },
    TabLine                     = { fg = pallet.background3 },
    TabLineFill                 = { fg = pallet.background3 },
    TabLineSel                  = { bg = pallet.background1 },

    Title                       = { fg = pallet.orange },
    Visual                      = { bg = pallet.background3 },
    VisualNOS                   = { bg = pallet.background3 },

    Whitespace                  = { fg = pallet.dark_grey },
    Winseparator                = { fg = pallet.background3 },
    WildMenu                    = { fg = pallet.black, bg = pallet.yellow },

    -- Common
    Comment                     = { fg = pallet.dark_grey },

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
    SpecialChar                 = { fg = pallet.light_blue },
    -- Tag = {},
    Delimiter                   = { fg = pallet.pink },
    SpecialComment              = { fg = pallet.light_blue },
    Debug                       = { fg = pallet.yellow },

    Underlined                  = { fg = pallet.light_blue, gui = "underline" },
    Ignore                      = { fg = pallet.dark_grey },
    Error                       = { fg = pallet.red },
    Todo                        = { bg = pallet.grey },

    -- Telescope
    TelescopeNormal             = {},
    TelescopePromptNormal       = {},
    TelescopeBorder             = { fg = pallet.grey },
    TelescopePromptBorder       = { fg = pallet.grey },
    TelescopePromptTitle        = { fg = pallet.orange },
    TelescopePreviewTitle       = { fg = pallet.orange },
    TelescopeResultsTitle       = { fg = pallet.orange },
    TelescopeMatching           = { fg = pallet.red },
    TelescopePromptPrefix       = { fg = pallet.red, bg = pallet.background3 },
    TelescopeSelectionCaret     = { fg = pallet.orange, bg = pallet.background3 },

    -- CMP
    CmpItemAbbrMatch            = { fg = pallet.yellow },
    CmpItemAbbrMatchFuzzy       = { fg = pallet.orange },
    CmpItemKindArray            = { fg = pallet.grey },
    CmpItemKindBoolean          = { fg = pallet.red },
    CmpItemKindClass            = { fg = pallet.yellow },
    CmpItemKindColor            = { fg = pallet.pink },
    CmpItemKindConstant         = { fg = pallet.pink },
    CmpItemKindConstructor      = { fg = pallet.yellow },
    CmpItemKindCopilot          = { fg = pallet.light_blue },
    CmpItemKindEnum             = { fg = pallet.yellow },
    CmpItemKindEnumMember       = { fg = pallet.pink },
    CmpItemKindEvent            = { fg = pallet.dark_green },
    CmpItemKindField            = { fg = pallet.grey },
    CmpItemKindFile             = { fg = pallet.grey },
    CmpItemKindFolder           = { fg = pallet.grey },
    CmpItemKindPackage          = { fg = pallet.grey },
    CmpItemKindProperty         = { fg = pallet.grey },
    CmpItemKindText             = { fg = pallet.grey },
    CmpItemKindFunction         = { fg = pallet.orange },
    CmpItemKindInterface        = { fg = pallet.yellow },
    CmpItemKindKeyword          = { fg = pallet.red },
    CmpItemKindReference        = { fg = pallet.red },
    CmpItemKindTypeParameter    = { fg = pallet.red },
    CmpItemKindMethod           = { fg = pallet.orange },
    CmpItemKindModule           = { fg = pallet.yellow },
    CmpItemKindNamespace        = { fg = pallet.yellow },
    CmpItemKindNull             = { fg = pallet.pink },
    CmpItemKindNumber           = { fg = pallet.pink },
    CmpItemKindObject           = { fg = pallet.yellow },
    CmpItemKindStruct           = { fg = pallet.yellow },
    CmpItemKindOperator         = { fg = pallet.light_blue },
    CmpItemKindSnippet          = { fg = pallet.light_blue },
    CmpItemKindString           = { fg = pallet.dark_green },
    CmpItemKindUnit             = { fg = pallet.dark_green },
    CmpItemKindValue            = { fg = pallet.pink },
    CmpItemKindVariable         = { fg = pallet.very_light_green },

    -- NvimTree
    NvimTreeNormal              = { bg = pallet.background2 },

    -- LSP
    LspReferenceText            = { fg = pallet.red },
    LspReferenceRead            = { fg = pallet.red },
    LspReferenceWrite           = { fg = pallet.write },
    LspCodeLens                 = { fg = pallet.dark_grey },
    LspCodeLensSeparator        = { fg = pallet.grey },
    LspSignatureActiveParameter = { bg = pallet.background3 },

    DiagnosticError             = { fg = pallet.red },
    DiagnosticWarn              = { fg = pallet.yellow },
    DiagnosticInfo              = { fg = pallet.dark_green },
    DiagnosticHint              = { fg = pallet.light_blue },

    -- Tree-sitter
    ["@text.literal"]           = { fg = pallet.dark_grey },
    ["@text.reference"]         = { fg = pallet.light_grey },
    ["@text.title"]             = { fg = pallet.orange, bold = true, italic = true },
    ["@text.uri"]               = { fg = pallet.light_blue, gui = "underline" },
    ["@text.underline"]         = { fg = pallet.light_blue, gui = "underline" },
    ["@text.todo"]              = { fg = pallet.light_green },
    ["@comment"]                = { fg = pallet.dark_grey },
    ["@punctuation"]            = { fg = pallet.grey },
    ["@constant"]               = { fg = pallet.pink },
    ["@constant.builtin"]       = { fg = pallet.pink },
    ["@constant.macro"]         = { fg = pallet.pink },
    ["@define"]                 = { fg = pallet.grey },
    ["@macro"]                  = { fg = pallet.pink },
    ["@string"]                 = { fg = pallet.dark_green },
    ["@string.escape"]          = { fg = pallet.pink },
    ["@string.special"]         = { fg = pallet.pink },
    ["@character"]              = { fg = pallet.dark_green },
    ["@character.special"]      = { fg = pallet.pink },
    ["@number"]                 = { fg = pallet.pink },
    ["@boolean"]                = { fg = pallet.pink },
    ["@float"]                  = { fg = pallet.pink },
    ["@function"]               = { fg = pallet.orange, italic = true },
    ["@function.builtin"]       = { fg = pallet.orange, italic = true },
    ["@function.macro"]         = { fg = pallet.pink },
    ["@parameter"]              = { fg = pallet.very_light_green },
    ["@method"]                 = { fg = pallet.orange, italic = true },
    ["@field"]                  = { fg = pallet.grey },
    ["@property"]               = { fg = pallet.very_light_green },
    ["@constructor"]            = { fg = pallet.grey },
    ["@conditional"]            = { fg = pallet.red },
    ["@repeat"]                 = { fg = pallet.red },
    ["@label"]                  = { fg = pallet.red },
    ["@operator"]               = { fg = pallet.light_blue },
    ["@keyword"]                = { fg = pallet.red },
    ["@exception"]              = { fg = pallet.red },
    ["@variable"]               = { fg = pallet.very_light_green },
    ["@type.definition"]        = { fg = pallet.yellow },
    ["@storageclass"]           = { fg = pallet.yellow },
    ["@structure"]              = { fg = pallet.yellow },
    ["@namespace"]              = { fg = pallet.yellow },

    -- ["@type"] = { fg = "#FFFF00" },
    -- ["@include"] = { fg = "#FFFF00" },
    -- ["@preproc"] = { fg = "#FFFF00" },
    -- ["@debug"] = { fg = "#FFFF00" },
    -- ["@tag"] = { fg = "#FFFF00", bg = "#FFFF00" },
  }

  return groups
end

return group
