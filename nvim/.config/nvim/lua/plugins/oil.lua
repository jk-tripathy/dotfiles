local M = {
    "stevearc/oil.nvim",
    lazy = false,
    cmd = "Oil",
    dependencies = { "nvim-tree/nvim-web-devicons", "folke/snacks.nvim" },
    keys = {
        {
            mode = "n",
            "<leader>e",
            function()
                vim.cmd.Oil()
            end,
        },
        {
            mode = "n",
            "-",
            function()
                vim.cmd.Oil.parent()
            end,
        },
        {
            mode = "n",
            "<M-->",
            function()
                vim.cmd.split()
                vim.cmd.Oil()
            end,
        },
        {
            mode = "n",
            "<M-=>",
            function()
                vim.cmd.vsplit()
                vim.cmd.Oil()
            end,
        },
    },
    opts = {
        view_options = {
            show_hidden = true,
        },
        use_default_keymaps = false,
    },
}

return M
