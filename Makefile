thumbnails:
	find images/portfolio -name '*.original.jpg' | sed 's/\.original\.[^.]*$$//' | xargs -tI %file convert %file.original.jpg -thumbnail '1500' -unsharp 0x.5 %file.detail.jpg
	# find images/portfolio -name '*.original.jpg' | sed 's/\.original\.[^.]*$$//' | xargs -tI %file convert %file.original.jpg -thumbnail '200x200^' -unsharp 0x.5 -gravity center -extent '200x200' %file.thumb.jpg
