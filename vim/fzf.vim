" I can not see line in ctrl+f ripgrep search
"  https://github.com/junegunn/fzf.vim/issues/1179#issuecomment-817239959
let $FZF_PREVIEW_COMMAND="COLORTERM=truecolor bat --style=numbers --color=always {}"

nnoremap <silent><S-j> :bprevious<CR>
" verbose nmap <S-k> (was mapped to coc)
verbose nnoremap <silent><S-k> :bnext<CR>

" Shortcuts
nnoremap <silent> <C-p> :GFiles<CR>
let g:fzf_preview_window = 'right:60%' 
nnoremap <silent> <Leader>b :Lines<CR>
" tag search for current word 
" map <leader>c :Tags <C-r><C-w><cr>
nnoremap <silent> <leader>b :Tags<cr>
nnoremap <silent> <leader>r :BTags<cr>
" Find
nnoremap <silent><C-f> :Rg<cr>

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
" imap <c-x><c-f> <plug>(fzf-complete-path)
" imap <c-x><c-l> <plug>(fzf-complete-line)
" Global line completion (not just open buffers. ripgrep required.)
inoremap <expr> <c-x><c-l> fzf#vim#complete(fzf#wrap({
  \ 'prefix': '^.*$',
  \ 'source': 'rg -n ^ --color always',
  \ 'options': '--ansi --delimiter : --nth 3..',
  \ 'reducer': { lines -> join(split(lines[0], ':\zs')[2:], '') }}))

command! -bang -nargs=* -complete=dir GFiles
      \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview('up:90%', 'ctrl-/'), 1)

command! -bang -nargs=* -complete=dir Buffers
      \ call fzf#vim#buffers(<q-args>, {'options': ['--delimiter', '/', '--with-nth', '-1..', '--preview', 'echo {};echo;~/.vim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   "rg --column --line-number --no-heading --color=always --smart-case -- ".shellescape(<q-args>), 1,
  \   fzf#vim#with_preview('up:80%', 'ctrl-/'), 1)

" use ripgrep instead of vimgrep
" https://www.wezm.net/technical/2016/09/ripgrep-with-vim/
if executable("rg")
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

" https://www.chrisatmachine.com/Neovim/08-fzf/
" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" https://github.com/junegunn/fzf.vim/issues/374#issuecomment-475856472
command! -bang -nargs=* CustomBLines
    \ call fzf#vim#grep(
    \   'rg --with-filename --column --line-number --no-heading --smart-case . '.fnameescape(expand('%:p')), 1,
    \   fzf#vim#with_preview({'options': '--layout reverse --query '.shellescape(<q-args>).' --with-nth=4.. --delimiter=":"'}, 'right:70%'))
    " \   fzf#vim#with_preview({'options': '--layout reverse  --with-nth=-1.. --delimiter="/"'}, 'right:50%'))

nnoremap <leader>s :CustomBLines<Cr>

" https://github.com/junegunn/fzf.vim/issues/800#issuecomment-552224315
" to set up Tags search

" command to generate tag files
" let g:fzf_tags_command = 'ctags -R --excmd=number'

" nmap <C-m> :Marks<CR>
" Windows
" nnoremap <leader>w :Windows<cr>
 
" let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" /public\s[a-z]*\son[A-Z]<CR>
" rg -e "public\s.*\sgetChildCount\("
