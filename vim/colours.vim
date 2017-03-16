"-- Colours --"
set t_Co=256
colorscheme gruvbox
let g:gruvbox_bold=0
set background=dark

if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://sunaku.github.io/vim-256color-bce.html
    set t_ut=
endif

