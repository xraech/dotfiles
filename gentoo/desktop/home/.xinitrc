#!/bin/sh
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

#export GDK_SCALE=2
#export GDK_DPI_SCALE=0.5
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export XIM_PROGRAM=/usr/bin/fcitx
fcitx &
mpd

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap $usermodmap
fi

# Raech Settings

xset +fp /usr/share/fonts/
xset fp rehash
xset s off -dpms

xsetroot -cursor_name left_ptr

numlockx &
dunst &
imwheel -b45
nitrogen --restore &

# Per WM
curr=bspwm

case $curr in
	bspwm)
		exec bspwm
		;;
	dwm)
		sxhkd -c $HOME/.config/dwm/dwmrc &
		exec $HOME/.config/dwm/dwm
		;;
	*)
		exec bspwm
esac
