" install modules
let g:coc_global_extensions = ['coc-xml', 'coc-tsserver', 'coc-pairs', 'coc-explorer', 'coc-flow', 'coc-dictionary', 'coc-emoji', 'coc-word', 'coc-prettier', 'coc-clangd', 'coc-solargraph', 'coc-snippets', 'coc-flow', 'coc-markdown-preview-enhanced', 'coc-webview']

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" fixes bug relative number not showing when diagnostic
" is showing
set signcolumn=yes

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

source ~/.dotfiles/vim/coc-codeactions.vim
