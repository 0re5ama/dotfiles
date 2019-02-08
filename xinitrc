compton --backend glx --paint-on-overlay --vsync opengl-swc &
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources &
#synclient touchpadoff=1 &
synclient TapButton2=2
synclient TapButton3=3
export GTK_IM_MODULE=ibus &
export XMODIFIERS=@im=ibus &
export QT_IM_MODULE=ibus &
ibus-daemon --xim &
mpd &
mpdscribble &
xkbcomp -I$HOME/.xkb/ ~/.xkb/keymap/mykbd $DISPLAY & 
source ~/.zshrc &
screen -d -m -fa -S rtorrent /usr/bin/rtorrent &
sudo ntpdate -u 0.pool.ntp.org &
urxvtd &

## For openbox
# nitrogen --restore &
# dunst &
# exec openbox-session

# exec startfluxbox
exec awesome
# exec i3
