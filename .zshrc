# Enable colors
autoload -U colors && colors

# Prompt
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[red]%}@%{$fg[cyan]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/marci/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Enable tab completion menu
zstyle ':completion:*' menu select
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS} "ma=48;5;163;1"

#  . "/home/marci/.local/share/lscolors.sh"

alias ls='ls --color=auto'
alias config='/usr/bin/git --git-dir=/home/marci/.cfg/ --work-tree=/home/marci'
alias ra='ranger'

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
