"-- All plugins currently in my rotation --"

call plug#begin('~/.config/nvim/plugged')
"-- Deoplete, Deoplete++, NeoMake --"
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'zchee/deoplete-jedi'
Plug 'Shougo/neco-vim'
"Plug 'neomake/neomake'


"-- Tim Pope --"
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'


"-- LaTeX Plugins --"
Plug 'lervag/vimtex'


"-- Colour Schemes, C++ Colors, lightline --"
Plug 'jacoborus/tender'
Plug 'morhetz/gruvbox'
Plug 'arakashic/chromatica.nvim'
Plug 'junegunn/seoul256.vim'
Plug 'chriskempson/base16-vim'

Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'daviesjamie/vim-base16-lightline'
Plug 'taohex/lightline-buffer'


"-- Fuzzy searcher and NerdTree --"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'



"-- Supertab --"
Plug 'ervandew/supertab'


"-- UltiSnips, Emmet-Vim, Snippets --"
Plug 'SirVer/ultisnips'
Plug 'mattn/emmet-vim'
Plug 'honza/vim-snippets'


"-- Markdown preview generator --"
Plug 'JamshedVesuna/vim-markdown-preview'


"-- Haskell ,Extra syntax highlightling, Prolog --"
Plug 'neovimhaskell/haskell-vim'
Plug 'justinmk/vim-syntax-extra'
Plug 'contactgsuraj/wacc_syntax'
Plug 'adimit/prolog.vim'


"-- Clang Formatter --"
Plug 'rhysd/vim-clang-format'


"-- Goyo --"
Plug 'junegunn/goyo.vim'

"-- Tmux plugins --"
Plug 'christoomey/vim-tmux-navigator'
Plug 'edkolev/tmuxline.vim'


"-- Work analytics --"
Plug 'wakatime/vim-wakatime'


"-- Git Gutter --"
Plug 'airblade/vim-gitgutter'


"-- Automatic parenthesis closing and other matching --"
Plug 'Raimondi/delimitMate'
Plug 'Valloric/MatchTagAlways'
"set matchpairs+=<:>


"-- Auto Tagging --"
Plug 'craigemery/vim-autotag'


"--  Vim IDE environment --"
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
"Plug 'majutsushi/tagbar'


"--  Automatic Header file opening --"
Plug 'vim-scripts/a.vim'


"-- Man pages --"
Plug 'jez/vim-superman'


"-- Coloresque CSS helper --"
Plug 'gorodinskiy/vim-coloresque'


"-- Tabs view --"
Plug 'Yggdroot/indentLine'


"Buffer madnessh
Plug 'mhinz/vim-sayonara'

" Linting
Plug 'w0rp/ale'

call plug#end()
