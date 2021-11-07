let mapleader=" "

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

"Markdown 
Plug 'vimwiki/vimwiki'
Plug 'iamcco/markdown-preview.nvim'

" Flutter
Plug 'natebosch/dartlang-snippet'

" IPython/Jupyter

" Nerd Tree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

" Themes
Plug 'tomasiser/vim-code-dark'
Plug 'morhetz/gruvbox'

" Syntax
Plug 'luochen1990/rainbow'
Plug 'plasticboy/vim-markdown'

call plug#end()

"
" Colour
"
let g:airline_theme = 'gruvbox'
colorscheme gruvbox
let g:rainbow_active = 1 

