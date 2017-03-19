"-- For mitigating common command mistakes --"
command! W w
command! Wq wq
command! WQ wq
command! Q q
command! Qa qa
command! QA qa

"-- User defined commands for config files --"
command! Vimrc :e ~/.config/nvim/init.vim
command! Zshrc :e ~/.zshrc
command! Trc :e ~/.tmux.conf

