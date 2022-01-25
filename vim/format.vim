" syntax highlighting fix on big files
" https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim
set re=0
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
" previous solution
" syntax highlighting not working on big files
" https://github.com/vim/vim/issues/2790
" set redrawtime=10000

" set objc syntax highlighting
au BufReadPost *.m set syntax=objc
au BufReadPost *.mm set syntax=objc

" allways use ts syntax for Treesitter compatibility with flow
" https://github.com/tree-sitter/tree-sitter-typescript
au BufReadPost *.js set syntax=typescript

" google java syntax formatting for reactnative
Glaive codefmt google_java_executable="java -jar /home/fabrizio/.dotfiles/bin/google-java-format-1.7-all-deps.jar"
augroup autoformat_settings
  " autocmd FileType bzl AutoFormatBuffer buildifier
  " autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
  " autocmd FileType dart AutoFormatBuffer dartfmt
  " autocmd FileType go AutoFormatBuffer gofmt
  " autocmd FileType gn AutoFormatBuffer gn
  " autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  " autocmd FileType java AutoFormatBuffer google-java-format
  " autocmd FileType python AutoFormatBuffer yapf
  " " Alternative: autocmd FileType python AutoFormatBuffer autopep8
  " autocmd FileType rust AutoFormatBuffer rustfmt
  " autocmd FileType vue AutoFormatBuffer prettier
  " does not work
  " autocmd FileType ruby AutoFormatBuffer yarn prettier --write '**/*'
augroup END
