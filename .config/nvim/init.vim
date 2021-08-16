let mapleader=" "

" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'tomasiser/vim-code-dark'
Plug 'dylanaraps/wal.vim'

call plug#end()

let g:airline_theme = 'wal'
colorscheme wal

" Basic Settings
set encoding=UTF-8
syntax on
set expandtab
set wildmenu
set number
set relativenumber
set autoread
set shiftwidth=4
set tabstop=4
set softtabstop=4
set cursorline
set hls is


