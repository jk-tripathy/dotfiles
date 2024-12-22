local M = {
    "stevearc/oil.nvim",
    lazy = false,
    cmd = "Oil",
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
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
}

return M
