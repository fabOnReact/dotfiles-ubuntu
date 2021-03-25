" set foldmethod=syntax
" set foldlevelstart=1

" let javaScript_fold=1
" let ruby_fold=1               " Ruby
" let xml_syntax_folding=1      " XML
" augroup javascript_folding
"     au!
"     au FileType javascript setlocal foldmethod=syntax
" augroup END

" Save folds when closing file
" augroup remember_folds
"   autocmd!
"   autocmd BufWinLeave * mkview
"   autocmd BufWinEnter * silent! loadview
" augroup END
