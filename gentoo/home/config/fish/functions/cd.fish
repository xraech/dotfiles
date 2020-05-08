function cd
    if count $argv > /dev/null
	   builtin cd "$argv"; and ll
    else
	   builtin cd ~; and ll
    end
end
