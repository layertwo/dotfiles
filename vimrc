filetype plugin indent on
syntax on

set background=dark
set number
set showmatch
set undolevels=1000
set noerrorbells
set nowrap
set spelllang=en_us
set ruler

set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set copyindent
set shiftround

set nocompatible
set backspace=indent,eol,start
set encoding=utf-8

set modeline
set history=100

noremap Y y$
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅

au BufWritePre *.c,*.cpp,*.h,*.py,*.rb,*.go,*.sh,*.txt retab
au BufWritePre * call SetSpaces()

" Searching
set ignorecase
set smartcase
set hlsearch
set incsearch

" File management
set noswapfile
set nobackup
set nowritebackup

" Allow for undoing changes after exit and reopen
set undofile
set undodir=~/.vim/undo/

fun SetSpaces()
    %s/\s\+$//e
endfun
