" Nerdtree
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

" fix color issue with neovim
set t_Co=256

" over-rides highlight color
" https://vi.stackexchange.com/a/17546
set termguicolors

" Make clearly distinguable Tabs
hi TabLineFill ctermfg=LightGreen ctermbg=DarkGreen
autocmd vimenter * hi TabLine ctermfg=Blue ctermbg=Yellow

" change vim search highlight
" https://stackoverflow.com/a/7103261/7295772
hi Search guibg=peru guifg=wheat

" cmdline omnicompletion
" https://vi.stackexchange.com/questions/11411/is-there-a-version-of-vim-or-plugin-with-a-command-mode-auto-completion
set wildmenu
set wildmode=longest,list,full

" do not show highlighting in search
" set nohlsearch

" https://stackoverflow.com/questions/40362460/show-cursor-in-command-line-mode
set cursorline

" https://github.com/preservim/nerdcommenter#settings
let g:NERDCreateDefaultMappings = 1

" surrounds mappings to move between brackets
" https://github.com/alvan/vim-closetag#options
" let g:closetag_filenames = '*.js'
