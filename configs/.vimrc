set nocompatible " be iMproved, required
filetype off " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" my plugins
Plugin 'Shougo/neocomplcache'     " autocompletion
Plugin 'kien/ctrlp.vim'           " Full path fuzzy file, buffer, mru, tag, etc.
Plugin 'rodjek/vim-puppet'        " Puppet syntax highlighting
Plugin 'vim-scripts/vim-vagrant'  " Vagrant integration

call vundle#end()

filetype plugin on " required
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

syntax on

set noswapfile      " who needs swap files?!

" whitespace formatting
" enforce spaces instead of tabs
set tabstop=2
set smarttab
set shiftwidth=2
set expandtab
set softtabstop=2

" view configuration
set hlsearch       " highlight matching searches
set number         " show line numbers in the left column
set incsearch      " start searching after first character of search is made
                   " refine search with more characters
set smartcase      " when searching, respect case of the search
set ignorecase     " ignore case when searching
set ruler          " show numbers representing current row/column of file
set showmatch      " show matching brackets
set matchtime=5    " bracket blinking? what is this?
set showcmd        " show the current command in the status bar
set autoread       " set to auto read when a file is changed from the outside
set tabpagemax=100 " when opening multiple tabs, allow max number of tabs

" mouse
set mouse-=a        " disable mouse
set mousehide       " hide mouse after typing
