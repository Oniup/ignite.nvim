local config = require("ignite").config
local pallet = config.pallet

local theme = {
    normal = {
        a = { bg = pallet.operator, fg = pallet.background0, gui = "bold" },
        b = { bg = pallet.background3 },
        c = { bg = pallet.background2 },
    },
    insert = {
        a = { bg = pallet.string, fg = pallet.background0, gui = "bold" },
        b = { bg = pallet.background3 },
        c = { bg = pallet.background2 },
    },
    visual = {
        a = { bg = pallet.keyword, fg = pallet.background0, gui = "bold" },
        b = { bg = pallet.background3 },
        c = { bg = pallet.background2 },
    },
    replace = {
        a = { bg = pallet.string, fg = pallet.background0, gui = "bold" },
        b = { bg = pallet.background3 },
        c = { bg = pallet.background2 },
    },
    command = {
        a = { bg = pallet.constant, fg = pallet.background0, gui = "bold" },
        b = { bg = pallet.background3 },
        c = { bg = pallet.background2 },
    },
    inactive = {
        a = { bg = pallet.background3, fg = pallet.comment, gui = "bold" },
        b = { bg = pallet.background3 },
        c = { bg = pallet.background2 },
    },
}

return vim.tbl_deep_extend("force", theme, config.lualine_theme)
