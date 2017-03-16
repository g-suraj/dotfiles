"-- DeopleteMe --"
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
inoremap <silent><expr> <Tab>
            \ pumvisible() ? "\<C-n>" : "<Tab>"
let g:deoplete#sources#clang#libclang_path = "/usr/lib/llvm-3.9/lib/libclang.so"
let g:deoplete#sources#clang#clang_header ="/usr/lib/llvm-3.9/lib/clang/"

"-- Lightline --"
set laststatus=2
" set lighline theme
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

"-- FZF --"
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

"-- NerdTree --"
"-- Uncomment below to auto open tags/NerdTree --"
"autocmd VimEnter * TagbarOpen
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
"nnoremap <C-n> :FZF<CR>
"let NERDTreeQuitOnOpen=1

"-- UltiSnps --"
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"-- VimTex --"
let g:vimtex_latexmk_continuous=1
let g:vimtex_viewer_mupdf=1

"-- Markdown --"
let vim_markdown_preview_hotkey='<C-m>'

"-- Haskell --"
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`

"-- ClangFormatter --"
let g:clang_format#style_options = {
            \ "AllowShortIfStatementsOnASingleLine" : "false",
            \ "Standard" : "C++11",
            \ "AllowShortLoopsOnASingleLine" : "false",
            \ "AllowShortBlocksOnASingleLine" : "false",
            \ "AllowShortFunctionsOnASingleLine" : "false",
            \ "ColumnLimit" : "79"}

"-- C settings --"
let g:chromatica#libclang_path='/usr/lib/llvm-3.9/lib'

"-- Neomake --"
let g:neomake_verbose=3
let g:neomake_open_list=2
let g:neomake_cpp_enable_makers=['clang']
let g:neomake_cpp_clang_args=["-std=c++11", "-Wextra", "-Wall", "-pedantic","-g"]

"-- Goyo --"
" Width
let g:goyo_width = 80
let g:goyo_height = 100

"-- Tmux --"
let g:tmux_navigator_save_on_switch = 2

"-- Vim Rooter --"
let g:rooter_patterns = ['Rakefile', '.git/']

"-- Tagging --"
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

"-- majutsushi/tagbar settings --
" Open/close tagbar with \b
let g:nerdtree_tabs_open_on_console_startup = 0

"-- Uncomment to open tagbar automatically whenever possible --"
" autocmd BufEnter * nested :call tagbar#autoopen(0)

