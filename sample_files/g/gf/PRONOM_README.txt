Metafont is a font generation program associated with TeX. Its main function is to convert an .mf source font to a .gf (Generic Font) file and a .tfm (TeX Font Metrics) file. Typically, one would then convert the .gf file to some other standard font format.

Metafont is written in WEB.

Contents [hide] 
1 Identification
2 Software
3 Sample files
4 Links
Identification
A GF file begins with bytes f7 83.


http://fileformats.archiveteam.org/wiki/Metafont



What are .gf and .pk font files?

Viewed 2k times
￼
14
￼
￼
3
I've recently read this very interesting thread: How (La)TeX makes use of font related files, i.e., .fd, .map, .enc, .def,etc when selecting fonts?.

In the meantime, I've been playing with compiling (for fun) MetaFont .mf files found in my MiKTeX distribution.

For example, I've compiled the file cmr10.mf and it has produced the file cmr10.2602gf, which seems to have one of the filetypes mentioned in the above thread (.gf, or something similar).

If you are using a metafont font (which is increasingly rare) then the original source is written in MetaFont. Processing that source with metafont produces two files: the tfm file which encodes the font metrics (that is essentially just the size of each character, and information about ligatures and kerns with no information about shape) and a gf file which contains a sequence of bitmaps at a specified resolution (that needed to be specified to metafont, usually as part of a printer configuration). (The resolution by default got recorded in the file extension hence the example in your question)

tfm files are read directly by TeX but few programs could read gf fonts directly so they were almost always converted immediately to pk (packed) format which contained the same information in a more compressed form and could be read by dvi drivers such as dvips or xdvi.

So the end result was you could generate bitmap pk fonts exactly tuned to the printer you were using, not just the basic resolution but "blackness" control, ie how well the printer could cope with thin lines, or lines close together, metafont would if needed produce bitmaps with thicker lines etc. For printing on paper this produced very high quality output and for viewing on screen it could produce good results if you had high resolution and sensibly sampled and anti-aliased the bitmaps to the screen resolution, as dviview or xdvi did, but acrobat in its earlier versions made bitmap fonts more or less unreadable, which increased the urgency to develop type1 and other scalable format versions of the TeX fonts, which are the forms most commonly used today.

https://tex.stackexchange.com/questions/120414/what-are-gf-and-pk-font-files
