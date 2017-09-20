"-- Neovim --"

let g:python_host_prog  = '/usr/bin/python2'
let g:python3_host_prog  = '/usr/bin/python3'

filetype plugin on

"-- Plugins --"
source /home/s/dotfiles/vim/plugins.vim

"-- Colour Schemes and related items --"
source /home/s/dotfiles/vim/colours.vim

""-- Key Mappings --"
source /home/s/dotfiles/vim/mappings.vim

""-- Commands --"
source /home/s/dotfiles/vim/commands.vim

"-- Vim Editor Settings --"
source /home/s/dotfiles/vim/settings.vim

"-- Vim Plugin Settings --"
source /home/s/dotfiles/vim/plugin_settings.vim

"-- Custom Vim Functions Settings --"
source /home/s/dotfiles/vim/functions.vim

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
