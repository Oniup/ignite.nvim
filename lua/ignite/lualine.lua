local pallet = require("ignite.pallet")

local theme = {
  normal = {
    a = { bg = pallet.light_blue, fg = pallet.black, gui = "bold" },
    b = { bg = pallet.background3 },
    c = { bg = pallet.background2 },
  },
  insert = {
    a = { bg = pallet.dark_green, fg = pallet.black, gui = "bold" },
    b = { bg = pallet.background3 },
    c = { bg = pallet.background2 },
  },
  visual = {
    a = { bg = pallet.red, fg = pallet.black, gui = "bold" },
    b = { bg = pallet.background3 },
    c = { bg = pallet.background2 },
  },
  replace = {
    a = { bg = pallet.dark_green, fg = pallet.black, gui = "bold" },
    b = { bg = pallet.background3 },
    c = { bg = pallet.background2 },
  },
  command = {
    a = { bg = pallet.pink, fg = pallet.black, gui = "bold" },
    b = { bg = pallet.background3 },
    c = { bg = pallet.background2 },
  },
  inactive = {
    a = { bg = pallet.background3, fg = pallet.dark_grey, gui = "bold" },
    b = { bg = pallet.background3 },
    c = { bg = pallet.background2 },
  },
}

return theme
