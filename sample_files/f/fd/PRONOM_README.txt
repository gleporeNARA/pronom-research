Create the Font Definition file
The last file to create is the font definition (.fd) file. This is named following the pattern eeefnn.fd, using the same conventions as before, by prepending the (lowercase) encoding abbreviation to the foundry letter and fontname abbreviation, so our example would be ly1zor.fd for the LY1 encoding and the zor short font name.

Use your editor to open (create) texmf-local/tex/latex/psnfss/ly1zor.fd

Enter the following lines:

\ProvidesFile{ly1zor.fd}[2002/03/03 v0.1 manual 
              font definitions for LY1/zor.]

\DeclareFontFamily{LY1}{zor}{}

\DeclareFontShape{LY1}{zor}{k}{n}{<-> zorkly}{}
\DeclareFontShape{LY1}{zor}{k}{sc}{<-> zorklyc}{}

FD files typically use one \DeclareFontFamily command which specifies the encoding and the short font name. Then as many pairs of \DeclareFontShape commands as you converted fonts (assuming you did both normal and small caps for each font: see step 5; if you didn't, then only one such command per font is needed here). The arguments to the \DeclareFontShape command to watch are the 3rd (weight/width), 4th (shape), and 5th (font outline name): the rest are static for each .fd file and simply identify the encoding and the font family.

http://mirrors.ibiblio.org/CTAN/info/beginlatex/html/chapter8.html
