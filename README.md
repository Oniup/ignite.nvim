# Ignite.nvim

<p align="center">
    <h2 align="center">Ignite.nvim</h2>
</p>

<p align="center">
    <img alt="Showcase" src="./showcase.png" width=1000>
</p>

# Prerequisites

using [Vim Plug](https://github.com/junegunn/vim-plug)

```vim
Plug "Oniup/ignite.nvim"
```

Using [Packer](https://github.com/wbthomason/packer.nvim)

```lua
use {
    "Oniup/ignite.nvim",
    config = function()
        require("ignite").setup()
        vim.cmd([[
            syntax enable
            colorscheme ignite
        ]])
    end,
}
```

using [Lazy](https://github.com/folke/lazy.nvim)

```lua
return {
    "Oniup/ignite.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("ignite").setup()
        vim.cmd([[
            syntax enable
            colorscheme ignite
        ]])
    end
}
```

# Configuration

This is an example configuration and should be used as a guide, don't copy and paste this.

```lua
require("ignite").setup({
    -- Change individual color groups. If you like the darker panel backgrounds/NvChad like theme,
    -- then set this field to `groups = require("ignite").group_darker_panel_bg_overrides()`.
    -- See @IgniteHighlightDef for group entry options
    groups = {
        Type = { fg = "<hex color>", bg = "<hex color>" },
    },
    -- Override base16 colors for terminal
    terminal = {
        [3] = "<hex color>", -- Terminal orange col
        [7] = "<hex color>", -- Terminal string col
    },
    -- Enable/disable style options. See @class IgniteStyle
    style = {
        underline = true,
        undercurl = true,
        strikethrough = true,
        bold = true,
        italic = true,
    },
    -- Override theme pallet. See @class IgnitePallet
    pallet = {
        background0 = "#0d0e0e",
        text = "#a69a8d",
        variable = "#879291",
        keyword = "#e74e3d",
        parameter = "#c19c6c",
    },
    -- See following link for table format
    -- https://github.com/Oniup/ignite.nvim/blob/master/lua/ignite/lualine_theme.lua
    lualine_theme = {},
})
```

# Acknowledgements

* [Lush](https://github.com/rktjmp/lush.nvim)
    * Used to design the first versions of the colorscheme
* [Gruvbox](https://github.com/ellisonleao/gruvbox.nvim)
    * Ignite is inspiration by Gruvbox and their src helped me understand how to
      port from lush
* [Kanagawa](https://github.com/rebelot/kanagawa.nvim)
    * Used their extra configurations as templates
