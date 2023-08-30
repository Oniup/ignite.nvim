local pallet = require("ignite.pallet")

local theme = {
  normal = {
    a = { bg = pallet.light_blue, fg = pallet.black, gui = "bold" },
    b = { bg = pallet.background3, fg = "NONE" },
    c = { bg = pallet.background2, fg = pallet.light_blue },
  },
  insert = {
    a = { bg = pallet.orange, fg = pallet.black, gui = "bold" },
    b = { bg = pallet.background3, fg = "NONE" },
    c = { bg = pallet.background2, fg = pallet.orange },
  },
  visual = {
    a = { bg = pallet.red, fg = pallet.black, gui = "bold" },
    b = { bg = pallet.background3, fg = "NONE" },
    c = { bg = pallet.background2, fg = pallet.red },
  },
  replace = {
    a = { bg = pallet.light_blue, fg = pallet.black, gui = "bold" },
    b = { bg = pallet.background3, fg = "NONE" },
    c = { bg = pallet.background2, fg = pallet.light_blue },
  },
  command = {
    a = { bg = pallet.pink, fg = pallet.black, gui = "bold" },
    b = { bg = pallet.background3, fg = "NONE" },
    c = { bg = pallet.background2, fg = pallet.pink },
  },
  inactive = {
    a = { bg = pallet.background2, fg = pallet.dark_grey, gui = "bold" },
    b = { bg = pallet.background2, fg = "NONE" },
    c = { bg = pallet.background2, fg = pallet.dark_grey },
  },
}

return theme
