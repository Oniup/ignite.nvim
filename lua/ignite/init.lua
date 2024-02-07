local M = {}

--- @class IgniteHighlightDef
--- @field fg string?
--- @field bg string?
--- @field sp string?
--- @field blend integer?
--- @field bold boolean?
--- @field standout boolean?
--- @field underline boolean?
--- @field undercurl boolean?
--- @field underdouble boolean?
--- @field underdotted boolean?
--- @field strikethrough boolean?
--- @field italic boolean?
--- @field reverse boolean?
--- @field nocombine boolean?

--- @class IgniteStyle
local default_style = {
    underline = true,
    undercurl = true,
    strikethrough = true,
    bold = true,
    italic = true,
    no_borders = true,
}

--- @class IgnitePallet
local default_theme = {
    background0 = "#0d0e0e",
    background1 = "#131515",
    background2 = "#181b1a",
    background3 = "#222625",

    cursor = "#bfb2a4",
    text = "#a69a8d",
    text2 = "#9a8d8d",

    variable = "#879291",
    property = "#a6a499",
    comment = "#59544d",
    operator = "#82979c",
    module = "#b1ca78",
    constant = "#ee617b",
    keyword = "#e74e3d",
    type = "#f6ba41",
    method = "#fe7442",
    string = "#9aad6c",
    parameter = "#c19c6c",
}

--- @class IgniteConfig
--- @field pallet IgnitePallet?
--- @field style IgniteStyle?
--- @field groups table<string, IgniteHighlightDef>?
--- @field terminal table<number, string>?
--- @field lualine_theme table?
M.config = {
    pallet = default_theme,
    style = default_style,
    groups = {},
    terminal = {},
    lualine_theme = {},
}

--- @param overrides IgniteConfig
function M.setup(overrides)
    if overrides then
        M.config = vim.tbl_deep_extend("force", M.config, overrides)
    end
end

function M.load()
    if vim.version().minor < 8 then
        vim.notify_once("ignite.nvim: requires neovim version 0.8 or higher", vim.log.levels.ERROR)
        return
    end
    vim.cmd.hi("clear")
    vim.g.colors_name = "ignite"
    vim.o.termguicolors = true
    local groups = require("ignite.groups")
    local terminal_colors = groups.get_terminal()
    for i, v in ipairs(terminal_colors) do
        vim.g["terminal_color_" .. i - 1] = v
    end
    local colors = groups.get_groups()
    for group, opts in pairs(colors) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M
