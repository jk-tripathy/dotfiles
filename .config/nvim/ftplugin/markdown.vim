setlocal spell spelllang=en_gb,de_de
setlocal wrap linebreak

" Insert date
nnoremap <leader>dt :pu!=strftime('%a %d %b %Y')<CR> <bar> :norm I# <CR>

" Compiling 
nnoremap <leader>c :w <bar> :!pandoc "%" -M geometry:"margin=0.5in" -o "%:r".pdf<CR>
nnoremap <leader>p :!zathura "%:r".pdf &<CR><CR>

" Bold
inoremap <c-b> ****<left><left>
xnoremap <C-b> "xc**<C-r>x**<Esc>

" Italic
inoremap <c-b> **<left>
xnoremap <C-b> "xc*<C-r>x*<Esc>

" Image Insert
nnoremap <leader>ss :!maim -s %:p:h/Figures/%:p:t:r_<cword>.png<CR> <bar> 0dwi![<esc>pA]($)<esc>0f$ci(Figures/lecture

