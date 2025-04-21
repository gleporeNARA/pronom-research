Part I -- Introduction
The Fancy Font system provides the tools necessary to fully exploit the
superb resolution offered by the Epson printer. The system is embodied by three
separate programs, the main one being the printing program (Pfont). The other two
programs allow editing of existing fonts (Efont) and creation of new fonts from a master.
character table (Cfont).
The printing program provides many features normally found in word processors.
However, ~ A..J is not a general purpose word processor, and instead, it
should be ·viewed as a very sophisticated printing system combined with moderately
sophisticated text formatting capabilties. No personal computer word processor
exists today that can fully exploit the capabilities of ~ s,.,,J_ But, such
word processors are available on larger machines and will eventually be available on
personal computers. Until then, ~ !#..J provides the ability to achieve high
quality print and a high degree of format flexibility for medium-sized documents.
Pfont achieves high printing quality by passing the print head over each character
many times -- six times for standard characters, more for tall characters -- moving
the paper as little as a 216'h of an inch between each pass. Faster, rough
draft modes are obtained by using fewer passes. 

http://vtda.org/docs/computing/SoftCraft/Fancy_Font_System_Users_Manual_1982.pdf

There are only two types of data files, the font files and the Hershey character
database file.
FONT FILES
The font files have the following format.
0-38 description
Id string, "Translation by Pacific Software Systems", (a division of SoftCraft responsible for font creation). No trailing zero.
Font file version number. 
