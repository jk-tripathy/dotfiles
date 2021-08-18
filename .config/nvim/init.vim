let mapleader=" "

"
" Basic Settings
"
filetype plugin indent on
syntax on
set hidden
set path=.,**
set encoding=UTF-8
set expandtab
set wildmenu
set number
set relativenumber
set autoread
set shiftwidth=4
set tabstop=4
set softtabstop=4
set cursorline
set nohls
set hidden
set noerrorbells
set smartindent
set nowrap
set incsearch
set scrolloff=10
set signcolumn=yes
set updatetime=100

"
" Plugins
"
call plug#begin('~/.config/nvim/plugged')

" General
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter' 
Plug 'junegunn/goyo.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Themes
Plug 'tomasiser/vim-code-dark'
Plug 'morhetz/gruvbox'

" Syntax
Plug 'plasticboy/vim-markdown'

call plug#end()

"
" Spell Checks for certain files
"
autocmd FileType latex,tex,md,markdown setlocal spell spelllang=en_gb

"
" Colour
"
let g:airline_theme = 'gruvbox'
colorscheme gruvbox

"
" Key Maps
"
nmap <leader>gd <Plug>(coc-definitions)
nmap <leader>gd <Plug>(coc-references)
nnoremap <leader>g :Goyo<CR>
nnoremap <C-p> :Files<CR>

"
" Plugin Configs
"

" plasticboy/goyo
let g:vim_markdown_folding_disabled = 1

" iamcco/markdown-preview
let g:mkdp_browser = 'min'
