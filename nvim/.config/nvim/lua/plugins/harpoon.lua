local M = {
    "theprimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    keys = function()
        local harpoon = require("harpoon")

        return {
            {
                mode = "n",
                "<C-a>",
                function()
                    harpoon:list():add()
                end,
            },
            {
                mode = "n",
                "<C-q>",
                function()
                    harpoon.ui:toggle_quick_menu(harpoon:list())
                end,
            },
            {
                mode = "n",
                "<C-h>",
                function()
                    harpoon:list():select(1)
                end,
            },
            {
                mode = "n",
                "<C-j>",
                function()
                    harpoon:list():select(2)
                end,
            },
            {
                mode = "n",
                "<C-k>",
                function()
                    harpoon:list():select(3)
                end,
            },
            {
                mode = "n",
                "<C-l>",
                function()
                    harpoon:list():select(4)
                end,
            },
        }
    end,
}

return M
