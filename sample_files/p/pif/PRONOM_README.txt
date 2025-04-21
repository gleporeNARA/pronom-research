https://smsoft.ru/en/pifdoc.htm

http://fileformats.archiveteam.org/wiki/Program_information_file

Program information file (aka PIF file) is used by the multitasking Windows environment to describe how to open a legacy DOS program. It contains things like the amount of available memory (conventional, high, extended, expanded), the number of rows and columns of ASCII output on screen, mouse capture, full screen mode, behaviour of the window after program termination, etc.

PIFs themselves should have no executable code, but due to the way current Windows OS handles these files, if the file with such extension were to contain an executable it would run on double click. Because of this these files should be included in virus scans.
