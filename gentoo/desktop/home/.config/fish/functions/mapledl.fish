function mapledl
	cd /home/raech/Programing/Python/Maplestory
	if test -e "Dedi\ Maplestory.zip"
		rm Dedi\ Maplestory.zip
	end
	curl 'https://www.dropbox.com/sh/9njr668fw384jzv/AAAEUe9QredVYkilbWQSjihea?dl=1' -O -J -L
	unzip -o Dedi\ Maplestory.zip
	rm Dedi\ Maplestory.zip
end
