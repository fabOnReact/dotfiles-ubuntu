" mapping for opening fzf
nnoremap <silent> <C-p> :GFiles<CR>
" hide preview
" let g:fzf_preview_window = ''
let g:fzf_preview_window = 'right:60%' 
" command to generate tag files
" let g:fzf_tags_command = 'ctags -R --excmd=number'

" navigate buffer
nmap <Leader>b :Buffers<CR>
nnoremap <silent><S-j> :bprevious<CR>
" verbose nmap <S-k> (was mapped to coc)
verbose nnoremap <silent><S-k> :bnext<CR>

" Ctags 
" tag search for current word 
map <leader>c :Tags <C-r><C-w><cr>
nnoremap <leader>d :BTags<cr>
" Windows
" nnoremap <leader>w :Windows<cr>
" Find
nnoremap <silent><C-f> :Rg<cr>
 
" let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

let g:fzf_colors =
    \ { 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Comment'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'] }

let g:fzf_layout = { 'window': { 'width': 1, 'height': 1 }}
let $FZF_DEFAULT_OPTS='--reverse'

" https://github.com/junegunn/fzf.vim#mappings
" Mapping selecting mappings
" nmap <leader><tab> <plug>(fzf-maps-n)
" xmap <leader><tab> <plug>(fzf-maps-x)
" omap <leader><tab> <plug>(fzf-maps-o)

" https://github.com/junegunn/fzf.vim#mappings
" https://github.com/junegunn/fzf.vim#custom-completion
" Insert mode completion
imap <c-x><c-i> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

" fzf#vim#gitfiles(git_options, [spec dict], [fullscreen bool])
command! -bang -nargs=* -complete=dir GFiles
      \ call fzf#vim#gitfiles(<q-args>, {'options': ['--delimiter', '/', '--preview', 'echo {};echo;~/.vim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)

" fzf#vim#buffers([spec dict], [fullscreen bool])
command! -bang -nargs=* -complete=dir Buffers
      \ call fzf#vim#buffers(<q-args>, {'options': ['--delimiter', '/', '--with-nth', '-1..', '--preview', 'echo {};echo;~/.vim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)

" Rg with colors and preview 
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
