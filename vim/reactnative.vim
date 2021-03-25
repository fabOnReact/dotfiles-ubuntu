" https://stackoverflow.com/a/17391954/11452286
" run build command
" build shortcut for gradle
" nnoremap <c-f>b :wa<CR>:VtrSendCommandToRunner buildAndNotifyExpo<CR>
nnoremap <c-f>b :wa<CR>:VtrSendCommandToRunner buildAndNotify<CR>

" save and reload
" nnoremap <c-f>b :wa<CR>:VtrSendCommandToRunner r<CR>

" run js tests
" nnoremap <c-f>b :wa<CR>:VtrSendCommandToRunner yarn test -i Switch-test<CR>

" run java test
" nnoremap <c-f>b :w<CR>:VtrSendCommandToRunner btf<CR>

" send ctrl+c to attached pane
nnoremap <c-f>c :VtrSendCtrlC<CR>
