"-- General --"
set nocompatible
set undofile
set undodir=~/.vim/undodir
syntax on
set noswapfile
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
set relativenumber number
set numberwidth=4
set hidden
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

"-- Lightline buffer settings --"
let g:lightline_buffer_show_bufnr = 0
let g:lightline_buffer_rotate = 0
let g:lightline_buffer_fname_mod = ':t'
let g:lightline_buffer_excludes = ['vimfiler']

let g:lightline_buffer_maxflen = 30
let g:lightline_buffer_maxfextlen = 3
let g:lightline_buffer_minflen = 16
let g:lightline_buffer_minfextlen = 3
let g:lightline_buffer_reservelen = 20

let g:lightline_buffer_logo = ''
let g:lightline_buffer_readonly_icon = ''
let g:lightline_buffer_modified_icon = '+'
let g:lightline_buffer_git_icon = ' '
let g:lightline_buffer_ellipsis_icon = '..'
let g:lightline_buffer_expand_left_icon = '◀ '
let g:lightline_buffer_expand_right_icon = ' ▶'
let g:lightline_buffer_active_buffer_left_icon = ''
let g:lightline_buffer_active_buffer_right_icon = ''
let g:lightline_buffer_separator_icon = ' '

" Markdown preview settins
let vim_markdown_preview_github=1
let g:vim_markdown_preview_browser = 'Chromium'
