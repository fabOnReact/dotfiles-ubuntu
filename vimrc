set nocompatible              " be iMproved, required
filetype off                  " required
" syntax highlighting not working on big files
" https://github.com/vim/vim/issues/2790
" set redrawtime=10000
set re=0
" - For Neovim: stdpath('data') . '/plugged'
call plug#begin('~/.vim/plugged')

source ~/.dotfiles/vim/plug.vim

call plug#end()
" https://github.com/google/vim-codefmt
" the glaive#Install() should go after the "call vundle#end()"
call glaive#Install()

runtime macros/matchit.vim

set number
set shiftwidth=2
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set relativenumber
set noswapfile

set clipboard=unnamed

autocmd FocusGained * let @z=@+
syntax enable

" Settings
source ~/.dotfiles/vim/vim-test.vim
source ~/.dotfiles/vim/upcase.vim
source ~/.dotfiles/vim/copy-paste.vim
source ~/.dotfiles/vim/folding.vim
source ~/.dotfiles/vim/android.vim
source ~/.dotfiles/vim/java.vim
source ~/.dotfiles/vim/coc.vim
source ~/.dotfiles/vim/sneak.vim
source ~/.dotfiles/vim/signify.vim
source ~/.dotfiles/vim/general.vim
source ~/.dotfiles/vim/java-format.vim
source ~/.dotfiles/vim/airline.vim
source ~/.dotfiles/vim/alias.vim
source ~/.dotfiles/vim/folders.vim
source ~/.dotfiles/vim/fzf.vim
source ~/.dotfiles/vim/objc.vim
source ~/.dotfiles/vim/reactnative.vim
source ~/.dotfiles/vim/surfnative.vim
