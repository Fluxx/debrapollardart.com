thumbnails:
	find . -name '*.original.jpg' | sed 's/\.original\.[^.]*$$//' | xargs -tI %file convert %file.original.jpg -thumbnail '1500' %file.detail.jpg
	find . -name '*.original.jpg' | sed 's/\.original\.[^.]*$$//' | xargs -tI %file convert %file.original.jpg -thumbnail '250x250^' -unsharp 0x.5 -gravity center -extent '200x200' %file.thumb.jpg
