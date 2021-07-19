nnoremap <C-x>s :!run_app<Enter>
nnoremap <C-x>b :Dispatch! yarn react-native run-android<Enter>
nnoremap <C-x>w :Dispatch! ./gradlew :app:installDebug --daemon<Enter>
" Reload React Native App
nnoremap <C-x>r :Dispatch! adb shell input keyevent 82 && sleep 1s && adb shell input keyevent 66 && notify-send "load sent"<Enter>
