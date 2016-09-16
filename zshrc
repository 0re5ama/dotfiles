# Lines configured by zsh-newuser-install
#export TERM="rxvt-unicode-256color"
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
autoload -U colors && colors
PROMPT="%{$fg[red]%}┌──[%{$fg[green]%}%n%{$reset_color%}@%{$fg[blue]%}%m%{$reset_color%}%{$fg[red]%}]─[%{$fg_no_bold[yellow]%}%~%{$reset_color%}%{$fg[red]%}]
└─[%{$fg[white]%}%#%{$fg[red]%}] %{$reset_color%}"
RPROMPT='%t'
autoload -U compinit
compinit
alias ls="ls --color=always"
export QT_QPA_PLATFORMTHEME="qt5ct"
export WECHALLUSER="shahbibek10"
export WECHALLTOKEN="41E22-01000-D10C1-7C1EC-20A26-6317E"
export PATH=/usr/local/texlive/2016/bin/x86_64-linux:/home/xer0/Downloads/arduino/arduino-1.6.11:/home/xer0/Downloads/arduino/eagle/bin:$PATH
export MANPATH=/usr/local/texlive/2016/texmf-dist/doc/man:$MANPATH
export INFOPATH=/usr/local/texlive/2016/texmf-dist/doc/info:$INFOPATH
alias stdn="shutdown -P now"
#ZSH_THEME="powerlevel9k/powerlevel9k"
source ~/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme
