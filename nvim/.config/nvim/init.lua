require("core")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

local plugins = {
    spec = {
        import = "plugins",
    },
    defaults = { lazy = true },
    performance = {
        rtp = {
            disabled_plugins = {
                "gzip",
                "matchit",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin",
                "man",
                "shada",
                "spellfile",
            },
        },
    },
}

local opts = {}

require("lazy").setup(plugins, opts)
