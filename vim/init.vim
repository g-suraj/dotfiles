"-- Neovim --"

let g:python_host_prog  = '/usr/bin/python'
let g:python3_host_prog  = '/usr/local/bin/python3'

filetype plugin on

"-- Plugins --"
source ~/dotfiles/vim/plugins.vim

"-- Colour Schemes and related items --"
source ~/dotfiles/vim/colours.vim

""-- Key Mappings --"
source ~/dotfiles/vim/mappings.vim

""-- Commands --"
source ~/dotfiles/vim/commands.vim

"-- Vim Editor Settings --"
source ~/dotfiles/vim/settings.vim

"-- Vim Plugin Settings --"
source ~/dotfiles/vim/plugin_settings.vim

"-- Custom Vim Functions Settings --"
source ~/dotfiles/vim/functions.vim

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
