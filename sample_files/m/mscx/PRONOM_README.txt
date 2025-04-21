MuseScore native format
MuseScore saves files in the following native formats:

*.mscz: The default MuseScore file format. Being compressed it takes up relatively little disk space.
*.mscx: An uncompressed MuseScore file format, mainly used for debugging or storing in a versioning system
.*.mscz, / .*.mscx,: These are backup files. Notice the point (full stop) added before the file name, and the comma added to the file extension.
A note about fonts: MuseScore does not embed text fonts in saved or exported native format files. If you want your MuseScore file to be viewed by other MuseScore users, make sure you are using the built-in FreeSerif or FreeSans font families for your text, or a font that the other parties have installed too. If a system does not have the fonts specified in your original file, MuseScore will use a fallback option, which may cause your score to appear differently.

MuseScore format (*.mscz)
MSCZ is the standard MuseScore file format and recommended for most uses. A score saved in this format takes up very little disk space, but preserves all the necessary information. The format is a ZIP-compressed version of .mscx files and includes any images the score may contain and a thumbnail.

Uncompressed MuseScore format (*.mscx)
MSCX is the uncompressed version of the MuseScore file format. A score saved in this format will retain all information, except images. It can be opened with a text editor, allowing the user access to the file's source code.

https://musescore.org/en/handbook/file-formats
