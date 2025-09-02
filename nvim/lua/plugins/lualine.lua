local M = {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = {
        options = {
            icons_enabled = "false",
        },
        sections = {
            lualine_b = {
                "branch",
            },
            lualine_c = {
                {
                    "filename",
                    path = 0,
                },
            },
            lualine_x = {
                {
                    "diagnostics",
                    symbols = { error = "E:", warn = "W:", info = "I:", hint = "H:" },
                },
            },
            lualine_y = {
                "diff",
            },
            lualine_z = {},
        },
    },
    config = function(_, opts)
        require("lualine").setup(opts)
    end,
}

return M
