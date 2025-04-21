Turbo Vision is a DOS-based character-mode text user interface (TUI) framework developed around 1990 by Borland for Pascal and C++. Later it was deprecated in favor of Object Windows Library for the then-increasingly important Win16 API.

The Turbo Vision framework was included with Borland Pascal, Turbo Pascal, and Borland C++. It was used by Borland itself to write the integrated development environments (IDE) for these programming languages. By default, Turbo Vision applications replicate the look and feel of these IDEs. Key parts of the Turbo Vision library replicate the functionality of standard components in Microsoft Windows, for example edit controls, list boxes, check boxes, radio buttons and menus, all of which have built-in mouse support.

https://en.wikipedia.org/wiki/Turbo_Vision



Turbo Vision Programming Guide 

Resource File 

During initialization, Init looks for a resource file header at the current 
position of the stream. The format of a resource file header is 

type 

TResFileHeader = record 

Signature: array[1..4] of Char; 

ResFileSize: Longint; 

IndexOffset: Longint; 
end; 

where Signature contains 'FBPR', ResFileSize contains the size of the entire 
resource file excluding the Signature and ResFileSize fields (i.e. the size of 
the resource file minus 8 bytes), and IndexOffset contains the offset of the 
index collection from the beginning of the header. 

https://archive.org/stream/bitsavers_borlandTurrogrammingGuide1992_25707423/Turbo_Vision_Version_2.0_Programming_Guide_1992_djvu.txt
