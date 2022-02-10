" Scrolling 10 at time
nnoremap <silent><S-e> 5<c-e>
nnoremap <silent><S-y> 5<c-y>

" Swap global marks
" https://stackoverflow.com/a/9009504/7295772
" https://unix.stackexchange.com/questions/154845/reverse-global-and-local-marks-in-vi-vim
nnoremap ma mA
nnoremap 'a 'A
nnoremap ms mS
nnoremap 's 'S
nnoremap md mD
nnoremap 'd 'D
nnoremap mf mF
nnoremap 'f 'F

" https://vim.fandom.com/wiki/Making_Parenthesis_And_Brackets_Handling_Easier
inoremap <C-j> <Esc>/[)}"'\]>]<CR>:nohl<CR>a

" mapping for cn (next result in shortlist)
nmap <silent><leader>1 :cn<cr>

" send ctrl+c to attached pane
nnoremap <c-x>c :VtrSendCtrlC<CR>
