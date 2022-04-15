" https://stackoverflow.com/a/17391954/11452286
" run reactnative build command
nnoremap <c-x>b :VtrSendCtrlC<CR>:wa<cr>:VtrSendCommandToRunner build<cr>

" run android build command
" nnoremap <c-x>b :wa<cr>:VtrSendCtrlC<CR>:VtrSendCommandToRunner rnand<cr>

" nnoremap <c-x>b :wa<cr>:VtrSendCommandToRunner yarn flow<cr>

" save and reload
" nnoremap <c-f>b :wa<CR>:VtrSendCommandToRunner r<CR>

" run js tests
" nnoremap <c-f>b :wa<CR>:VtrSendCtrlC<CR>:VtrSendCommandToRunner yarn test -i URL-test<CR>

" run java test
" nnoremap <c-f>b :wa<CR>:VtrSendCommandToRunner btf<CR>

" enable talkback
nnoremap <c-t>t :!adb shell settings put secure enabled_accessibility_services com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService<CR>
nnoremap <c-t>o :!adb shell settings put secure enabled_accessibility_services com.android.talkback/com.google.android.marvin.talkback.TalkBackService<CR>
