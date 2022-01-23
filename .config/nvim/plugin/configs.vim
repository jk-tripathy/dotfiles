"
" Plugin Configs
"

" plasticboy/goyo
let g:vim_markdown_folding_disabled = 1

" Changing VimWiki syntax
let g:vimwiki_list = [{'path': '~/vimwiki/',
            \ 'syntax': 'markdown', 'ext': '.md'}]

" colored indentLine
let g:indentLine_setColors = 0

" Grammar
"let g:grammarous#use_vim_spelllang = 1
let g:grammarous#default_comments_only_filetypes = {
            \ 'latex' : 1, 'markdown' : 1,
            \ }
let g:grammarous#hooks = {}
function! g:grammarous#hooks.on_check(errs) abort
    nmap <buffer><C-n> <Plug>(grammarous-move-to-next-error)
    nmap <buffer><C-p> <Plug>(grammarous-move-to-previous-error)
    nmap <buffer><C-f> <Plug>(grammarous-fixit)
    nmap <buffer><C-r> <Plug>(grammarous-remove-error)
endfunction

function! g:grammarous#hooks.on_reset(errs) abort
    nunmap <buffer><C-n>
    nunmap <buffer><C-p>
    nunmap <buffer><C-f>
    nunmap <buffer><C-r>
endfunction
