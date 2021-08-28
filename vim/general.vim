" vtr
map <C-t>g :VtrSendLinesToRunner<CR>
map <C-x>r :VtrFocusRunner<CR>

" Nerdtree
map <C-n> :NERDTreeToggle .<CR>
" let g:NERDTreeChDirMode = 3

let g:notes_directories = ['~/Documents/Notes']

" Git
noremap <leader>gc :GCheckout<CR>
noremap <leader>gs :Gtabedit :<CR>
" Markdown settings
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1

" vim-prettier run at autosave
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
set cmdheight=1

" gruvbox color set up
autocmd vimenter * colorscheme gruvbox 

set background=light
" set background=dark
let g:gruvbox_contrast_light='hard'
" let g:gruvbox_contrast_dark='hard'
au BufReadPost *.js set syntax=typescript

" fix color issue with neovim
set t_Co=256
set termguicolors

" Make clearly distinguable Tabs
hi TabLineFill ctermfg=LightGreen ctermbg=DarkGreen
hi TabLine ctermfg=Blue ctermbg=Yellow

" set objc syntax highlighting
au BufReadPost *.m set syntax=objc
au BufReadPost *.mm set syntax=objc

" cmdline omnicompletion
" https://vi.stackexchange.com/questions/11411/is-there-a-version-of-vim-or-plugin-with-a-command-mode-auto-completion
set wildmenu
set wildmode=longest,list,full

" do not show highlighting
set nohlsearch

" terminal zsh
set splitbelow

" format files on save
" coc.preferences.formatOnSaveFiletypes": ["typescript", "typescriptreact"],

" create coc-vimsnippets https://github.com/neoclide/coc-snippets
" CocCommand snippets.editSnippets

" Scrolling 10 at time
nnoremap <silent><S-e> 5<c-e>
nnoremap <silent><S-y> 5<c-y>

" Swap global marks
" https://stackoverflow.com/a/9009504/7295772
" https://unix.stackexchange.com/questions/154845/reverse-global-and-local-marks-in-vi-vim
nnoremap ma mA
nnoremap `a `A
nnoremap 'a 'A
nnoremap ms ms
nnoremap `s `s
nnoremap 's 's
nnoremap md md
nnoremap `d `d
nnoremap 'd 'd
nnoremap mf mf
nnoremap `f `f
nnoremap 'f 'f

" https://stackoverflow.com/a/52548754/11452286
" open tag in vertical split (previously was tmux.conf next-window)
" nnoremap <C-W><C-V>f :exec "vert norm <C-V><C-W>f"<CR>

" https://stackoverflow.com/questions/40362460/show-cursor-in-command-line-mode
set cursorline

" use q? instead of /
" nnoremap / q/i

" https://github.com/alvan/vim-closetag#options
let g:closetag_filenames = '*.js'
