" Basic
Plug 'preservim/nerdtree'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

" Search
" Plug 'ctrlpvim/ctrlp.vim'
" https://www.chrisatmachine.com/Neovim/08-fzf/
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'zackhsi/fzf-tags'
" Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
Plug 'stsewd/fzf-checkout.vim'
Plug 'airblade/vim-rooter'
" Plug 'jremmen/vim-ripgrep'

" Git 
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
" https://www.chrisatmachine.com/Neovim/12-git-integration/
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-eunuch'

" Navigation
" Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'kana/vim-textobj-user'

" Background task
Plug 'tpope/vim-dispatch'

" Code search, autocomplete
" Ultisnips - not work with coc
" https://github.com/honza/vim-snippets
" https://github.com/dsznajder/vscode-es7-javascript-react-snippets
Plug 'honza/vim-snippets'
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }

" Syntax
" https://github.com/nvim-treesitter/nvim-treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
" Plug 'leafgarland/typescript-vim'
" Typescript
Plug 'HerringtonDarkholme/yats.vim'
" Plug 'mxw/vim-jsx'
Plug 'udalov/kotlin-vim'
" Plug 'kchmck/vim-coffee-script'
" Markdown
Plug 'godlygeek/tabular'
" Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim'

" Objective C
Plug 'kentaroi/cocoa.vim'
Plug 'keith/swift.vim'
" Plug 'b4winckler/vim-objc'

" Android Sdk
" Plug 'hsanson/vim-android'

" Java syntax highlighting
Plug 'uiiaoo/java-syntax.vim'

" Testing
Plug 'rlue/vim-fold-rspec'
Plug 'janko-m/vim-test'

" Text Objects
" https://github.com/tpope/vim-surround
" https://github.com/tpope/vim-repeat
" The . command will work with ds, cs, and yss if you install repeat.vim.
Plug 'tpope/vim-surround'
" Plug 'merlinrebrovic/focus.vim'
" Plug 'justinmk/vim-sneak'
Plug 'christoomey/vim-rfactory'
Plug 'xolox/vim-misc'
" https://github.com/alvan/vim-closetag
" https://youtu.be/NnjkZYKzPds
Plug 'alvan/vim-closetag'

" Notes
Plug 'xolox/vim-notes'

" Tmux integration
Plug 'christoomey/vim-tmux-navigator'  
Plug 'christoomey/vim-tmux-runner'
Plug 'gianarb/notify.vim'

" Syntax Checks
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" google-java
" Add maktaba and codefmt to the runtimepath.
" (The latter must be installed before it can be used.)
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plug 'google/vim-glaive'
 
" Interface
" Plug 'overcache/NeoSolarized'
" Plug 'critiqjo/vim-bufferline'
" Plug 'taohexxx/lightline-buffer'
" Plug 'itchyny/lightline.vim'
" https://github.com/akinsho/nvim-bufferline.lua
" Plug 'akinsho/nvim-bufferline.lua'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'ap/vim-buftabline'
" Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)

" Terminal
" https://github.com/vimlab/split-term.vim
Plug 'vimlab/split-term.vim'

Plug 'airblade/vim-rooter'

" Other
" https://youtu.be/1iuzniAe44Q
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
" https://github.com/yuttie/comfortable-motion.vim
" https://youtu.be/-80O8GGqNwA
" Plug 'yuttie/comfortable-motion.vim'
" https://github.com/easymotion/vim-easymotion
" https://youtu.be/7X0ELN_YGtE
Plug 'easymotion/vim-easymotion'
