if status is-interactive
    if ps (pgrep Xorg) | grep -i tty1
        pgrep bspwm || exec startx -- vt1
    end
end

eval (dircolors -c ~/.config/dircolors/dir_colors)
tput smkx
if string match -q "*-256color" "$TERM"
	fortune -s
    set -e VTE_VERSION
end
