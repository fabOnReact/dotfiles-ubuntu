set clipboard=unnamed

" Copy and Paste from/to system clipboard
" https://github.com/fabriziobertoglio1987/.dotfiles/commit/0c3600b7676c6b0dda2b1d1c2762e5cd330feb5b
" copy with f7
vmap <y> "+ygv"zy`>
" paste (Shift-F7 to paste after normal cursor, Ctrl-F7 to paste over visual selection)
nmap <F7> "zgP
nmap <S-F7> "zgp
imap <F7> <C-r><C-o>z
vmap <C-F7> "zp`]
cmap <F7> <C-r><C-o>z
" copy register
set clipboard=unnamedplus
