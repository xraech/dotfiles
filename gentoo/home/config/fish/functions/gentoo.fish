function gentoo
    if test "$argv[2]" = "skip"
	if test "$argv[1]"  = "update"
	    doas /usr/bin/emerge -vUND --with-bdeps y --keep-going world
	else if test "$argv[1]" = "clean"
	    doas /usr/bin/emerge -v --depclean $3
	    doas /usr/bin/revdep-rebuild
	else if test "$argv[1]" = "portage"
	    doas /usr/bin/emerge -1v sys-apps/portage
	else if test "$argv[1]" = "sync"
	    doas /usr/bin/emerge --sync
	    doas /usr/bin/layman -S
	else
	    echo "missing flags,
		    update	-> updates gentoo @world
		    portage -> updates portage
		    sync	-> sync databases *portage and layman*"
	end
    else
	if test "$argv[1]"  = "update"
	    doas /usr/bin/emerge -avUND --with-bdeps y --keep-going world
	else if test "$argv[1]" = "clean"
	    doas /usr/bin/emerge -av --depclean $2
	    doas /usr/bin/revdep-rebuild
	else if test "$argv[1]" = "portage"
	    doas /usr/bin/emerge -1av sys-apps/portage
	else if test "$argv[1]" = "sync"
	    doas /usr/bin/emerge --sync
	    doas /usr/bin/layman -S
	else
	    echo "missing flags,
		    update	-> updates gentoo @world
		    portage -> updates portage
		    sync	-> sync databases *portage and layman*"
	end

    end
end

