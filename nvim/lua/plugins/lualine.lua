local M = {
    "nvim-lualine/lualine.nvim",
    dependencies = { "kyazdani42/nvim-web-devicons", lazy = true },
    lazy = true,
    event = "VeryLazy",
    opts = {
        options = {
            icons_enabled = "false",
        },
        sections = {
            lualine_b = {
                "branch",
                "diff",
                {
                    "diagnostics",
                    symbols = { error = "E:", warn = "W:", info = "I:", hint = "H:" },
                },
            },
            lualine_c = {
                {
                    "filename",
                    path = 1,
                },
            },
            lualine_x = { "encoding", "filetype" },
        },
    },
    config = function(_, opts)
        require("lualine").setup(opts)
    end,
}

return M
