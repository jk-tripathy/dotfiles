local M = {
    "neovim/nvim-lspconfig",
    event = "BufReadPost",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "saghen/blink.cmp",
        "mfussenegger/nvim-jdtls",
    },
    opts = {
        servers = {
            pylsp = {
                settings = {
                    pylsp = {
                        plugins = {
                            pycodestyle = {
                                ignore = { "E501", "F401", "F841", "W503", "E203", "W504", "E402" },
                            },
                        },
                    },
                },
            },
            lua_ls = {
                settings = {
                    Lua = {
                        completion = {
                            callSnippet = "Replace",
                        },
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            },
            ts_ls = {
                settings = {
                    typescript = {
                        format = {
                            indentSize = 2,
                        },
                    },
                },
            },
            smithy_ls = {},
            lemminx = {},
        }
    },
    keys = {
        {
            mode = "n",
            "<leader>ca",
            function()
                vim.lsp.buf.code_action()
            end,
            "Code Action",
        },
        {
            mode = "n",
            "<leader>rn",
            function()
                vim.lsp.buf.rename()
            end,
            "Rename Symbol",
        },
    },
    config = function(_, opts)
        local lspconfig = require("lspconfig")
        local blink = require("blink.cmp")
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")

        -- Mason setup
        mason.setup()
        mason_lspconfig.setup({ ensure_installed = opts.servers })

        for server, config in pairs(opts.servers) do
            config.capabilities = blink.get_lsp_capabilities(config.capabilities)
            lspconfig[server].setup(config)
        end
    end,
}

return M
