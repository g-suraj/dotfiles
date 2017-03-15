"!-- Neovim Python host --"
let g:python_host_prog  = '/usr/bin/python2'
let g:python3_host_prog  = '/usr/bin/python3'

call plug#begin('~/.config/nvim/plugged')
" Deoplete -> Neovim AutoCompleteMe, Deoplete additional completion tools, NeoMake"
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'zchee/deoplete-jedi'
Plug 'Shougo/neco-vim'
Plug 'neomake/neomake'

"Tim Pope"
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'

"LaTeX Plugins"
Plug 'lervag/vimtex'

"Colour Schemes, C++ Colors, lightline"
Plug 'jacoborus/tender'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'arakashic/chromatica.nvim'
Plug 'junegunn/seoul256.vim'
Plug 'chriskempson/base16-vim'

"Fuzzy searchers NerdTree"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

"Supertab"
Plug 'ervandew/supertab'

"UltiSnips"
"Emmet-Vim"
"Snippets"
Plug 'SirVer/ultisnips'
Plug 'mattn/emmet-vim'
Plug 'honza/vim-snippets'

"Markdown preview generator
Plug 'JamshedVesuna/vim-markdown-preview'

"Syntax for :
"Haskell ,Extra syntax highlightling, Prolog
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

" Work analytics
Plug 'wakatime/vim-wakatime'

"Git Gutter
Plug 'airblade/vim-gitgutter'

"Automatic parenthesis closing
Plug 'Raimondi/delimitMate'
set matchpairs+=<:>

"Auto Tagging
Plug 'craigemery/vim-autotag'

" Vim IDE environment
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'

" Automatic Header file opening
Plug 'vim-scripts/a.vim'

"Man pages
Plug 'jez/vim-superman'

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

" Pleb mode deactivated "
no <Down> <Nop>
no <Up> <Nop>
no <Left> <Nop>
no <Right> <Nop>
let mapleader=","
set completeopt-=preview

"The CIA should not tread on me but hey this is pretty handy"
cmap w!! w !sudo tee % > /dev/null

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

" This does not work.
" Set lazyredraw.
set showmatch
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap <Space> za
map <c-S-f> mzgg=G`z
nmap <silent>Gf :A<CR>

"- Colours -"
set t_Co=256
colorscheme gruvbox
let g:gruvbox_bold=0
set background=dark

"- lightline -"
set laststatus=2
" set lighline theme
""let g:lightline = {}
""let g:lightline.colorscheme = 'gruvbox'
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightlineFugitive',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

"function! LightlineFugitive()
"  return exists('*fugitive#head') ? fugitive#head() : ''
"endfunction
function! LightlineFugitive()
  if exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? ' '.branch : ''
  endif
  return ''
endfunction


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
map <C-n> :NERDTreeToggle<CR>
"autocmd VimEnter * TagbarOpen
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
"nnoremap <C-n> :FZF<CR>
"let NERDTreeQuitOnOpen=1

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
autocmd! BufWritePost *.cpp *.c Neomake! %
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

"Vim Rooter"
let g:rooter_patterns = ['Rakefile', '.git/']

"- Tagging / IDE settings -"
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <C-S-B> :TagbarToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 0
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)
"
"--- Whitespace ---"
set list
set listchars=trail:
autocmd BufWritePre * :%s/\s\+$//e
