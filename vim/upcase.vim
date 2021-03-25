" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =
" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>f :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>v :wincmd =<cr>

" https://github.com/christoomey/vim-tmux-navigator#disable-while-zoomed
" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1

" https://vim.fandom.com/wiki/Resize_splits_more_quickly
nmap <silent> <Leader>q :resize +5<CR>
nmap <silent> <Leader>w :resize -5<CR>
