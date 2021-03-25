nnoremap <C-x>m :Dispatch! yarn build<Enter>
" nnoremap <C-x>t :VtrSendCommandToRunner yarn jest -i MapScreenTest --forceExit<CR>
nnoremap <C-x>t :VtrSendCommandToRunner yarn test-android -i MapScreenTest --forceExit<CR>
" CocTslint command to fix tslint problems in file
" tab + f
" https://github.com/neoclide/coc-tslint#auto-fixinnmap s <Plug>(HelloWorld)g
" <Plug>(coc-codeaction) don't know how to make it work
" https://www.reddit.com/r/vim/comments/78izt4/please_help_understand_how_to_use_plug_mapping/
noremap <C-x>f :CocCommand tslint.fixAllProblems<CR>
" nnoremap <C-x>d :VtrSendCommandToRunner REUSE=true detox test e2e/Map.e2e.ts --configuration android.emu.debug --reuse<CR>
nnoremap <C-x>o :Gdiff origin/dev<CR>
nnoremap <C-x>d :Gdiff 70e40b3<CR>
nnoremap <C-x>n :Dispatch! ./gradlew :RNTester:android:app:installJscDebug<Enter>
nnoremap <C-x>r :Dispatch! cd /home/fabrizio/Documents/sourcecode/reactnative/urbi-react-native/Urbi && adb shell input keyevent 46 46<Enter><Enter>
nnoremap <C-x>u :Dispatch! cd /home/fabrizio/Documents/sourcecode/reactnative/urbi-react-native/Urbi && yarn android --appIdSuffix "debug"<Enter>
" nnoremap <c-f>b :wa<CR>:VtrSendCommandToRunner ytf MapScreenTest<CR>
