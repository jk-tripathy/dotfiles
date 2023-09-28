local lsp = require("lsp-zero")

lsp.preset("recommended")

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'pylsp',},
})

lsp.configure('pylsp', {
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = {
                    ignore = {'E501','F401','F841','W503','E203','W504'},
                }
            }
        }
    }
})

lsp.format_on_save({
  format_opts = {
    async = false,
    timeout_ms = 1000,
  },
  servers = {
    ['dartls'] = {'dart'},
    ['lua-language-server'] = {'lua'},
  }
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    pattern = { "*.py" },
    desc = "Auto-format Python files after saving",
    callback = function()
        local fileName = vim.api.nvim_buf_get_name(0)
        vim.cmd(":silent !black --line-length 99 " .. fileName)
        vim.cmd(":silent !isort --profile black --filter-files " .. fileName)
        vim.cmd(":silent !docformatter --in-place --wrap-summaries=99 --wrap-descriptions=99 " .. fileName)
    end,
    group = autocmd_group,
})

local cmp = require('cmp')
local cmp_format = lsp.cmp_format()

cmp.setup({
  formatting = cmp_format,
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    ['<Tab>'] = nil,
    ['<S-Tab>'] = nil,
  }),
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, opts)
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})

