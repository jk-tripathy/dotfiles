setlocal spell spelllang=en_gb,de_de
setlocal wrap linebreak
set colorcolumn=""
let g:indentLine_setConceal = 0
au filetype vimwiki silent! iunmap <buffer> <Tab>

" Insert date
nnoremap <leader>dt :pu!=strftime('%a %d %b %Y')<CR> <bar> :norm I# <CR>

" Compiling 
nnoremap <leader>c :w <bar> :!~/.config/pandocFormatting/md2pdf.sh "%" "%:r".pdf<CR>
nnoremap <leader>n :w <bar> :!~/.config/pandocFormatting/md2pdfnotes.sh "%" "%:r".pdf<CR>
nnoremap <leader>p :!zathura "%:r".pdf &<CR><CR>

" Bold
inoremap <c-b> ****<left><left>
xnoremap <C-b> "xc**<C-r>x**<Esc>

" Italic
inoremap <c-b> **<left>
xnoremap <C-b> "xc*<C-r>x*<Esc>

" Image Insert
nnoremap <leader>ss :!~/.config/takess.sh<CR> <bar> 0dwi![<esc>pA]($)<esc>0f$ci(Figures/

