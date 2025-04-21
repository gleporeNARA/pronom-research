Purpose
MPD files or "Multi-Part Documents" are a way to combine several LDraw and encoded binary files into one consolidated source. This allows for ease in posting or emailing a model made up of many subparts.

Structure
A MPD file consists out of blocks of LDraw code separated by 0 FILE or 0 !DATA statements. Each block is considered a separate file and can be referenced by the other ones as needed.

Blocks starting with the 0 FILE statement are normal type 0..5 line LDraw code.

Blocks starting with the 0 !DATA statement contain binary data encoded using a multitude of 0 !: lines. Each of those lines contain a chunk of base64 encoded data which a parser must combine before decoding. No other LDraw statements may be used inside a !DATA block.

The end of each block, or just the last block in the MPD, may be marked with a 0 NOFILE line. The 0 NOFILE command is only required if the file's contents are followed by non-LDraw content (such as the poster's signature lines). LDraw parsers must then ignore all content until a new 0 FILE or 0 !DATA is found.

In order to support the inclusion of MPD files in message systems (like email), any text lines before the first 0 FILE or 0 !DATA statement will be discarded. It is considered to be an error for any LDraw code (other than comment lines) to appear before the first 0 FILE or 0 !DATA statement.

The first block in the MPD is treated as the 'main model' -- all other files in the MPD will only be rendered if they are referenced by the main model, directly or indirectly. For this reason it is recommended (but not required) to always use a 0 FILE block as the first entry in the MPD.

So far, there are no clear scoping or namespace rules on MPD files. If you put a file named stud.dat in your MPD file, don't be surprised to see your stud.dat file appear on the top of every single brick in your scene.

MPD META Statements
FILE
Format: 0 FILE <filename>
Where:
<filename> is the name of the following LDraw file.

https://www.ldraw.org/article/47
