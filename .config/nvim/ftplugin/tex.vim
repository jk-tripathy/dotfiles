setlocal spell spelllang=en_gb,de_de
setlocal wrap linebreak
set colorcolumn=""

nnoremap <leader>cl :w <bar> :!pdflatex --output-directory "%:p:h" "%"<CR>
nnoremap <leader>c :w <bar> :!pdflatex --output-directory "%:p:h" "%"<CR><CR> <bar> :!biber "%:r"<CR> <bar> :!pdflatex --output-directory "%:p:h" "%"<CR>
nnoremap <leader>p :!zathura "%:r".pdf &<CR><CR>
