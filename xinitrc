compton --backend glx --paint-on-overlay --vsync opengl-swc &
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources &
systemctl start Networkmanager &
#pulseaudio -k &
synclient touchpadoff=1 &
export GTK_IM_MODULE=ibus &
export XMODIFIERS=@im=ibus &
export QT_IM_MODULE=ibus &
ibus-daemon --xim &
mpd &
setxkbmap -option caps:swapescape &
exec awesome
#exec i3
