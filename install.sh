# !/bin/bash
echo 'Installing...'
echo ''
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
ln -s ${BASEDIR}/vimrc ~/.vimrc
ln -s ${BASEDIR}/vim/ ~/.vim

# zsh
ln -s ${BASEDIR}/zshrc ~/.zshrc

# urxvt
ln -s ${BASEDIR}/Xdefaults ~/.Xdefaults

# xinitrc
ln -s ${BASEDIR}/xinitrc ~/.xinitrc

# Awesome
ln -s ${BASEDIR}/rc.lua ~/.config/awesome/rc.lua

# zathurarc
ln -s ${BASEDIR}/zathurarc ~/.config/zathura/zathurarc

# alsa
ln -s ${BASEDIR}/asoundrc ~/.asoundrc

# fonts

# gitconfig
ln -s ${BASEDIR}/gitconfig ~/.gitconfig

# mpd
ln -s ${BASEDIR}/mpd.conf ~/.mpd/mpd.conf

# rtorrent
ln -s ${BASEDIR}/rtorrent.rc ~/.rotrrent.rc

echo ''
echo 'Installed!'

