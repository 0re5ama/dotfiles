# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/xer0/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="miloshadzic"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e

autoload -U colors && colors
export QT_QPA_PLATFORMTHEME="qt5ct"
alias ecn="cd /srv/http/laravel/ecn/"
alias pcs="cd /srv/http/laravel/pcs/"
alias sp="cd /srv/http/nodeJS/sp/"
alias flood="/srv/torrent/flood/run.sh"
alias browser-sync="node ~/.npm-global/lib/node_modules/browser-sync/bin/browser-sync.js"
export WECHALLUSER="shahbibek10"
export WECHALLTOKEN="41E22-01000-D10C1-7C1EC-20A26-6317E"
export PATH=/home/xer0/.npm-global/:/home/xer0/.npm-global/bin:/usr/lib/node_modules:/usr/local/texlive/2016/bin/x86_64-linux:/home/xer0/Downloads/arduino/arduino-1.6.11:/home/xer0/Downloads/arduino/eagle/bin:/home/xer0/.gem/ruby/2.5.0/bin:/home/xer0/.config/composer/vendor/bin:$HOME/.cargo/bin:/home/xer0/.dotnet/tools:$HOME/firefox:$PATH
export PATH=/home/xer0/.local/bin/:$PATH
export MANPATH=/usr/local/texlive/2016/texmf-dist/doc/man:$MANPATH
export INFOPATH=/usr/local/texlive/2016/texmf-dist/doc/info:$INFOPATH
export NODE_PATH=~/.npm-global/lib/node_modules

export SYSTEMD_EDITOR=vim
export DOTNET_CLI_TELEMETRY_OPTOUT=1
alias stdn="shutdown -P now"
alias ddlc="/media/xer0/sda4/DDLC-1.1.0-pc/DDLC.sh"
alias mpvyt="mpv --ytdl-format=135+140"
alias tm="cd ~/Documents/Programming/rust/codewars/hackerrank && tmux a"
alias q="QHOME=~/q rlwrap -r ~/q/l64/q"
alias l="exa -l"
alias uu="sudo pacman -Syu --color always --noconfirm"
alias ii="sudo pacman -S"
# if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  # exec startx
# fi
eval `perl -I ~/perl5/lib/perl5 -Mlocal::lib`
export MANPATH=$HOME/perl5/man:$MANPATH
