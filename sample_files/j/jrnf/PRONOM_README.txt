//github.com/jakob-fischer/jrnf_R_tools

The jrnf file format describes a reaction network consisting out
of a set of chemical species, reactions between those species and
(thermo)dynamic parameters. The networks are contained in plain
Unix-format text files (line feed character for new line) with only
ASCII characters. Individual elements are unsigned integer or floating point numbers in plain text or character strings. They are separated by whitespaces.
The first line of a file should contain the string "jrnf0003" to identify
the file format and version:
1 "jrnf0003"
The second line contains two integers, the number of chemical
species N and the number of reactions M.
2 ⟨N⟩⟨M⟩


http://www.clib-jena.mpg.de/theses/bgc/BGC18004.pdf
