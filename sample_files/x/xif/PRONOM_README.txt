The DRI .o format used on the Atari ST is the same as that used on
CP/M 68K. If you go to the Unofficial CP/M Web page at
http://cdl.uta.edu/cpm
or the mirror at
http://www.mathcs.emory.edu/~cfs/cpm
you can download the CP/M 68K Programmers Reference Guide which
details this.
DRI defined several output formats for the executable, the main
ones being
CP/M 68K contigious format relocatable and absolute, magic number 601A
GEMDOS contigious format relocatable, magic number 601A
CP/M 68K noncontigious format relocatable and absolute, magic number 601B
CDOS 68K crunched relocatable, magic number 601C
The CP/M 601A relocatable format uses one word of relocation information
for each word of code and data in the program and so produces a file which
is very big. The GEMDOS 601A uses a more compact relocation information
the following is a description of the GEMDOS 601A format from the GEMDOS
manual in the ICATARI user group magazine issue 3.

http://www.verycomputer.com/74_95df83ea163387b5_1.htm

http://dev-docs.exxoshost.co.uk/Pexec_Cookbook_9-6-1991.pdf
