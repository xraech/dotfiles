function gentoo
    if test (count $argv) -lt 1; or test "$argv[1]" = "help"
	echo "missing flags,
		update	-> updates gentoo @world
		portage -> updates portage
		clean	-> cleans gentoo
		sync	-> sync databases *portage and layman*"

    else
	if test "$argv[1]"  = "update"
	    doas /usr/bin/emerge -avuND --with-bdeps y --keep-going world
	else if test "$argv[1]" = "clean"
	    doas /usr/bin/emerge -av --depclean $2
	    doas /usr/bin/revdep-rebuild
	else if test "$argv[1]" = "portage"
	    doas /usr/bin/emerge -1av sys-apps/portage
	else if test "$argv[1]" = "sync"
	    doas /usr/bin/emerge --sync
	    doas /usr/bin/layman -S
	end
    end
end

