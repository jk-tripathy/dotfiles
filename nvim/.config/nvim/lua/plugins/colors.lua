local rose_pine = {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    opts = {
        variant = "main",
        disable_background = true,
    },
    config = function(_, opts)
        require("rose-pine").setup(opts)
        vim.cmd.colorscheme("rose-pine")
    end,
}

local github = {
    "projekt0n/github-nvim-theme",
    name = "github",
    lazy = false,
    opts = {
        options = {
            transparent = true,
        },
    },
    config = function(_, opts)
        require("github-theme").setup(opts)
        vim.cmd.colorscheme("github_dark_default")
    end,
}
local catppuccin = {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    opts = {
        flavour = "mocha",
        transparent_background = true,
    },
    config = function(_, opts)
        require("catppuccin").setup(opts)
        vim.cmd.colorscheme("catppuccin")
    end,
}

local oxocarbon = {
    "nyoom-engineering/oxocarbon.nvim",
    name = "oxocarbon",
    lazy = false,
    config = function()
        vim.o.background = "dark"
        vim.cmd.colorscheme("oxocarbon")
    end,
}

return catppuccin
