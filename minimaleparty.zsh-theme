PROMPT='
 ┌ %{$fg_bold[blue]%}%2~%{$reset_color%} 
 └── %(?,%{$fg[green]%},%{$fg[red]%})%{$fg[magenta]%}%{$fg[blue]%}%{$fg[yellow]%}%{$fg[cyan]%}%{$reset_color%} '
# RPS1='%{$fg[blue]%}%~%{$reset_color%} '
#RPS1='%{$fg_bold[blue]%}%2~%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[black]%} %{$fg[green]%}"
