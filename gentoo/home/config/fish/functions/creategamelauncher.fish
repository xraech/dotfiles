function creategamelauncher
	if test -n "$argv[1]"
		if test "$argv[1]" = "wine"
			if test -n "$argv[3]"
				echo "#!/bin/sh"\n"WineArch=win64 WINEPREFIX=\$1 wine $argv[3]/$argv[4]" > grun.sh
			else if test -n "$argv[2]"
				echo "#!/bin/sh"\n"WineArch=win64 WINEPREFIX=\$1 wine \"\$1/\"$argv[2]" > grun.sh
			else
				echo "#!/bin/sh"\n"WineArch=win64 WINEPREFIX=\$1 wine \"\$1/\"\$1.exe" > grun.sh
			end
		else if test "$argv[1]" = "sh"
			echo "#!/bin/sh"\n"sh \"./\$2.sh\"" > grun.sh
		else if test "$argv[1]" = "x86"
			echo "#!/bin/sh"\n"exec \"./\$2.x86\"" > grun.sh
		else if test "$argv[1]" = "x64"
			echo "#!/bin/sh"\n"exec \"./\$2.x64\"" > grun.sh
		else if test "$argv[1]" = "lutris"
			echo "#!/bin/sh"\n"lutris" > grun.sh
		else if test "$argv[1]" = "nw"
			echo "#!/bin/sh"\n"nw ." > grun.sh
		else if test "$argv[1]" = "rpg"
			echo "#!/bin/sh"\n"/home/raech/Games/Tools/mkxp/mkxp.amd64 --gameFolder=\"\$1\"" > grun.sh
		end
	else 
		echo "#!/bin/sh"\n"exec \"./\$2\"" > grun.sh
	end
	if test -f grun.sh
		chmod +x grun.sh
		cat grun.sh
	else
		echo "Failed"
	end
end

