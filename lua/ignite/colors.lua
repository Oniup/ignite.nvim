local M = {}

function M.get_terminal()
    local config = require("ignite").config
    local pallet = config.pallet
    local terminal_col = {
        pallet.background0,
        pallet.keyword,
        pallet.method,
        pallet.type,
        pallet.background3,
        pallet.constant,
        pallet.string,
        pallet.text,
        pallet.comment,
        pallet.keyword,
        pallet.string,
        pallet.type,
        pallet.operator,
        pallet.constant,
        pallet.method,
        pallet.comment,
    }
    return vim.list_extend(terminal_col, config.terminal)
end

function M.get_groups()
    local config = require("ignite").config
    local pallet = config.pallet
    local style = config.style
    local groups = {
        Background0 = { bg = pallet.background0 },
        Background1 = { bg = pallet.background1 },
        Background2 = { bg = pallet.background2 },
        Background3 = { bg = pallet.background3 },

        ColorColumn = { bg = pallet.background3 },
        Conceal = { fg = pallet.comment },

        Cursor = { fg = pallet.cursor_under_txt, bg = pallet.cursor },
        iCursor = { link = "Cursor" },
        vCursor = { link = "Cursor" },
        lCursor = { link = "Cursor" },
        CursorIM = { link = "Cursor" },
        CursorColumn = { bg = pallet.background2 },
        CursorLine = { bg = pallet.background2 },

        Directory = { fg = pallet.operator },
        DiffAdd = { fg = pallet.module },
        DiffChange = { fg = pallet.type },
        DiffDelete = { fg = pallet.keyword },
        DiffText = { fg = pallet.method },

        EndOfBuffer = { fg = pallet.background3 },

        TermCursor = { link = "Cursor" },
        TermCursorNC = { link = "Comment" },

        ErrorMsg = { fg = pallet.keyword },

        Folded = { fg = pallet.comment },
        FoldColumn = { fg = pallet.background3 },
        SignColumn = { fg = pallet.background3 },

        IncSearch = { fg = pallet.type },
        CurSearch = { link = "IncSearch" },

        LineNr = { fg = pallet.comment },
        MatchParen = { bg = pallet.comment },

        ModeMsg = { fg = pallet.module, bg = pallet.background2 },
        MsgArea = { bg = pallet.background2 },
        MsgSeparator = { fg = pallet.background3 },
        MoreMsg = { fg = pallet.string, bg = pallet.background2 },

        Substitute = { fg = pallet.cursor_under_txt, bg = pallet.type },
        CursorLineNr = { fg = pallet.text2 },

        NonText = { fg = pallet.keyword },
        Normal = { fg = pallet.text, bg = pallet.background1 },
        NormalFloat = { fg = pallet.text, bg = pallet.background1 },
        FloatBorder = { fg = pallet.comment },
        FloatTitle = { fg = pallet.method, bold = style.bold },
        Pmenu = { bg = pallet.background2 },
        PmenuSel = { fg = "NONE", bg = pallet.background3 },
        PmenuKind = { fg = pallet.type },
        PmenuKindSel = { fg = pallet.type },
        PmenuSBar = { bg = pallet.background3 },
        PmenuThumb = { bg = pallet.background2 },

        Question = { fg = pallet.module, bold = style.bold },
        QuickFixLine = { fg = pallet.module },
        Search = { fg = pallet.cursor_under_txt, bg = pallet.type },
        SpecialKey = { fg = "NONE", bg = "NONE" },

        SpellBad = { undercurl = style.undercurl, sp = pallet.keyword },

        StatusLine = { bg = pallet.background2 },
        StatusLineNC = { fg = pallet.comment, bg = pallet.background2 },

        TabLine = { bg = pallet.background2 },
        TabLineFill = { bg = pallet.background2 },
        TabLineSel = { bg = pallet.background2 },

        Title = { fg = pallet.method, bold = style.bold },
        Visual = { bg = pallet.background3 },
        VisualNOS = { bg = pallet.background3 },
        WarningMsg = { fg = pallet.type },

        Whitespace = { fg = pallet.comment },
        WinSeparator = { fg = pallet.background3 },
        WildMenu = { fg = pallet.cursor_under_txt, bg = pallet.type },
        WinBar = { bg = pallet.background3 },
        WinBarNC = { bg = pallet.background3 },

        -- Common
        Comment = { fg = pallet.comment, italic = style.italic },

        Constant = { fg = pallet.constant },
        String = { fg = pallet.string },
        Character = { fg = pallet.constant },
        Number = { fg = pallet.constant },
        Boolean = { fg = pallet.constant },
        Float = { fg = pallet.constant },

        Identifier = { fg = pallet.variable },
        Function = { fg = pallet.method, italic = style.italic },

        Statement = { fg = pallet.keyword },
        Conditional = { fg = pallet.keyword },
        Repeat = { fg = pallet.keyword },
        Label = { fg = pallet.keyword },
        Operator = { fg = pallet.operator },
        Keyword = { fg = pallet.keyword },
        Exception = { fg = pallet.keyword },

        PreProc = { fg = pallet.text2 },
        Include = { fg = pallet.text2 },
        Define = { fg = pallet.text2 },
        Macro = { fg = pallet.constant },
        PreCondit = { fg = pallet.text2 },

        Type = { fg = pallet.keyword },
        StorageClass = { fg = pallet.keyword },
        Structure = { fg = pallet.type },
        Typedef = { fg = pallet.type },

        Special = { fg = pallet.constant },
        SpecialChar = { fg = pallet.constant },
        Tag = { fg = pallet.keyword },
        Delimiter = { fg = pallet.text2 },
        SpecialComment = { fg = pallet.operator },
        Debug = { fg = pallet.type },

        Underlined = { fg = pallet.keyword, underline = style.underline },
        Ignore = { fg = pallet.comment },
        Error = { fg = pallet.keyword },
        Todo = { bg = pallet.operator },

        DiagnosticError = { fg = pallet.keyword },
        DiagnosticWarn = { fg = pallet.type },
        DiagnosticInfo = { fg = pallet.string },
        DiagnosticHint = { fg = pallet.operator },
        DiagnosticSignError = { fg = pallet.keyword },
        DiagnosticSignWarn = { fg = pallet.type },
        DiagnosticSignInfo = { fg = pallet.string },
        DiagnosticSignHint = { fg = pallet.operator },
        DiagnosticUnderlineError = {
            undercurl = style.undercurl,
            sp = pallet.keyword,
        },
        DiagnosticUnderlineWarn = { undercurl = style.undercurl, sp = pallet.type },
        DiagnosticUnderlineInfo = {
            undercurl = style.undercurl,
            sp = pallet.string,
        },
        DiagnosticUnderlineHint = {},
        DiagnosticFloatingError = { fg = pallet.keyword },
        DiagnosticFloatingWarn = { fg = pallet.type },
        DiagnosticFloatingInfo = { fg = pallet.string },
        DiagnosticFloatingHint = { fg = pallet.operator },
        DiagnosticTextError = { fg = pallet.keyword },
        DiagnosticTextWarn = { fg = pallet.type },
        DiagnosticTextInfo = { fg = pallet.string },
        DiagnosticTextHint = {},
        DiagnosticUnnecessary = { italic = style.italic },

        LspReferenceText = { fg = pallet.keyword, bold = style.bold },
        LspReferenceRead = { fg = pallet.keyword, bold = style.bold },
        LspReferenceWrite = { fg = pallet.method, bold = style.bold },
        LspCodeLens = { fg = pallet.operator },
        LspSignatureActiveParameter = { bg = pallet.background3 },
        LspInlayHint = { link = "Comment" },

        ["@none"] = { fg = "NONE", bg = "NONE" },

        ["@text"] = { link = "Normal" },
        ["@text.strong"] = { bold = style.bold },
        ["@text.emphasis"] = { italic = style.italic },
        ["@text.underline"] = { link = "Underlined" },
        ["@text.strike"] = { strikethrough = style.strikethrough },
        ["@text.literal"] = { link = "String" },
        ["@text.reference"] = { link = "Constant" },
        ["@text.math"] = { fg = pallet.operator },
        ["@text.environment"] = { link = "Macro" },
        ["@text.environment.name"] = { link = "@text" },
        ["@text.title"] = { link = "Title" },
        ["@text.uri"] = { link = "Underlined" },
        ["@text.todo"] = { link = "Todo" },
        ["@text.note"] = { link = "SpecialComment" },
        ["@text.warning"] = { link = "WarningMsg" },
        ["@text.danger"] = { link = "ErrorMsg" },
        ["@text.danger.comment"] = { link = "ErrorMsg" },
        ["@text.diff.add"] = { link = "DiffAdd" },
        ["@text.diff.delete"] = { link = "DiffDelete" },

        ["@tag"] = { link = "Tag" },
        ["@tag.attribute"] = { link = "Identifier" },
        ["@tag.delimiter"] = { link = "Delimiter" },

        ["@punctuation"] = { link = "Delimiter" },
        ["@punctuation.bracket"] = { link = "Delimiter" },
        ["@punctuation.special"] = { link = "Special" },

        ["@lsp.type.class"] = { link = "Structure" },
        ["@lsp.type.comment"] = { link = "@comment" },
        ["@lsp.type.decorator"] = { link = "@macro" },
        ["@lsp.type.enum"] = { link = "@structure" },
        ["@lsp.type.enumMember"] = { fg = pallet.module },
        ["@lsp.type.function"] = { link = "@function" },
        ["@lsp.type.interface"] = { link = "Identifier" },
        ["@lsp.type.macro"] = { link = "@macro" },
        ["@lsp.type.method"] = { link = "@method" },
        ["@lsp.type.namespace"] = { link = "@namespace" },
        ["@lsp.type.parameter"] = { link = "@parameter" },
        ["@lsp.type.property"] = { link = "@property" },
        ["@lsp.type.struct"] = { link = "@structure" },
        ["@lsp.type.type"] = { link = "@type.definition" },
        ["@lsp.type.TypeParameter"] = { link = "@type.definition" },
        ["@lsp.type.variable"] = { link = "@variable" },

        ["@comment"] = { link = "Comment" },
        ["@constant"] = { link = "Constant" },
        ["@constant.builtin"] = { link = "Constant" },
        ["@constant.macro"] = { link = "Define" },
        ["@define"] = { link = "Define" },
        ["@macro"] = { link = "Macro" },
        ["@string"] = { link = "String" },
        ["@string.escape"] = { link = "Special" },
        ["@string.special"] = { link = "SpecialChar" },
        ["@string.regex"] = { link = "SpecialChar" },
        ["@character"] = { link = "String" },
        ["@character.special"] = { link = "SpecialChar" },
        ["@number"] = { link = "Number" },
        ["@boolean"] = { link = "Boolean" },
        ["@float"] = { link = "Float" },
        ["@function"] = { link = "Function" },
        ["@function.call"] = { link = "Function" },
        ["@function.builtin"] = { link = "Function" },
        ["@function.macro"] = { link = "Macro" },
        ["@parameter"] = { fg = pallet.parameter },
        ["@method"] = { link = "Function" },
        ["@method.call"] = { link = "Function" },
        ["@field"] = { fg = pallet.property },
        ["@property"] = { fg = pallet.property },
        ["@constructor"] = { link = "Delimiter" },
        ["@conditional"] = { link = "Conditional" },
        ["@repeat"] = { link = "Repeat" },
        ["@label"] = { link = "Label" },
        ["@operator"] = { link = "Operator" },
        ["@keyword"] = { link = "Keyword" },
        ["@keyword.operator"] = { link = "Operator" },
        ["@keyword.return"] = { link = "Keyword" },
        ["@exception"] = { link = "Exception" },
        ["@variable"] = { fg = pallet.variable },
        ["@variable.builtin"] = { link = "Special" },
        ["@storageclass"] = { link = "StorageClass" },
        ["@structure"] = { link = "Structure" },
        ["@namespace"] = { fg = pallet.module },
        ["@type"] = { link = "Type" },
        ["@type.builtin"] = { link = "Type" },
        ["@type.definition"] = { link = "Typedef" },
        ["@type.qualifier"] = { link = "Keyword" },
        ["@include"] = { link = "Include" },
        ["@preproc"] = { link = "PreProc" },
        ["@debug"] = { link = "Debug" },

        htmlTag = { link = "Keyword" },
        htmlEndTag = { link = "Keyword" },
        htmlTagName = { link = "Identifier" },
        htmlArg = { fg = pallet.parameter },
        htmlTagN = { link = "Normal" },
        htmlSpecialTagName = { link = "Identifier" },
        htmlLink = { fg = pallet.operator, underline = style.underline },
        htmlSpecialChar = { link = "Keyword" },
        htmlBold = { bold = style.bold },
        htmlBoldUnderline = { bold = style.bold, underline = style.underline },
        htmlBoldItalic = { bold = style.bold, italic = style.italic },
        htmlBoldUnderlineItalic = {
            fg = pallet.text,
            bg = pallet.background1,
            bold = style.bold,
            italic = style.italic,
            underline = style.underline,
        },
        htmlUnderline = {
            fg = pallet.text,
            bg = pallet.background1,
            underline = style.underline,
        },
        htmlUnderlineItalic = {
            fg = pallet.text,
            bg = pallet.background1,
            italic = style.italic,
            underline = style.underline,
        },
        htmlItalic = {
            fg = pallet.text,
            bg = pallet.background1,
            italic = style.italic,
        },

        xmlTag = { link = "Delimiter" },
        xmlEndTag = { link = "Delimiter" },
        xmlTagName = { link = "Identifier" },
        xmlEqual = { link = "Operator" },
        docbkKeyword = { link = "Keyword" },
        xmlDocTypeDecl = { link = "Comment" },
        xmlDocTypeKeyword = { link = "Keyword" },
        xmlCdataStart = { link = "Normal" },
        xmlCdataCdata = { link = "Function" },
        dtdFunction = { link = "Comment" },
        dtdTagName = { link = "Identifier" },
        xmlAttrib = { fg = pallet.parameter },
        xmlProcessingDelim = { link = "Normal" },
        dtdParamEntityPunct = { link = "Normal" },
        dtdParamEntityDPunct = { link = "Normal" },
        xmlAttribPunct = { link = "Normal" },
        xmlEntity = { link = "Keyword" },
        xmlEntityPunct = { link = "Keyword" },

        NvimTreeNormal = { bg = pallet.background0 },
        NvimTreeSymlink = { fg = pallet.variable },
        NvimTreeRootFolder = { fg = pallet.method, bold = style.bold },
        NvimTreeFolderIcon = { fg = pallet.operator, bold = style.bold },
        NvimTreeFileIcon = { fg = pallet.text },
        NvimTreeExecFile = { fg = pallet.module, bold = style.bold },
        NvimTreeOpenedFile = { fg = pallet.keyword, bold = style.bold },
        NvimTreeSpecialFile = {
            fg = pallet.keyword,
            bold = style.bold,
            italic = style.italic,
        },
        NvimTreeImageFile = { fg = pallet.constant },
        NvimTreeIndentMarker = { fg = pallet.background3 },
        NvimTreeGitDirty = { fg = pallet.keyword },
        NvimTreeGitStaged = { fg = pallet.module },
        NvimTreeGitMerge = { fg = pallet.method },
        NvimTreeGitRenamed = { fg = pallet.method },
        NvimTreeGitNew = { fg = pallet.module },
        NvimTreeGitDeleted = { fg = pallet.keyword },
        NvimTreeWindowPicker = { fg = pallet.cursor_under_txt, bg = pallet.operator },

        TelescopeNormal = { link = "Normal" },
        TelescopePromptNormal = { link = "Normal" },
        TelescopeBorder = { link = "FloatBorder" },
        TelescopePromptBorder = { link = "FloatBorder" },
        TelescopePromptTitle = { link = "Title" },
        TelescopePreviewTitle = { link = "Title" },
        TelescopeResultsTitle = { link = "Title" },
        TelescopeMatching = { fg = pallet.type, bold = style.bold },
        TelescopePromptPrefix = { fg = pallet.keyword },
        TelescopeSelectionCaret = { fg = pallet.method, bg = pallet.background3 },
        TelescopeSelection = { fg = pallet.method, bg = pallet.background3 },

        CmpItemAbbrMatch = { fg = pallet.type },
        CmpItemMenu = { link = "Comment" },
        CmpItemAbbrMatchFuzzy = { fg = pallet.method },
        CmpItemAbbrDeprecated = {
            fg = pallet.comment,
            italic = style.italic,
            strikethrough = style.strikethrough,
        },
        CmpItemKindArray = { fg = pallet.text2 },
        CmpItemKindBoolean = { link = "Keyword" },
        CmpItemKindClass = { link = "Structure" },
        CmpItemKindColor = { fg = pallet.operator },
        CmpItemKindConstant = { link = "Constant" },
        CmpItemKindConstructor = { link = "Structure" },
        CmpItemKindCopilot = { fg = pallet.operator },
        CmpItemKindEnum = { link = "Structure" },
        CmpItemKindEnumMember = { fg = pallet.module },
        CmpItemKindEvent = { fg = pallet.text },
        CmpItemKindField = { fg = pallet.property },
        CmpItemKindFile = { fg = pallet.text },
        CmpItemKindFolder = { link = "Directory" },
        CmpItemKindPackage = { link = "Directory" },
        CmpItemKindProperty = { fg = pallet.property },
        CmpItemKindText = { fg = pallet.text },
        CmpItemKindFunction = { fg = pallet.method },
        CmpItemKindInterface = { link = "Identifier" },
        CmpItemKindKeyword = { link = "Keyword" },
        CmpItemKindReference = { fg = pallet.operator },
        CmpItemKindTypeParameter = { link = "Type" },
        CmpItemKindMethod = { fg = pallet.method },
        CmpItemKindModule = { fg = pallet.module },
        CmpItemKindNamespace = { fg = pallet.module },
        CmpItemKindNull = { link = "Constant" },
        CmpItemKindNumber = { link = "Number" },
        CmpItemKindObject = { link = "Structure" },
        CmpItemKindStruct = { link = "Structure" },
        CmpItemKindOperator = { link = "Operator" },
        CmpItemKindSnippet = { fg = pallet.operator },
        CmpItemKindString = { link = "String" },
        CmpItemKindUnit = { link = "String" },
        CmpItemKindValue = { link = "Constant" },
        CmpItemKindVariable = { fg = pallet.variable },

        CocErrorSign = { link = "DiagnosticError" },
        CocWarningSign = { link = "DiagnosticWarn" },
        CocInfoSign = { link = "DiagnosticSignInfo" },
        CocHintSign = { link = "DiagnosticSignHint" },
        CocErrorFloat = { link = "DiagnosticFloatingError" },
        CocWarningFloat = { link = "DiagnosticFloatingWarn" },
        CocInfoFloat = { link = "DiagnosticFloatingInfo" },
        CocHintFloat = { link = "DiagnosticFloatingHint" },
        CocDiagnosticsError = { link = "DiagnosticError" },
        CocDiagnosticsWarning = { link = "DiagnosticWarn" },
        CocDiagnosticsInfo = { link = "DiagnosticInfo" },
        CocDiagnosticsHint = { link = "DiagnosticHint" },
        CocSelectedText = { fg = pallet.type },
        CocMenuSel = { link = "PmenuSel" },
        CocCodeLens = { fg = pallet.operator },
        CocErrorHighlight = { undercurl = style.undercurl, sp = pallet.keyword },
        CocWarningHighlight = { undercurl = style.undercurl, sp = pallet.type },
        CocInfoHighlight = { undercurl = style.undercurl, sp = pallet.string },
        CocHintHighlight = { undercurl = style.undercurl, sp = pallet.operator },

        DapBreakpointSymbol = { fg = pallet.keyword },
        DapStoppedSymbol = { fg = pallet.module },
        DapUIBreakpointsCurrentLine = { link = "Structure" },
        DapUIBreakpointsDisabledLine = { link = "Comment" },
        DapUIBreakpointsInfo = { fg = pallet.operator },
        DapUIBreakpointsLine = { fg = pallet.constant },
        DapUIBreakpointsPath = { fg = pallet.operator, bold = style.bold },
        DapUICurrentFrameName = { link = "Identifier" },
        DapUIDecoration = { link = "Constant" },
        DapUIFloatBorder = { link = "FloatBorder" },
        DapUILineNumber = { link = "LineNr" },
        DapUIModifiedValue = { fg = pallet.module },
        DapUIScope = { fg = pallet.keyword, bold = style.bold },
        DapUISource = { fg = pallet.property, italic = style.italic },
        DapUIStoppedThread = { fg = pallet.keyword, bold = style.bold },
        DapUIThread = { link = "Comment" },
        DapUIType = { link = "Type" },
        DapUIUnavailable = { link = "Comment" },
        DapUIWatchesEmpty = { link = "Comment" },
        DapUIWatchesError = { link = "DiagnosticError" },
        DapUIWatchesValue = { link = "Constant" },
        DapUIWinSelect = { link = "Type" },
        DapUIPlayPause = { fg = pallet.module },
        DapUIRestart = { fg = pallet.module },
        DapUIStepBack = { fg = pallet.operator },
        DapUIStepInto = { fg = pallet.operator },
        DapUIStepOut = { fg = pallet.operator },
        DapUIStepOver = { fg = pallet.operator },
        DapUIStop = { fg = pallet.keyword },

        TSRainbowRed = { fg = pallet.keyword },
        TSRainbowOrange = { fg = pallet.method },
        TSRainbowYellow = { fg = pallet.type },
        TSRainbowGreen = { fg = pallet.module },
        TSRainbowBlue = { fg = pallet.operator },
        TSRainbowViolet = { fg = pallet.constant },
        TSRainbowCyan = { fg = pallet.property },

        IlluminatedWordText = { link = "LspReferenceText" },
        IlluminatedWordRead = { link = "LspReferenceRead" },
        IlluminatedWordWrite = { link = "LspReferenceWrite" },

        NoiceCursor = { link = "Cursor" },
        NotifyDEBUGBorder = { link = "FloatBorder" },
        NotifyDEBUGIcon = { link = "Debug" },
        NotifyDEBUGTitle = { link = "Debug" },
        NotifyERRORBorder = { link = "DiagnosticError" },
        NotifyERRORIcon = { link = "DiagnosticError" },
        NotifyERRORTitle = { link = "DiagnosticError" },
        NotifyINFOBorder = { link = "DiagnosticInfo" },
        NotifyINFOIcon = { link = "DiagnosticInfo" },
        NotifyINFOTitle = { link = "DiagnosticInfo" },
        NotifyTRACEBorder = { link = "DiagnosticHint" },
        NotifyTRACEIcon = { link = "DiagnosticHint" },
        NotifyTRACETitle = { link = "DiagnosticHint" },
        NotifyWARNBorder = { link = "DiagnosticWarn" },
        NotifyWARNIcon = { link = "DiagnosticWarn" },
        NotifyWARNTitle = { link = "DiagnosticWarn" },

        BufferCurrent = {
            fg = pallet.operator,
            bg = pallet.background1,
            italic = style.italic,
            bold = style.bold,
        },
        BufferCurrentIndex = {
            fg = pallet.operator,
            bg = pallet.background1,
            italic = style.italic,
            bold = style.bold,
        },
        BufferCurrentMod = {
            fg = pallet.operator,
            bg = pallet.background1,
            italic = style.italic,
            bold = style.bold,
        },
        BufferCurrentSign = {
            fg = pallet.background3,
            bg = pallet.background1,
            italic = style.italic,
            bold = style.bold,
        },
        BufferCurrentTarget = {
            fg = pallet.operator,
            bg = pallet.background1,
            italic = style.italic,
            bold = style.bold,
        },
        BufferVisible = {
            fg = pallet.comment,
            bg = pallet.background1,
            italic = style.italic,
        },
        BufferVisibleIndex = {
            fg = pallet.comment,
            bg = pallet.background1,
            italic = style.italic,
        },
        BufferVisibleMod = {
            fg = pallet.comment,
            bg = pallet.background1,
            italic = style.italic,
        },
        BufferVisibleSign = {
            fg = pallet.background3,
            bg = pallet.background1,
            italic = style.italic,
        },
        BufferVisibleTarget = {
            fg = pallet.comment,
            bg = pallet.background1,
            italic = style.italic,
        },
        BufferInactive = { fg = pallet.background3, bg = pallet.background0 },
        BufferInactiveIndex = { fg = pallet.background3, bg = pallet.background0 },
        BufferInactiveMod = { fg = pallet.background3, bg = pallet.background0 },
        BufferInactiveSign = { fg = pallet.background3, bg = pallet.background0 },
        BufferInactiveTarget = { fg = pallet.background3, bg = pallet.background0 },
        BufferTabpages = { bg = pallet.background0 },
        BufferTabpageFill = { bg = pallet.background0 },
        BufferOffset = { bg = pallet.background0 },
        BufferScrollArrow = { bg = pallet.background0 },
        BufferPart = {},
    }
    if config.groups then
        groups = vim.tbl_deep_extend("force", groups, config.groups)
    end
    return groups
end

return M
