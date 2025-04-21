The software program VICE, standing for VersatIle Commodore Emulator, is a free and cross platform emulator for Commodore's 8-bit computers. It runs on Linux, Amiga, Unix, MS-DOS, Win32, Mac OS X, OS/2, RISC OS, QNX, GP2X, Pandora (console), Dingoo A320, Syllable, and BeOS host machines. VICE is free software, released under the GNU General Public Licence.

VICE for Microsoft Windows (Win32) is known as WinVICE, the OS/2 variant is called Vice/2, and the emulator running on BeOS is called BeVICE.

https://en.wikipedia.org/wiki/VICE

4.3 Palette files
Palette files are used to specify the colors used in the emulators. They are made up of lines like the following:

RED GREEN BLUE DITHER
where RED, GREEN and BLUE are hexadecimal values ranging from 0 to FF and specifying the amount of red, green and blue you want for each color and DITHER is a 4-bit hexadecimal number specifying the pattern you want when rendering on a B/W display.

You have to include as many lines as the number of colors the emulated machine has, and the order of the lines must respect the one used in the machine (so the N'th line must contain the specifications for color N - 1 in the emulated machine).

Lines starting with the # sign are completely ignored. This is useful for adding comments (such as color names) within the palette file.

For example, the default PET palette file (which has only two colors, 0 for background and 1 for foreground), looks like the following:

#
# VICE Palette file
#
# Syntax:
# Red Green Blue Dither
#

# Background
00 00 00 0

# Foreground
00 FF 00 F
