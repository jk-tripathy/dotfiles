local M = {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
        {
            mode = "n",
            "t",
            function()
                require("trouble").toggle()
            end,
        },
    },
    opts = {
        use_diagnostic_signs = true,
    },
}

return M
