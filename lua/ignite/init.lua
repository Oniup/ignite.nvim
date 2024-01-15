local M = {}

M.config = {
  pallet = {
    background0 = "#0d0e0e",
    background1 = "#131515",
    background2 = "#181b1a",
    background3 = "#222625",

    cursor = "#bfb2a4",
    cursor_under_txt = "#000000",
    text = "#a69a8d",
    text2 = "#9a8d8d",

    variable = "#879291",
    property = "#a6a499",
    comment = "#59544d",
    operator = "#82979C",
    module = "#b1ca78",
    constant = "#ee617b",
    keyword = "#e74e3d",
    type = "#f6ba41",
    method = "#fe7442",
    string = "#9aad6c",
    parameter = "#c19c6c",
  },
  groups = {},
  terminal = {},
  lualine_theme = {},
  style = {
    underline = true,
    undercurl = true,
    strikethrough = true,
    bold = true,
    italic = true,
  },
}

function M.darker_panel_bg_overrides()
  return {
    groups = {
      NormalFloat = { link = "Background0" },
      FloatBorder = { link = "Background0" },
      NvimTreeNormal = { link = "Background0" },

      TelescopeNormal = { link = "Background0" },
      TelescopeBorder = { link = "Background0" },
      TelescopePromptNormal = { link = "Background2" },
      TelescopePromptBorder = { link = "Background2" },

      CmpNormal = { link = "NormalFloat" },
    },
  }
end

function M.setup(overrides)
  if overrides then
    M.config = vim.tbl_deep_extend("force", M.config, overrides)
  end
end

function M.load()
  if vim.version().minor < 8 then
    vim.notify_once(
      "ignite.nvim: requires neovim version 0.8 or higher",
      vim.log.levels.ERROR
    )
    return
  end
  vim.cmd.hi("clear")
  vim.g.colors_name = "ignite"
  vim.o.termguicolors = true
  local colors = require("ignite.colors")
  local terminal_colors = colors.get_terminal()
  local group_colors = colors.get_groups()
  for i, v in ipairs(terminal_colors) do
    vim.g["terminal_color_" .. i - 1] = v
  end
  for group, opts in pairs(group_colors) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

return M
