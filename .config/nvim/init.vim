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
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'vimwiki/vimwiki'

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
" Spell Checks for certain files
"
autocmd FileType tex,latex,md,markdown setlocal spell spelllang=en_gb,de_de
autocmd FileType tex,latex,md,markdown setlocal wrap linebreak

"
" Colour
"
let g:airline_theme = 'gruvbox'
colorscheme gruvbox
let g:rainbow_active = 1 

