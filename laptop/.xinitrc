#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

[[ -f ~/.Xdefaults ]] && xrdb -merge ~/.Xdefaults


userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap


xset +fp /usr/share/fonts/
xset +fp ~/.local/share/fonts/
xset fp rehash
xrandr --output eDP1 --dpi 140
setxkbmap -option caps:ctrl_modifier
setxkbmap -layout us,us -variant ,intl -option grp:alt_shift_toggle
xsetroot -cursor_name left_ptr
xbacklight -set 50
kbdlight set 25
export GDK_SCALE=2
export GDK_DPI_SCALE=0.7
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export QT_QPA_PLATFORMTHEME=qt5ct
export XMODIFIERS=@im=fcitx
fcitx &

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi
if [ $TERM = linux ] || [ -e "/etc/systemd/system/graphical.target.wants/xlogin@$(whoami).service" ] ; then
# Here Bspwm is kept as default
#session=${1:-awesome}
session=${1:-bspwm}

case $session in
	awesome 		  ) exec dbus-launch --sh-syntax --exit-with-session awesome;;
	jwm 			  ) exec dbus-launch --sh-syntax --exit-with-session jwm;;
	deepin 			  ) exec dbus-launch --sh-syntax --exit-with-session startdde;;
	enlightenment 	  ) exec dbus-launch --sh-syntax --exit-with-session enlightenment_start;;
	gnome 			  ) exec dbus-launch --sh-syntax --exit-with-session gnome-session;;
	bspwm 			  ) exec dbus-launch --sh-syntax --exit-with-session bspwm-session;;
    i3|i3wm           ) exec dbus-launch --sh-syntax --exit-with-session i3;;
    lxde 	          ) exec dbus-launch --sh-syntax --exit-with-session startlxde;;
    lxqt         	  ) exec dbus-launch --sh-syntax --exit-with-session lxqt-session;;
    i3|i3wm           ) exec dbus-launch --sh-syntax --exit-with-session i3;;
    kde               ) exec dbus-launch --sh-syntax --exit-with-session startkde;;
    cinnamon          ) exec dbus-launch --sh-syntax --exit-with-session cinnamon-session;;
    budgie            ) exec dbus-launch --sh-syntax --exit-with-session budgie-desktop;;
    mate              ) exec dbus-launch --sh-syntax --exit-with-session mate-session;;
    openbox           ) exec dbus-launch --sh-syntax --exit-with-session openbox-session;;
    xfce|xfce4        ) exec dbus-launch --sh-syntax --exit-with-session startxfce4;;
    # No known session, try to run it as command
    *                 ) exec dbus-launch --sh-syntax --exit-with-session $1;;
esac
fi
