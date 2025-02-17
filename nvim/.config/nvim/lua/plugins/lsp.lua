local M = {
    "neovim/nvim-lspconfig",
    event = "BufReadPost",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "saghen/blink.cmp",
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
            config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
            lspconfig[server].setup(config)
        end

        -- vim.api.nvim_create_autocmd("LspAttach", {
        --     callback = function(args)
        --         local c = vim.lsp.get_client_by_id(args.data.client_id)
        --         if not c then
        --             return
        --         end
        --     end,
        -- })
    end,
}

return M
