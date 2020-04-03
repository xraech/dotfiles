if status is-interactive
    if ps (pgrep Xorg) | grep -i tty1
        pgrep dwm || exec startx
    end
end

fish_vi_key_bindings
if string match -q "*-256color" "$TERM"
	fortune -s
    set -e VTE_VERSION
end
