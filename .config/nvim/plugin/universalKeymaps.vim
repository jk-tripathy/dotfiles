"
" Key Maps
"

" Sane Settings

" fixing movement keys
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k

" fixing cap Y
nnoremap Y y$

" keeping searches centered
nnoremap n nzzzv
nnoremap N Nzzzv

" moving text
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '>-2<CR>gv=gv
inoremap <C-j> :m .+1<CR>==
inoremap <C-k> :m .-2<CR>==
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" wincmds
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" COC
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

command! -nargs=0 Prettier :CocCommand prettier.formatFile

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <leader>gd <Plug>(coc-definitions)
nmap <leader>gr <Plug>(coc-references)
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()

" Others
nnoremap <leader>g :Goyo<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
