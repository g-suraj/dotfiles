"-- Colours --"
if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://sunaku.github.io/vim-256color-bce.html
    set t_ut=
endif
let base16colorspace=256
set t_Co=256
set background=dark
colorscheme base16-ocean

"-- old gruvbox setting --"
"let g:gruvbox_bold=0
