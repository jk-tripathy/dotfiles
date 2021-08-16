let mapleader=" "

" Plugins
call plug#begin('~/.config/nvim/plugged')

" General
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Themes
Plug 'tomasiser/vim-code-dark'
Plug 'morhetz/gruvbox'

call plug#end()

let g:airline_theme = 'gruvbox'
colorscheme gruvbox

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

" Key Maps
nmap <leader>gd <Plug>(coc-definitions)
nmap <leader>gd <Plug>(coc-references)
nnoremap <C-p> :GFiles<CR>
