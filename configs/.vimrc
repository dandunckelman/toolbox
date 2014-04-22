set nocompatible " be iMproved, required
filetype off " required
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" add my plugins here
Plugin 'jeroenbourgois/vim-actionscript' " actionscript syntax highlighting

filetype plugin indent on " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line

set tabstop=2
set smarttab
set shiftwidth=2
set expandtab
set softtabstop=2
set hlsearch
set number
set incsearch
set smartcase
set colorcolumn=80
set ruler
set ignorecase
syntax on