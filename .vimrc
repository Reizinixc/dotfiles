set nocompatible

syntax on
filetype on
filetype plugin indent on
set autoindent

autocmd FileType yaml setlocal et ts=2 sw=2 ai nu sts=2

set backspace=indent,eol,start

set nobackup
set noswapfile
set ruler
set showcmd

set hlsearch
set incsearch
set ignorecase
set smartcase

set so=6

if has('mouse')
  set mouse=a
endif

set modeline
set number

set undofile
set undodir=~/.undo
