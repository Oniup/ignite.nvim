local M = {}

M.config = {
  colors = {
    pallet = {},
    groups = {},
    terminal = {},
    lualine = {},
  },
  style = {
    underline = true,
    undercurl = true,
    strikethrough = true,
    bold = true,
    italic = true,
  },
}

function M.override_defaults(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts)
end

return M
