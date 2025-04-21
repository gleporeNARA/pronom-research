Header table
Every TSR starts with a special table: the so-called file header. Depending on this header the TsrLoader can determine the position of the TSR’s program code and the tables in the file.

Every TSR listing is therefor supposed to start with the header table. The contents of this table is as follows:

	defb 'MST TSR',13,10	;TSR file ID
	defb 'MSTs TSRname'	;TSR naam
	defb 26			;End of text mark
	defw 0002		;Versie nummer voor TsrLoad
	defw tsrStart		;Base-address
	defw init		;Start initialization code
	defw kill		;Destruction code
	defw talk		;Interaction code
	defw tsrLen		;Length of TSR code
	defw iniLen		;Length of init code
The meaning of the elements in the header table is as follows:

MST TSR file ID, 9 bytes
This identification text lets TsrLoad recognize if it is handling a TSR file. Hence, this string may not freely be chosen by the TSR programmer.
TSR name, 12 bytes
An as unique as possible ID-text chosen by the programmer. Applications can communicate with the TSR by using this name. Unused positions must be filled with spaces.

http://map.grauw.nl/resources/tsrdev_en.php


MSX Software Team
The MST software products based on memory management with Memman and various TSR’s are important tools for Basic and MSX DOS users and programmers.
Many MST tools (tsr’s) are freeware. Some of the products were not free (with permission of the authors of the MST Robbert Withmar, Ries Vriends, Ramon van der Winkel now all are freeware!).

Here are those products (dutch documentation!):

MST Tracer, a Basic debugger
MST Jansi, ansi code support
MST Improve
MST tsr development kit
MST tsr collection
MST Quintus drawing program
MST Diskview (see next section)
An uptodate archive with MEMMAN 2.4 including english introduction and a large selection of tsr’s

https://hansotten.file-hunter.com/software/
