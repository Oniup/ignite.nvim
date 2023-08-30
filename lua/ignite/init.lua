local ignite = {}

function ignite.setup(overrides)
  ignite.__overrides = overrides or {}
end

function ignite.load()
  if vim.version().minor < 8 then
    vim.notify_once("ignite.nvim: requires neovim version 0.8 or higher", vim.log.levels.ERROR)
    return
  end

  if vim.g.colors_name then
    vim.cmd.hi("clear")
  end

  vim.g.colors_name = "ignite"
  vim.opt.background = "dark"

  local groups = require("ignite.groups").get()
  for group, opts in pairs(groups) do
    -- vim.notify("group: " .. group .. ", opts: " .. vim.inspect(opts), vim.log.levels.WARN)
    vim.api.nvim_set_hl(0, group, opts)
  end
end

return ignite
