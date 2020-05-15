function fish_theme
    if test -n "$argv[1]"
	if test "$argv[1]" = "nord"
	    set nord0 2e3440
	    set nord1 3b4252
	    set nord2 434c5e
	    set nord3 4c566a
	    set nord4 d8dee9
	    set nord5 e5e9f0
	    set nord6 eceff4
	    set nord7 8fbcbb
	    set nord8 88c0d0
	    set nord9 81a1c1
	    set nord10 5e81ac
	    set nord11 bf616a
	    set nord12 d08770
	    set nord13 ebcb8b
	    set nord14 a3be8c
	    set nord15 b48ead

	    set -U fish_color_normal $nord4
	    set -U fish_color_command $nord9
	    set -U fish_color_quote $nord14
	    set -U fish_color_redirection $nord9
	    set -U fish_color_end $nord6
	    set -U fish_color_error $nord11
	    set -U fish_color_param $nord4
	    set -U fish_color_comment $nord3
	    set -U fish_color_match $nord8
	    set -U fish_color_search_match $nord8
	    set -U fish_color_operator $nord9
	    set -U fish_color_escape $nord13
	    set -U fish_color_cwd $nord8
	    set -U fish_color_autosuggestion $nord6
	    set -U fish_color_user $nord4
	    set -U fish_color_host $nord9
	    set -U fish_color_cancel $nord15
	    set -U fish_pager_color_prefix $nord13
	    set -U fish_pager_color_completion $nord6
	    set -U fish_pager_color_description $nord10
	    set -U fish_pager_color_progress $nord12
	    set -U fish_pager_color_secondary $nord1
	elif test "$argv[1]" = "terminal"
	    set -U fish_color_normal normal
	    set -U fish_color_command brblue
	    set -U fish_color_quote brgreen
	    set -U fish_color_redirection brblue
	    set -U fish_color_end brwhite
	    set -U fish_color_error brred
	    set -U fish_color_param green
	    set -U fish_color_comment green
	    set -U fish_color_match cyan
	    set -U fish_color_search_match cyan
	    set -U fish_color_operator brblue
	    set -U fish_color_escape bryellow
	    set -U fish_color_cwd cyan
	    set -U fish_color_autosuggestion magenta
	    set -U fish_color_user normal
	    set -U fish_color_host green
	    set -U fish_color_cancel red
	    set -U fish_pager_color_prefix yellow
	    set -U fish_pager_color_completion magenta
	    set -U fish_pager_color_description yellow
	    set -U fish_pager_color_progress brred
	    set -U fish_pager_color_secondary brgreen
	elif test "$argv[1]" = "luna"
	    set -U fish_color_autosuggestion magenta
	    set -U fish_color_cancel -r
	    set -U fish_color_command green #white
	    set -U fish_color_comment magenta
	    set -U fish_color_cwd green
	    set -U fish_color_cwd_root red
	    set -U fish_color_end blue
	    set -U fish_color_error red
	    set -U fish_color_escape yellow #green
	    set -U fish_color_history_current --bold
	    set -U fish_color_host normal
	    set -U fish_color_match --background=brblue
	    set -U fish_color_normal normal
	    set -U fish_color_operator blue #green
	    set -U fish_color_param cyan
	    set -U fish_color_quote yellow #brblack
	    set -U fish_color_redirection cyan
	    set -U fish_color_search_match normal --background=brblack
	    set -U fish_color_selection black --bold --background=brwhite
	    set -U fish_color_status red
	    set -U fish_color_user brgreen
	    set -U fish_color_valid_path --underline
	    set -U fish_pager_color_completion normal
	    set -U fish_pager_color_description blue --background=normal
	    set -U fish_pager_color_prefix normal --bold #--underline
	    set -U fish_pager_color_progress brwhite --background=cyan
	end
    else
	set -U fish_color_autosuggestion magenta
	set -U fish_color_cancel -r
	set -U fish_color_command green #white
	set -U fish_color_comment magenta
	set -U fish_color_cwd green
	set -U fish_color_cwd_root red
	set -U fish_color_end blue
	set -U fish_color_error red
	set -U fish_color_escape yellow #green
	set -U fish_color_history_current --bold
	set -U fish_color_host normal
	set -U fish_color_match --background=brblue
	set -U fish_color_normal normal
	set -U fish_color_operator blue #green
	set -U fish_color_param cyan
	set -U fish_color_quote yellow #brblack
	set -U fish_color_redirection cyan
	set -U fish_color_search_match normal --background=blue
	set -U fish_color_selection black --bold --background=brwhite
	set -U fish_color_status red
	set -U fish_color_user brgreen
	set -U fish_color_valid_path --underline
	set -U fish_pager_color_completion normal
	set -U fish_pager_color_description blue --background=normal
	set -U fish_pager_color_prefix normal --bold #--underline
	set -U fish_pager_color_progress brwhite --background=cyan
    end
end
