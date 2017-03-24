export TERM=rxvt-unicode-256color
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/suraj/.oh-my-zsh

#PLUGINS

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="minimaleparty"


# Uncomment the following line to use case-sensitive completion.
#CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colorize lol zsh-wakatime)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

#Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias pj="cd /home/suraj/Dropbox/Computing/webapps/"

alias z="ranger"
alias gst="git status"
alias status="git status"
alias commit="git commit"
alias push="git push"
alias pull="git pull"
alias merge="git merge"
alias sudo vim="sudo nvim"
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias inst="sudo apt install"
alias lyrics="cmus-lyrics"
alias zshrc="nvim ~/.zshrc"
alias vimrc="nvim ~/.config/nvim/init.vim"
alias vimp="nvim ~/github/dotfiles/vim/plugins.vim"
alias extract="tar -xvzf"
alias t="tree -L 4 -C -v -d"
alias termconf="nvim ~/.config/terminator/config"
alias i3rc="nvim ~/.config/i3/config"
alias lemonrc="nvim ~/.config/lemonbuddy/config"
alias i3conf="nvim ~/.config/i3/config"
alias mopidyrc="nvim ~/.config/mopidy/mopidy.conf"
alias brighter="xbacklight -inc 15"
alias darker="xbacklight -dec 15"
alias wb="cd /home/suraj/github/personal_webpage/bower_components/bootstrap/dist/"
alias clean="make clean"
alias nyan="nyancat"
alias color="~/color-scripts/pokescript.sh"
alias ls="ls -a -F --color=auto --group-directories-first"
alias re="reset"
alias docssh="ssh sg6215@point54.doc.ic.ac.uk"
alias copy="xclip -selection clipboard"
alias moo="apt-get moo"
alias wacce="cd ~/Dropbox/Computing/term1/Lab/wacc_examples"
alias sdl="cd ~/github/gameOne/"
alias tw="rainbowstream"
alias trc="vim ~/.tmux.conf"
alias noff="nmcli networking off"
alias non="nmcli networking on"
alias sicstus="rlwrap sicstus"
alias home="cd ~/Dropbox/Computing/term2/"
alias h="cd ~/Dropbox/Computing/term2/"
alias branch="git branch && git branch -r"
alias mkboff="xinput float 15 ;xinput float 14;"
alias mkbon="xinput reattach 15 3 ;xinput reattach 14 2;"
alias xx="tmux detach"
alias fame="git-fame"
alias log="git log --oneline --graph"
alias clock="tmux clock-mode"
alias man="vman"
#export VIMRUNTIME+=/usr/share/vim/vim80

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

vman() {
  vim -c "SuperMan $*"

  if [ "$?" != "0" ]; then
    echo "No manual entry for $*"
  fi
}

# Base 16
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
