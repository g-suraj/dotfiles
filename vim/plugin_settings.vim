"-- DeopleteMe --"
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
inoremap <silent><expr> <Tab>
            \ pumvisible() ? "\<C-n>" : "<Tab>"
let g:deoplete#sources#clang#libclang_path = "/usr/lib/llvm-3.9/lib/libclang.so"
let g:deoplete#sources#clang#clang_header ="/usr/lib/llvm-3.9/lib/clang/"

"-- Lightline --"
" set lighline theme
let g:lightline = {
      \   'colorscheme': 'base16',
      \   'tabline': {
      \     'left': [ [ 'bufferinfo' ], [ 'bufferbefore', 'buffercurrent', 'bufferafter' ], ],
      \     'right': [ [ 'bufferstext' ], ],
      \   },
      \   'active': {
      \     'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename', 'ALE' ]]
      \   },
      \   'component': {
      \     'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}',
      \     'ALE': '%{ALEGetStatusLine()}',
      \     'bufferstext':"buffers"
      \   },
      \   'component_expand': {
      \     'buffercurrent': 'lightline#buffer#buffercurrent2',
      \   },
      \   'component_type': {
      \     'buffercurrent': 'tabsel',
      \   },
      \   'component_function': {
      \     'modified': 'LightlineModified',
      \     'readonly': 'LightlineReadonly',
      \     'filename': 'LightlineFilename',
      \     'fileformat': 'LightlineFileformat',
      \     'filetype': 'LightlineFiletype',
      \     'fileencoding': 'LightlineFileencoding',
      \     'mode': 'LightlineMode',
      \     'ntree': 'MyLightLinePercent',
      \     'lineinfo': 'MyLightLineLineInfo',
      \     'bufferbefore': 'lightline#buffer#bufferbefore',
      \     'bufferafter': 'lightline#buffer#bufferafter',
      \     'bufferinfo': 'lightline#buffer#bufferinfo',
      \     'fugitive': 'LightlineFugitive',
      \   },
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
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_action = {
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

"-- NerdTree --"
"-- Uncomment below to auto open tags/NerdTree --"
"autocmd VimEnter * TagbarOpen
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
let g:NERDTreeWinSize=40
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
"nnoremap <C-n> :FZF<CR>
"let NERDTreeQuitOnOpen=1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "+",
    \ "Staged"    : "✚",
    \ "Untracked" : "*",
    \ "Renamed"   : "~",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "x",
    \ "Dirty"     : "!!",
    \ "Clean"     : "",
    \ "Unknown"   : "?"
    \ }

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
" let g:neomake_verbose=3
" let g:neomake_open_list=2
" let g:neomake_cpp_enable_makers=['clang']
" let g:neomake_cpp_clang_args=["-std=c++11", "-Wextra", "-Wall", "-pedantic","-g"]

"-- Goyo --"
" Width
let g:goyo_width = 80
let g:goyo_height = 100

"-- Tmux --"
let g:tmux_navigator_save_on_switch = 2
let g:airline#extensions#tmuxline#enabled = 0
let g:tmuxline_powerline_separators = 0
let g:tmuxline_preset = {
      \'a'    : '#S  ',
      \'win'  : '#W',
      \'cwin' : '#W',
      \'z'    : '#H' }

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

"-- Indentation --"
let g:indentLine_color_term = 239
let g:indentLine_char = '│'

"-- Delimit / Matching --"
let g:mta_use_matchparen_group = 1

" Linting with ALE
let g:ale_sign_column_always = 1
let g:ale_statusline_format = ['⨉ %d', ' %d', '⬥ ok']
let g:ale_linters = {
\   'javascript': ['standard'],
\}

" Tern settings
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'  " This do disable full signature type on autocomplete
" Use tern_for_vim.
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

" Javascript library syntax libraries
let g:used_javascript_libs = 'angularuirouter, angularui, angularjs, jquery'
