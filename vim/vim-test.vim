" Generic vim-test mappings
nmap <silent> <C-t>n :TestNearest --forceExit<CR>
nmap <silent> <C-t>t :TestSuite --forceExit<CR>
nmap <silent> <C-t>l :TestLast --forceExit<CR>
nmap <silent> <C-t>v :TestVisit --forceExit<CR>
" let g:test#javascript#runner = 'jest'
" if has('nvim')
"   tmap <C-o> <C-\><C-n>
" endif
let test#strategy = 'neovim'
