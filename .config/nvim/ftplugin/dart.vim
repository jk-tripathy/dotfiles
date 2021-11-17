let g:dart_format_on_save = 1
let g:dartfmt_options = ['--fix', '--line-length 120']

nnoremap <leader>c :CocInstall coc-flutter<CR>
nnoremap <leader>fd :CocList FlutterDevices<CR>
nnoremap <leader>fe :CocList FlutterEmulators<CR>
nnoremap <leader>d :below new output:///flutter-dev <CR>
nnoremap <leader>r :CocCommand flutter.dev.hotReload<CR>
nnoremap <leader>R :CocCommand flutter.dev.hotRestart<CR>

