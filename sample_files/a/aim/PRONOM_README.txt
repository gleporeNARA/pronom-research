The aim format is an image format from what I was able to analyze, and in particular I was able to identify 3 "versions" from what I can see, the first one is a jpg image format, this can be opened by an image opening program Meanwhile there are two more formats that are unknown. IMTC32 and MSLD32.

This is the header of the Aim file:

IMTC32 variant:

Little endian

AIMRES2.00 MIPMCONT IMTC32

MSLD32 variant:

Little endian

AIMRES2.00 TILEDIM IMSLD32

JPEG24 version

Little endian

AIMRES2.00 TILEDIM IMJPG24


https://patriciero-mforos-com.translate.goog/848527/12920972-mis-archivos-de-port-royal-2-para-mejorar-el-juego/?pag=3&_x_tr_sl=es&_x_tr_tl=en&_x_tr_hl=en&_x_tr_pto=sc


That's what i figured out up to now:
.AIM means Ascaron Image Format and was developed by Ascaron for their new release "Darkstar One". The images stored in these files are simple 2D graphics.
My problems with decoding the format now are:
1) I cannot find any advice for the image size in the file header
2) the color format ... most files contain a string "IMTC32", other "IMSLD32". So i've googled for those, but didn't find anything about this.
Maybe these strings doesn't stand for the color format ...

The file data always starts at offset 40. It's simple one pixel after the other, line by line stored. So you can easily extract the color values ​​for each pixel. But without the correct color format, i always get wrong colors.

Some AIM files can be found here:
http://sv.h774874.serverkompetenz.net/aimfiles.zip
Maybe there is one who can help me? :)

https://forum-xentax-com.translate.goog/viewtopic.php?f=18&t=1978&fbclid=IwAR1TcJxI9u7MMW9gxhZHnq1RAltR97CQ1SZJRfIgbNu8mWkfifMicOcDigA&_x_tr_sl=es&_x_tr_tl=en&_x_tr_hl=en-US&_x_tr_pto=sc
