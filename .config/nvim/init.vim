let mapleader=" "

" Plugins
"
call plug#begin('~/.config/nvim/plugged')

" General
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'Yggdroot/indentLine'

" Snips
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Dart
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/dartlang-snippets'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter' 

" Nerd Tree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

" Themes
Plug 'tomasiser/vim-code-dark'
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'

" Syntax
Plug 'luochen1990/rainbow'
Plug 'plasticboy/vim-markdown'

call plug#end()

"
" Colour
"
let g:airline_theme = 'ayu'
set termguicolors     " enable true colors support
let ayucolor="mirage" " for mirage version of theme
colorscheme ayu
let g:rainbow_active = 1
let g:indentLine_setColors = 0
