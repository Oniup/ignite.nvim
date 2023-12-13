local M = {}

function M.setup(setup)
  M.__overrides = setup.overrides or nil
end

function M.get_tbl(tbl, name)
  if M.__overrides and M.__overrides[name] then
    tbl = vim.tbl_deep_extend("force", tbl, M.__overrides[name])
  end
  return tbl
end

function M.set_terminal_colors(pallet)
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

function M.load()
  if vim.version().minor < 8 then
    vim.notify_once("ignite.nvim: requires neovim version 0.8 or higher", vim.log.levels.ERROR)
    return
  end

  if vim.g.colors_name then
    vim.cmd.hi("clear")
  end

  vim.g.colors_name = "ignite"
  vim.o.termguicolors = true

  local pallet = M.get_tbl(require("ignite.pallet"), "pallet")
  local groups = M.get_tbl(require("ignite.groups").get(pallet), "groups")

  for group, opts in pairs(groups) do
    vim.api.nvim_set_hl(0, group, opts)
  end

  M.set_terminal_colors(pallet)
end

return M
