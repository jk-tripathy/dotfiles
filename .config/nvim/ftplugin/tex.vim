setlocal spell spelllang=en_gb,de_de
setlocal wrap linebreak
set colorcolumn=""
let g:indentLine_setConceal = 0

nnoremap <leader>cl :w <bar> :!xelatex "%" "%:r".pdf<CR>
nnoremap <leader>c :w <bar> :!xelatex "%" "%:r".pdf<CR><CR> <bar> :!biber "%:r"<CR> <bar> :!xelatex "%" "%:r".pdf<CR>
nnoremap <leader>p :!zathura "%:r".pdf &<CR><CR>
