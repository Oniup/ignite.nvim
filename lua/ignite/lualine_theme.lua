local config = require("ignite.config").config

local pallet = vim.tbl_deep_extend(
  "force", require("ignite.colors").default_pallet, config.colors.pallet
)

local default_theme = {
  normal = {
    a = { bg = pallet.operator, fg = pallet.cursor_under_txt, gui = "bold" },
    b = { bg = pallet.background3 },
    c = { bg = pallet.background2 },
  },
  insert = {
    a = { bg = pallet.string, fg = pallet.cursor_under_txt, gui = "bold" },
    b = { bg = pallet.background3 },
    c = { bg = pallet.background2 },
  },
  visual = {
    a = { bg = pallet.keyword, fg = pallet.cursor_under_txt, gui = "bold" },
    b = { bg = pallet.background3 },
    c = { bg = pallet.background2 },
  },
  replace = {
    a = { bg = pallet.string, fg = pallet.cursor_under_txt, gui = "bold" },
    b = { bg = pallet.background3 },
    c = { bg = pallet.background2 },
  },
  command = {
    a = { bg = pallet.constant, fg = pallet.cursor_under_txt, gui = "bold" },
    b = { bg = pallet.background3 },
    c = { bg = pallet.background2 },
  },
  inactive = {
    a = { bg = pallet.background3, fg = pallet.comment, gui = "bold" },
    b = { bg = pallet.background3 },
    c = { bg = pallet.background2 },
  },
}

return vim.tbl_deep_extend("force", default_theme, config.colors.lualine)
