"-- General --"
set nocompatible
set undofile
set undodir=~/.vim/undodir
syntax on
set noswapfile
let mapleader=","
set completeopt-=preview

"-- Spaces --"
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " Number of spaces when TAB is pressed
set shiftwidth=2
set expandtab 	" Converts tabs into spaces
set smartindent
set autoindent
set nopaste

"-- UI --"
set clipboard=unnamedplus
set cursorline
set number
set numberwidth=4
filetype indent on

" This does not work.
" Set lazyredraw.
set showmatch

"-- Searching --"
set incsearch           " search as characters are entered
set hlsearch " highlight matches

"-- Whitespace --"
set list
set listchars=trail:

"-- Prevent comment or leader characters from being copied over new line --"
set formatoptions-=cro
set formatoptions-=r formatoptions-=c formatoptions-=o
