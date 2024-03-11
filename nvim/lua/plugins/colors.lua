local M = {
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

return M
