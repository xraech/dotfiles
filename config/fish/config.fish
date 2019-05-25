
if status --is-login
  set -x PATH $PATH /home/raech/.config/scripts/
  if test -z "$DISPLAY"
	exec startx
  end
end

fortune -s
