#!/bin/bash
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#vim
ln -s ${BASEDIR}/vimrc ~/.vimrc
ln -s ${BASEDIR}/vim/ ~/.vim

#zsh
ln -s ${BASEDIR}/zshrc ~/.zshrc

#urxvt
ln -s ${BASEDIR}/Xdefaults ~/.Xdefaults

#xinitrc
ln -s ${BASEDIR}/xinitrc ~/.xinitrc

#rc.lua
ln -s ${BASEDIR}/rc.lua ~/.config/awesome/rc.lua

#zathurarc
ln -s ${BASEDIR}/zathurarc ~/.config/zathura/zathurarc


echo ''
echo 'Installed!'

