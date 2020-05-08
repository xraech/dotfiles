function fish_prompt
	# Cache exit status
  set -l last_status $status

  if not set -q __fish_prompt_hostname
	set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
  end

 # Setup colors
 # Fish Vi Mode
  set -l red (set_color red)
  if test $fish_bind_mode = "default"
	  set red (set_color red)
  else if test $fish_bind_mode = "insert"
	  set red (set_color green)
  end
  set -l normal (set_color normal)
  set -l cyan (set_color cyan)
  set -l white (set_color normal)

  # Configure __fish_git_prompt
  set -g __fish_git_prompt_char_stateseparator ' '
  set -g __fish_git_prompt_color normal
  set -g __fish_git_prompt_color_flags red
  set -g __fish_git_prompt_color_prefix cyan
  set -g __fish_git_prompt_color_suffix cyan
  set -g __fish_git_prompt_showdirtystate true
  set -g __fish_git_prompt_showuntrackedfiles true
  set -g __fish_git_prompt_showstashstate true
  set -g __fish_git_prompt_show_informative_status true

  # Line 1
  echo -n $cyan'┌─('$red'^.^'$cyan')'$white'-'$cyan'('$white(prompt_pwd)$cyan')'
  __fish_git_prompt "-[git://%s]-"
  echo

  # Line 2
  echo -n $cyan'└─>'  $normal
  #$__fish_prompt_char $normal
end
