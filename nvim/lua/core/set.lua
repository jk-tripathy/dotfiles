vim.opt.nu = true
vim.opt.relativenumber = false
vim.opt.cursorline = true
vim.g.have_nerd_font = true
vim.opt.showmode = false
vim.opt.cmdheight = 1

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = false

vim.opt.scrolloff = 20
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 100

vim.opt.colorcolumn = "99"

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.g.clipboard = 'osc52'
vim.opt.clipboard = "unnamedplus"
