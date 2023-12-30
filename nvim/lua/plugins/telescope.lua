local M = {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "BurntSushi/ripgrep",
        "nvim-lua/plenary.nvim",
    },
    lazy = true,
    keys = function()
        local builtin = require("telescope.builtin")
        return {
            { mode = "n", "<leader>pf", builtin.find_files, {} },
            { mode = "n", "<leader>f", builtin.git_files, {} },
            {
                mode = "n",
                "<leader>ps",
                function()
                    builtin.grep_string({ search = vim.fn.input("Grep > ") })
                end,
            },
        }
    end,
}

return M
