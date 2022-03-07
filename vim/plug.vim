" Basic
" Plug 'preservim/nerdtree'

" Search
" https://www.chrisatmachine.com/Neovim/08-fzf/
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'airblade/vim-rooter'
" Plug 'zackhsi/fzf-tags'
" Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
" conflict with fzf.vim command :Rg
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

" Snippets
" https://github.com/honza/vim-snippets
Plug 'honza/vim-snippets'
" Ultisnips
" conflicts with coc-snippets and coc
" Plug 'SirVer/ultisnips'
" https://github.com/dsznajder/vscode-es7-javascript-react-snippets
" Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }

" Syntax Highlighting
" https://github.com/nvim-treesitter/nvim-treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Text Objects
" https://github.com/tpope/vim-surround
" https://github.com/tpope/vim-repeat
" The . command will work with ds, cs, and yss if you install repeat.vim.
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-rfactory'
Plug 'xolox/vim-misc'
" https://github.com/alvan/vim-closetag
" https://youtu.be/NnjkZYKzPds
" Plug 'alvan/vim-closetag'
" Plug 'merlinrebrovic/focus.vim'
" Plug 'justinmk/vim-sneak'

" Tmux integration
Plug 'christoomey/vim-tmux-navigator'  
Plug 'christoomey/vim-tmux-runner'
Plug 'gianarb/notify.vim'

" Language Server
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" removed temporarely because sets a keybiding on tab
" Plug 'ycm-core/YouCompleteMe'

" Syntax Checks
" Plug 'prettier/vim-prettier', {
"   \ 'do': 'yarn install',
"   \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
" Java (google)
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
 
" Interface
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'ap/vim-buftabline'
" Plug 'kyazdani42/nvim-web-devicons'

" https://github.com/preservim/nerdcommenter
" Plug 'preservim/nerdcommenter'
" https://github.com/vim-syntastic/syntastic#installation
" Plug 'vim-syntastic/syntastic'
" https://github.com/keith/swift.vim#usage
" Plug 'keith/swift.vim'
