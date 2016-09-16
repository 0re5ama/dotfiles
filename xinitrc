compton --backend glx --paint-on-overlay --vsync opengl-swc &
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources &
synclient touchpadoff=1 &
export GTK_IM_MODULE=ibus &
export XMODIFIERS=@im=ibus &
export QT_IM_MODULE=ibus &
ibus-daemon --xim &
mpd &
xkbcomp -I$HOME/.xkb/ ~/.xkb/keymap/mykbd $DISPLAY & 
exec awesome
#exec i3
