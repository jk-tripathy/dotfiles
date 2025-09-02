vim.g.mapleader = " "

-- easier inline jumps
vim.keymap.set("n", "E", "$")
vim.keymap.set("n", "B", "0")

-- move block of text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- better C-u/d
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- window movement
vim.keymap.set("n", "<M-k>", "<C-w>k")
vim.keymap.set("n", "<M-h>", "<C-w>h")
vim.keymap.set("n", "<M-j>", "<C-w>j")
vim.keymap.set("n", "<M-l>", "<C-w>l")
vim.keymap.set("n", "<M-t>", ":tabnew<CR>")

-- window resizing
vim.keymap.set("n", "<M-,>", ":vertical resize -5<CR>")
vim.keymap.set("n", "<M-.>", ":vertical resize +5<CR>")
vim.keymap.set("n", "<M-<>", ":resize -5<CR>")
vim.keymap.set("n", "<M->>", ":resize +5<CR>")

-- better folding
vim.keymap.set("n", "za", "zA")
vim.keymap.set("n", "zA", "za")

-- pre-commit easy run
vim.keymap.set("n", "<leader>pc", ":!pre-commit run -a<CR>")
