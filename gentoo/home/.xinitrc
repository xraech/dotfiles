#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

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
xset -dpms
xset s off 
#xrandr --output eDP1 --dpi 160
#setxkbmap -model pc104caw-zqu -layout us -variant cmk_ed_us  -option lv5:caps_switch_lock,misc:extend,altwin:swap_lalt_lwin

setxkbmap -layout us -variant altgr-intl -option altwin:swap_lalt_lwin,caps:ctrl_modifier
#setxkbmap -layout us -variant dvp
xsetroot -cursor_name left_ptr

# AutoStart All Sessions
#sh ~/.config/scripts/autostart.sh
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
