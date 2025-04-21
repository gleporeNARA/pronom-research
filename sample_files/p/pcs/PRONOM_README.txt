PhotoChrome
File Format
Name	PhotoChrome
Ontology	
Electronic File Formats
Graphics
Atari graphics formats
PhotoChrome
Extension(s)	.pcs
PhotoChrome (or PhotoChrome Screen) is a raster image file format used on Atari ST computers. It is associated with the PhotoChrome image viewer and converter software by Douglas Little. Later versions of PhotoChrome, from version 5, can only encode images and doesn't include a viewer.

Contents [hide] 
1 Format
2 Identification
3 Software
4 Sample files
5 Links
6 External Links
Format
Files have a 6-byte fixed header. It is followed by several segments containing the palette and pixel data, which are RLE-compressed.

The image dimensions are always 320×200 pixels, but the first row is typically not used (apparently due to hardware limitations), making them effectively 320×199.

Some PhotoChrome files contain two separate images. On an actual Atari ST computer, the viewer would be expected to average them together using temporal dithering, to simulate more colors than the computer could actually display.

Identification
Files start with bytes 01 40 00 c8 (representing the width and height).

Software
Konvertor
RECOIL
PhotoChrome
Sample files
http://cd.textfiles.com/suzybatari2/pcs/
http://samples.libav.org/image-samples/atarist/photochrome/
RECOIL sample files → PAROT2.PCS, TIGER.PCS
PhotoChrome → BAY2.PCS, BETTY.PCS
https://telparia.com/fileFormatSamples/image/photoChrome/

http://fileformats.archiveteam.org/wiki/PhotoChrome
