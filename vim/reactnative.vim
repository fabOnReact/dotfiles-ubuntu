" https://stackoverflow.com/a/17391954/11452286
" run build command
" build shortcut for gradle
" nnoremap <c-f>b :wa<CR>:VtrSendCommandToRunner buildAndNotifyExpo<CR>
nnoremap <c-f>b :wa<CR>:VtrSendCommandToRunner buildAndNotify<CR>

" save and reload
" nnoremap <c-f>b :wa<CR>:VtrSendCommandToRunner r<CR>

" run js tests
" nnoremap <c-f>b :wa<CR>:VtrSendCtrlC<CR>:VtrSendCommandToRunner yarn test -i URL-test<CR>
" nnoremap <c-f>b :wa<CR>:VtrSendCtrlC<CR>:VtrSendCommandToRunner yarn test -i mdn<CR>

" run java test
" nnoremap <c-f>b :wa<CR>:VtrSendCommandToRunner btf<CR>

" send ctrl+c to attached pane
nnoremap <c-f>c :VtrSendCtrlC<CR>

" enable talkback
nnoremap <c-t>t :!adb shell settings put secure enabled_accessibility_services com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService<CR>
nnoremap <c-t>o :!adb shell settings put secure enabled_accessibility_services com.android.talkback/com.google.android.marvin.talkback.TalkBackService<CR>

" nnoremap <c-f>b :wa<CR>:VtrSendCommandToRunner yarn script dist/scripts/create-db.js<CR>
