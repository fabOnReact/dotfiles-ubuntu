" https://dev.to/rajat_naegi/configure-you-complete-me-and-ultisnips-for-vim-and-their-integration-4plf
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
" Trigger configuration. Do not use <tab> if you use YouCompleteMe.
" https://github.com/SirVer/ultisnips/issues/376#issuecomment-55326568
let g:UltiSnipsExpandTrigger = "<nop>"
inoremap <expr> <CR> pumvisible() ? "<C-R>=UltiSnips#ExpandSnippetOrJump()<CR>" : "\<CR>"

let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" Disable diagnostic
" https://vi.stackexchange.com/questions/7894/how-to-disable-youcompletemes-error-checking
let g:ycm_show_diagnostics_ui = 0
