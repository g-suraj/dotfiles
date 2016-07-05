filetype plugin indent on    " required

""""""""""
"VimPlug
""""""""""
    call plug#begin('~/.vim/plugged')

    " Colour Scheme
    Plug 'jacoborus/tender'

    "Airline status bar with powerline
    Plug 'itchyny/lightline.vim'

    "CtrlP fuzzy searcher for vim
    Plug 'kien/ctrlp.vim'

    "Ag.vim
    Plug 'rking/ag.vim'

    "Syntastic Plugin Plug 'scrooloose/syntastic'
    Plug 'scrooloose/syntastic'

    "Indentation Stuff
    Plug 'Yggdroot/indentLine'

    Plug 'ervandew/supertab'
    Plug 'sirver/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'scrooloose/nerdtree'
    Plug 'raimondi/delimitmate'

    " Add plugins to &runtimepath
    call plug#end()
""""""""""


""""""""""
"General
""""""""""
    syntax on
    imap jk <Esc>
    imap <C-c> /**/jkhha
    "New tab bindings
    nnoremap <C-t> :tabnew<CR>
    inoremap <C-t> <Esc>:tabnew<CR>
    set noswapfile
    nnoremap <leader>a :Ag
    nnoremap <C-h> :tabprevious<CR>
    nnoremap <C-l> :tabnext<CR>
    nmap <S-Enter> O<Esc>
    nmap <CR> o<Esc>
""""""""""


""""""""""
"SpacesAndTabs
""""""""""
    set exrc    "These two are for C
    set secure
    set colorcolumn=80
    highlight ColorColumn ctermbg=darkgray

    set tabstop=2       " number of visual spaces per TAB
    set softtabstop=2   " Number of spaces when TAB is pressed
    set shiftwidth=2
    set expandtab 	    " Converts tabs into spaces
    set smartindent
"""""""""""


""""""""""
"UIConfig
""""""""""
    set clipboard=unnamedplus
    set cursorline
    set number
    filetype indent on
    set lazyredraw
    set showmatch
    nnoremap j gj
    nnoremap k gk
    " move to beginning/end of line
    nnoremap B ^
    nnoremap E $
    " $/^ doesn't do anything
    nnoremap $ <nop>
    nnoremap ^ <nop>

    "For C
    augroup project
    autocmd!
        autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
    augroup END
"""""""""""


"""""""""""
"Searching
""""""""""
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
"""""""""""


"""""""""""
"Colors and visuals
""""""""""
    set t_Co=256
    colorscheme tender
""""""""""


"""""""""""
"Airline
""""""""""
    set laststatus=2
    " enable tender lightline theme
    let g:tender_lightline = 1
    " " set lighline theme
    let g:lightline = { 'colorscheme': 'tender' }
"""""""""""


"""""""""""
"CtrlP settings
""""""""""
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }
"""""""""""


"""""""""""
"Syntastic Settings
""""""""""
set statusline+=%#warningmsg#
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"""""""""""


"""""""""""
"Tmux
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
        let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
        else
            let &t_SI = "\<Esc>]50;CursorShape=1\x7"
                let &t_EI = "\<Esc>]50;CursorShape=0\x7"
                endif
"""""""""""


"""""""""""
"indentation
"""""""""""
let g:indentLine_color_term = 239
let g:indentLine_char = '|'
"""""""""""



"""""""""""
"ETC
"""""""""""
"ETC
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:clang_library_path='/usr/lib/llvm-3.6/lib'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
autocmd BufWritePre * :%s/\s\+$//e
"""""
"NerdTree"
"""""
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeQuitOnOpen=1
let g:SuperTabClosePreviewOnPopupClose = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
set completeopt-=preview
set spell spelllang=en_gb
map <C-S-f> mzgg=G`z
cnoremap <c-n> <CR>n/<c-p>
set ignorecase
set tw=80
set fo-=l
nnoremap <Space> za
set foldmethod=indent
command W w
command Wq wq
command WQ wq
command Q q
