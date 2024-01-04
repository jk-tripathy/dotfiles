syntax on
set nu
set nocompatible
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set undodir=os.getenv("HOME") .. "/.vim/undodir"
set noswapfile
set incsearch
set scrolloff=10
set signcolumn="yes"
set updatetime=50
set colorcolumn="99"
set clipboard="unnamedplus"

let mapleader=" "
nnoremap <leader>p :Ex<CR>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

nnoremap <leader>h mH
nnoremap <leader>j mJ
nnoremap <leader>k mK
nnoremap <leader>l mL

noremap <C-h> `H 
noremap <C-j> `J
noremap <C-k> `K
noremap <C-l> `L

