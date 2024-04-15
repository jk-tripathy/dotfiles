vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("n", "E", "$")
vim.keymap.set("n", "B", "0w")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<M-k>", "<C-w>k")
vim.keymap.set("n", "<M-h>", "<C-w>h")
vim.keymap.set("n", "<M-j>", "<C-w>j")
vim.keymap.set("n", "<M-l>", "<C-w>l")
vim.keymap.set("n", "<M-t>", "<C-w>T")

vim.keymap.set("n", "<M-->", ":Hex!<CR>")
vim.keymap.set("n", "<M-=>", ":Vex!<CR>")

vim.keymap.set("n", "zo", "zO")
vim.keymap.set("n", "zO", "zo")
vim.keymap.set("n", "zr", "zR")
vim.keymap.set("n", "zm", "zM")
