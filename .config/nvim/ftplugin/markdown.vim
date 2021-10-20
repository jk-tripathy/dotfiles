setlocal spell spelllang=en_gb,de_de
setlocal wrap linebreak

" Compiling 
nnoremap <leader>c :w <bar> :!pandoc "%" -M geometry:"margin=0.5in" -o "%:r".pdf<CR>
nnoremap <leader>p :!zathura "%:r".pdf &<CR><CR>

" Bold
inoremap <c-b> ****<left><left>
xnoremap <C-b> "xc**<C-r>x**<Esc>

" Italic
inoremap <c-b> **<left>
xnoremap <C-b> "xc*<C-r>x*<Esc>
