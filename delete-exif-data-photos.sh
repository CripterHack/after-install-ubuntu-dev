## To change multiple files y multiple directories

grep -rl 'FIND' ./place | xargs sed -i 's/FIND/REPLACE/g'

# sudo apt install libimage-exiftool-perl

# optimizar jpg
jpegoptim -m 80 -d out *.jpg
# optimizar múltiples jpg
# creación carpeta out -> borrado exif -> renombrado -> optimización al 80% calidad jpg.
mkdir out && for i in *.jpg; do echo "Processing $i"; exiftool -all= "$i"; done && rm *.jpg_original && jpegoptim -m 80 -d out *.jpg

# optimizar png
optipng -dir out *.png
# creación carpeta out -> borrado exif -> renombrado -> optimización compresión png.
mkdir out && for i in *.png; do echo "Processing $i"; exiftool -all= "$i"; done && rm *.png_original && optipng -dir out *.png

# deleting exif data jpg files
for i in *.jpg; do echo "Processing $i"; exiftool -all= "$i"; done && rm *.jpg_original

# deleting exif data png files
for i in *.png; do echo "Processing $i"; exiftool -all= "$i"; done && rm *.png_original

## CONVERT PNG TO JPG
mogrify -format jpg -background white -flatten *.png

## NODE UTILITY FOR SVG OPTIMIZATION
# NPM HAS TO BE INSTALLED
sudo npm install -g svgo
svgo -o out *.svg
ln -s /usr/bin/nodejs /usr/bin/node

## IMAGEMAGICK
# width defined && height auto
convert example.png -resize 200 example.png
# width auto && height defined
convert example.png -resize x100 example.png
# rotate
convert howtogeek.jpg -rotate 90 howtogeek-rotated.jpg

# resize width 1500px auto height multiple files
for file in *.jpg; do convert $file -resize 1500 rez-$file; done
# resize width 2000px auto height multiple files
for file in *.jpg; do convert $file -resize 2000 rez-$file; done

# resize width 1500px auto height unique file
convert .jpg -resize 1500