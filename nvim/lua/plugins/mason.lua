local M = {
    "williamboman/mason.nvim",
    lazy = true,
    event = "BufReadPost",
    dependencies = {
        {
            "WhoIsSethDaniel/mason-tool-installer.nvim",
            opts = {
                "pylsp",
                "lua_ls",
                "black",
                "isort",
                "stylua",
                "codespell",
                "mdformat",
                "debugpy",
                "docformatter",
            },
        },
    },
    opts = {},
    config = function(_, opts)
        require("mason-tool-installer").setup(opts)
        require("mason").setup(opts)
    end,
}

return M
