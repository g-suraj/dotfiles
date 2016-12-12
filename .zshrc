export TERM=rxvt-unicode-256color
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/suraj/.oh-my-zsh

#PLUGINS

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="sunaku"
#ZSH_THEME="sunrise"
#ZSH_THEME="blinks"
#ZSH_THEME="powerlevel9k"
ZSH_THEME="terminalparty"
#ZSH_THEME="geometry"
#ZSH_THEME="minimal"
#ZSH_THEME="arrow"


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
plugins=(git colorize lol)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

#Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
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
alias pj="cd /home/suraj/Dropbox/Computing/term1/Lab/wacc_33/src/cppsource"

alias z="ranger"
alias gst="git status"
alias status="git status"
alias commit="git commit"
alias push="git push"
alias pull="git pull"
alias merge="git merge"
alias cdhome="cd ~/Dropbox/Computing/Year\ 1"
alias v="vim"
alias inst="sudo apt install"
alias lyrics="cmus-lyrics"
alias zshrc="v ~/.zshrc"
alias vimrc="v ~/.vimrc"
alias extract="tar -xvzf"
alias t="tree -L 4 -C -v -d"
alias termconf="vim ~/.config/terminator/config"
alias i3rc="vim ~/.config/i3/config"
alias lemonrc="vim ~/.config/lemonbuddy/config"
alias i3conf="vim ~/.config/i3/config"
alias mopidyrc="vim ~/.config/mopidy/mopidy.conf"
alias brighter="xbacklight -inc 15"
alias darker="xbacklight -dec 15"
alias wb="cd /home/suraj/github/personal_webpage/bower_components/bootstrap/dist/"
alias clean="make clean"
alias nyan="nyancat"
alias color="~/color-scripts/color-scripts/space-invaders"
alias ls="ls -a -F --color=auto --group-directories-first"
alias re="reset"
alias docssh="ssh sg6215@point54.doc.ic.ac.uk"
alias copy="xclip -selection clipboard"
alias moo="apt-get moo | head -n 6"
alias wacce="cd ~/Dropbox/Computing/term1/Lab/wacc_examples"
alias sdl="cd ~/github/gameOne/"
export VIMRUNTIME=/usr/share/vim/vim80
