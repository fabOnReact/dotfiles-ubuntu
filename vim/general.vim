" Nerdtree
" map <C-n> :NERDTreeToggle .<CR>
" https://stackoverflow.com/a/5801491/7295772
" map <C-n> :NERDTreeToggle %:p:h<CR>
let g:NERDTreeChDirMode = 2

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

" fix color issue with neovim
set t_Co=256
set termguicolors

" Make clearly distinguable Tabs
hi TabLineFill ctermfg=LightGreen ctermbg=DarkGreen
hi TabLine ctermfg=Blue ctermbg=Yellow

" cmdline omnicompletion
" https://vi.stackexchange.com/questions/11411/is-there-a-version-of-vim-or-plugin-with-a-command-mode-auto-completion
set wildmenu
set wildmode=longest,list,full

" do not show highlighting in search
set nohlsearch

" terminal zsh
" set splitbelow

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

" https://stackoverflow.com/questions/40362460/show-cursor-in-command-line-mode
set cursorline

" use q? instead of /
" nnoremap / q/i

" https://github.com/preservim/nerdcommenter#settings
let g:NERDCreateDefaultMappings = 1

" surrounds mappings to move between brackets
" https://github.com/alvan/vim-closetag#options
let g:closetag_filenames = '*.js'
" https://vim.fandom.com/wiki/Making_Parenthesis_And_Brackets_Handling_Easier
inoremap <C-j> <Esc>/[)}"'\]>]<CR>:nohl<CR>a

" Git
" noremap <leader>gc :GCheckout<CR>
" noremap <leader>gs :Gtabedit :<CR>

" Markdown settings
" let g:mkdp_auto_start = 1
" let g:mkdp_auto_close = 1

" https://stackoverflow.com/a/52548754/11452286
" open tag in vertical split (previously was tmux.conf next-window)
" nnoremap <C-W><C-V>f :exec "vert norm <C-V><C-W>f"<CR>

