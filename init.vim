" Neovim Python host -"
let g:python_host_prog  = '/usr/bin/python2'
let g:python3_host_prog  = '/usr/bin/python3'

call plug#begin('~/.config/nvim/plugged')

  "- Deoplete -> Neovim AutoCompleteMe-"
  "- Deoplete additional completion tools -"
  "- NeoMake -"
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'zchee/deoplete-clang'
  Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
  Plug 'zchee/deoplete-jedi'
  Plug 'Shougo/neco-vim'
  Plug 'neomake/neomake'

  "Tim Pope
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-obsession'

  " LaTeX Plugins
  Plug 'lervag/vimtex'

  " Colour Schemes
  " C++ Color
  " lightline
  Plug 'jacoborus/tender'
  Plug 'morhetz/gruvbox'
  Plug 'itchyny/lightline.vim'
  Plug 'shinchu/lightline-gruvbox.vim'
  Plug 'arakashic/chromatica.nvim'
  Plug 'junegunn/seoul256.vim'

  " Fuzzy searchers
  " NerdTree
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  "Plug 'scrooloose/nerdtree'

  " Supertab
  Plug 'ervandew/supertab'

  "UltiSnips
  " Emmet-Vim
  " Snippets
  Plug 'SirVer/ultisnips'
  Plug 'mattn/emmet-vim'
  Plug 'honza/vim-snippets'

  "Markdown preview generator
  Plug 'JamshedVesuna/vim-markdown-preview'

  "Syntax
  "Haskell
  "Extra syntax highlightling
  "Prolog
  Plug 'neovimhaskell/haskell-vim'
  Plug 'justinmk/vim-syntax-extra'
  Plug 'contactgsuraj/wacc_syntax'
  Plug 'adimit/prolog.vim'
  "Plug 'octol/vim-cpp-enhanced-highlight' 

  "Clang Formatter
  Plug 'rhysd/vim-clang-format'

  " Goyo
  Plug 'junegunn/goyo.vim'

  "Tmux plugins
  Plug 'christoomey/vim-tmux-navigator'


call plug#end()

"- General -"	
set nocompatible
set undofile
set undodir=~/.vim/undodir
syntax on
imap jk <Esc>
imap Jk <Esc>
imap JK <Esc>
imap <C-c> /**/jkhha
set noswapfile
nmap <S-Enter> O<Esc>
command! W w
command! Wq wq
command! WQ wq
command! Q q
let mapleader=","
set completeopt-=preview

"- Neovim Terminal commands	-"
nnoremap <C-t> :te<CR>
tnoremap jk <C-\><C-n>
tnoremap <C-w> <C-\><C-n>:q<CR>
tnoremap <C-J> <C-\><C-n><C-W><C-J>
tnoremap <C-K> <C-\><C-n><C-W><C-K>
tnoremap <C-L> <C-\><C-n><C-W><C-L>
tnoremap <C-H> <C-\><C-n><C-W><C-H>

"- VimSplits -"	
nnoremap <C-w>ts <C-W>s:te<CR>
nnoremap <C-w>tv <C-W>v:te<CR>
nnoremap <C-S-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright
"This disables vim split lines
set fillchars=""


"- DeopleteMe -"	
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
inoremap <silent><expr> <Tab>
            \ pumvisible() ? "\<C-n>" : "<Tab>"
let g:deoplete#sources#clang#libclang_path = "/usr/lib/llvm-3.9/lib/libclang.so"
let g:deoplete#sources#clang#clang_header ="/usr/lib/llvm-3.9/lib/clang/"
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

"- Spaces / Tabs -" 
set exrc    "These two are for C
set secure
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " Number of spaces when TAB is pressed
set shiftwidth=2
set expandtab 	" Converts tabs into spaces
set smartindent
set autoindent
set nopaste 

"- UI -"	
set clipboard=unnamedplus
set cursorline
set number
filetype indent on
"set lazyredraw
set showmatch
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap <Space> za
map <c-S-f> mzgg=G`z
nmap Gf gg3wgf

"- Colours -"	
set t_Co=256
colorscheme gruvbox
set background=dark

"- lightline -"	
set laststatus=2
" set lighline theme
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

"- FZF -"	
nnoremap <C-P> :FZF<CR>
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"- NerdTree -"
"map <C-n> :NERDTreeToggle<CR>
nnoremap <C-n> :FZF<CR>
let NERDTreeQuitOnOpen=1

"- Searching -"	
set incsearch           " search as characters are entered
set hlsearch " highlight matches


"- UltiSnps -"	

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"- VimTex -"	

let g:vimtex_latexmk_continuous=1
let g:vimtex_viewer_mupdf=1

"- Markdown -" Preview	
"
let vim_markdown_preview_hotkey='<C-m>'

"- Haskell Syntax Etc.-"	
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
"highlight LineNr ctermfg=grey

"- ClangFormatter - C family formatting -"	
let g:clang_format#style_options = {
            \ "AllowShortIfStatementsOnASingleLine" : "false",
            \ "Standard" : "C++11",
            \ "AllowShortLoopsOnASingleLine" : "false",
            \ "AllowShortBlocksOnASingleLine" : "false",
            \ "AllowShortFunctionsOnASingleLine" : "false",
            \ "ColumnLimit" : "79"}
nmap <C-f> :ClangFormat<CR>

"- C ++ ColorSupport-"
"let g:cpp_class_scope_highlight = 1
"let g:cpp_experimental_simple_template_highlight = 1
let g:chromatica#libclang_path='/usr/lib/llvm-3.9/lib'

"- Neomake -"
autocmd! BufWritePost *.cpp *.c Neomake!
let g:neomake_verbose=3
let g:neomake_open_list=2
let g:neomake_cpp_enable_makers=['clang']
let g:neomake_cpp_clang_args=["-std=c++11", "-Wextra", "-Wall", "-pedantic","-g"]

"- Git tools -
nnoremap <S-g>s :Gstatus<CR>
nnoremap <S-g>a :Gwrite<CR>
nnoremap <S-g>c :GCommit<CR>
nnoremap <S-g>cs :Commits<CR>
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"Prolog file type association
au BufNewFile,BufRead *.pro set filetype=prolog
au BufNewFile,BufRead *.pl set filetype=prolog

"- Goyo -"
" Width
let g:goyo_width = 80
let g:goyo_height = 100
nnoremap <C-g>g :Goyo<CR>
nnoremap <C-g>G :Goyo!<CR>

"- Tmux Shit -"
let g:tmux_navigator_save_on_switch = 2

"- Vim spelling -"
au BufNewFile,BufRead *.tex set spell spelllang=en_gb

"Tex file cleaner
autocmd! BufWritePost *.tex :normal mzgg=G`z

if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://sunaku.github.io/vim-256color-bce.html
    set t_ut=
endif
