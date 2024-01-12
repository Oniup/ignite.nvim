local M = {}

function M.setup(opts)
  if opts then
    require("ignite.config").override_defaults(opts)
  end
end

function M.final_colors()
  local color_groups = require("ignite.colors")
  local tbl = vim.deepcopy(require("ignite.config").config)

  tbl.colors.pallet =
    vim.tbl_deep_extend("force", color_groups.default_pallet, tbl.colors.pallet)
  tbl.colors.terminal = vim.tbl_deep_extend(
    "force",
    color_groups.get_terminal(tbl.colors.pallet),
    tbl.colors.terminal
  )
  tbl.colors.groups = vim.tbl_deep_extend(
    "force",
    color_groups.get_groups(tbl.colors.pallet, tbl.style),
    tbl.colors.groups
  )
  return tbl
end

function M.load()
  if vim.version().minor < 8 then
    vim.notify_once(
      "ignite.nvim: requires neovim version 0.8 or higher",
      vim.log.levels.ERROR
    )
    return
  end

  local colors = M.final_colors()
  for i, v in ipairs(colors.colors.terminal) do
    vim.g["terminal_color_" .. i - 1] = v
  end

  vim.g.colors_name = "ignite"
  vim.o.termguicolors = true

  if vim.g.colors_name then
    vim.cmd.hi("clear")
  end

  for group, opts in pairs(colors.colors.groups) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

return M
