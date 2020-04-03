function cd
    if count $argv > /dev/null
	   builtin cd "$argv"; and dir
    else
	   builtin cd ~; and dir
    end
end
