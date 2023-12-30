local M = {
    "VonHeikemen/lsp-zero.nvim",
    lazy = true,
    event = "BufReadPost",
    dependencies = {
        "neovim/nvim-lspconfig",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-nvim-lsp",
    },
    opts = {
        preferences = {
            suggest_lsp_servers = true,
            sign_icons = {
                error = "E",
                warn = "W",
                hint = "H",
                info = "I",
            },
        },
        servers = {
            lua_ls = {},
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
        },
    },
    keys = {
        { mode = "n", "<leader>gd", vim.lsp.buf.definition },
        { mode = "n", "<leader>rn", vim.lsp.buf.rename },
        { mode = "n", "<leader>gr", vim.lsp.buf.references },
        { mode = "n", "K", vim.lsp.buf.hover },
        { mode = "n", "<leader>sd", vim.diagnostic.open_float },
        { mode = "n", "]d", vim.diagnostic.goto_next },
        { mode = "n", "[d", vim.diagnostic.goto_prev },
        { mode = "n", "<leader>ca", vim.lsp.buf.code_action },
    },
    config = function(_, opts)
        local lsp = require("lsp-zero")
        local cmp = require("cmp")
        local cmp_format = lsp.cmp_format()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        for server, server_opts in pairs(opts.servers) do
            lsp.configure(server, server_opts)
        end
        lsp.set_preferences(opts.preferences)

        cmp.setup({
            sources = {
                { name = "nvim_lsp" },
                { name = "path" },
                { name = "buffer" },
            },
            formatting = cmp_format,
            mapping = cmp.mapping.preset.insert({
                ["<CR>"] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-u>"] = cmp.mapping.scroll_docs(-4),
                ["<C-d>"] = cmp.mapping.scroll_docs(4),
            }),
        })
        lsp.setup({ capabilities = capabilities })

        vim.diagnostic.config({
            virtual_text = true,
        })
    end,
}
return M
