local M = {
    "theprimeagen/harpoon",
    lazy = true,
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    keys = function()
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        return {
            { mode = "n", "<C-a>", mark.add_file },
            { mode = "n", "<C-q>", ui.toggle_quick_menu },
            {
                mode = "n",
                "<C-h>",
                function()
                    ui.nav_file(1)
                end,
            },
            {
                mode = "n",
                "<C-j>",
                function()
                    ui.nav_file(2)
                end,
            },
            {
                mode = "n",
                "<C-k>",
                function()
                    ui.nav_file(3)
                end,
            },
            {
                mode = "n",
                "<C-l>",
                function()
                    ui.nav_file(4)
                end,
            },
        }
    end,
}

return M
