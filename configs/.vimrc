set nocompatible " be iMproved, required
filetype off " required
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" my plugins
Plugin 'jeroenbourgois/vim-actionscript'  " actionscript syntax highlighting
Plugin 'derekwyatt/vim-scala'             " scala syntax highlighting and more
Plugin 'Shougo/neocomplcache'             " autocompletion
Plugin 'mileszs/ack.vim'                  " integrate ack into vim for 'silver searcher' integration
Plugin 'kien/ctrlp.vim'                   " Full path fuzzy file, buffer, mru, tag, etc.
Plugin 'rodjek/vim-puppet'                " Puppet syntax highlighting

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
set hlsearch        " highlight matching searches
set number          " show line numbers in the left column
set incsearch       " start searching after first character of search is made
                    " refine search with more characters
set smartcase       " when searching, respect case of the search
set ignorecase      " ignore case when searching
set colorcolumn=80  " show a red bar at the 80th column
set ruler           " show numbers representing current row/column of file
set showmatch       " show matching brackets
set matchtime=5     " bracket blinking? what is this?
set showcmd         " show the current command in the status bar
set autoread        " set to auto read when a file is changed from the outside
set tabpagemax=100  " when opening multiple tabs, allow max number of tabs

" mouse
set mouse-=a        " disable mouse
set mousehide       " hide mouse after typing

" Some plugins or settings (like relativenumbers or cursorline) need full redraws
" of the screen or parts of the line. This will fix the issue by buffering screen
" updates. But be aware that it won't be as smooth as gui macvim
set lazyredraw

" integrate ack.vim
if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column'
endif
