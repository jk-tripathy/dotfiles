let mapleader=" "

" Plugins
"
call plug#begin('~/.config/nvim/plugged')

" General
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'

" Themes
Plug 'tomasiser/vim-code-dark'
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'dracula/vim', { 'name': 'dracula' }

call plug#end()

"
" Colour
"
let g:airline_theme = 'dracula'
set termguicolors     " enable true colors support
colorscheme dracula
let g:indentLine_setColors = 0
