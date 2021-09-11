let mapleader=" "

"
" Basic Settings
"
filetype plugin indent on
syntax on
set nocompatible
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
set cmdheight=1

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
autocmd FileType latex,tex,md,markdown setlocal spell spelllang=en_gb,de_de

"
" Colour
"
let g:airline_theme = 'gruvbox'
colorscheme gruvbox
let g:rainbow_active = 1 

" Changing VimWiki syntax
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]



"
" Key Maps
"

" COC
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

command! -nargs=0 Prettier :CocCommand prettier.formatFile

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <leader>gd <Plug>(coc-definitions)
nmap <leader>gd <Plug>(coc-references)
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()

" Others
nnoremap <leader>g :Goyo<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

"
" Plugin Configs
"

" plasticboy/goyo
let g:vim_markdown_folding_disabled = 1

" iamcco/markdown-preview
let g:mkdp_browser = 'min'
map <leader>md :MarkdownPreview<CR>
