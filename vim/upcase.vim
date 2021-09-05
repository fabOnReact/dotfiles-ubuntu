" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =
" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>f :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>v :wincmd =<cr>

" https://github.com/christoomey/vim-tmux-navigator#disable-while-zoomed
" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1
" vtr
map <C-x>g :VtrSendLinesToRunner<CR>
map <C-x>r :VtrFocusRunner<CR>

" https://vim.fandom.com/wiki/Resize_splits_more_quickly
" https://codingfearlessly.com/vim-putting-arrows-to-use
" https://stackoverflow.com/questions/61166213/vim-shortcut-to-resize-split-windows
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

function! MoveSeparator(PlusMinus)
    let num=tabpagewinnr(tabpagenr())
    let pm=a:PlusMinus
    if  num == "2"
        let pm = pm == '+' ? '-' : '+'
    end
    exec "resize " . pm . "1"
endfunction

nnoremap <silent> <UP>   :call MoveSeparator("-")<CR>
nnoremap <silent> <DOWN> :call MoveSeparator("+")<CR>
