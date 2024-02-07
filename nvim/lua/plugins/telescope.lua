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
            { mode = "n", "<leader>ps", builtin.live_grep, {} },
        }
    end,
}

return M
