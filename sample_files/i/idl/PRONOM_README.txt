The IDL_Savefile object provides complete query and restore capabilities for IDL SAVE files. IDL SAVE files are binary format files created with the SAVE procedure; they can contain data or IDL routines. Using IDL_Savefile, you can retrieve information about the user, machine, and system that created the SAVE file, as well as the number and size of the various items contained in the file (variables, common blocks, routines, etc.). You can also selectively restore individual items from the SAVE file.

Use IDL_Savefile instead of the RESTORE procedure when you need to obtain detailed information on the items contained within a SAVE file without first restoring it, or when you wish to restore only selected items. Use RESTORE when you want to restore everything from the SAVE file using a simple interface.

https://www.l3harrisgeospatial.com/docs/idl_savefile.html
