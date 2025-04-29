Summary
When you work with a Visual Basic project in Visual SourceSafe, a special file is created in your working directory called Mssccprj.scc. This file can never be added to Visual SourceSafe. It stays in your working directory and stores important information used by the SourceSafe integration in Visual Basic.
More Information
The File Types Options tab in Visual SourceSafe sets options relating to the types of files you store in Visual SourceSafe. To get to the File Types tab, click Options on the Visual SourceSafe Explorer Tools menu, and then click File Types.

This tab has an option for Create SCC File. Create SCC File dictates when SourceSafe creates this file. Its default setting (*.vbp, *.mak) means that whenever you get or add a file with an extension of .vbp (Visual Basic 4.0 project file) or .mak (used by older versions of Visual Basic), SourceSafe creates the Mssccprj.scc file. This file is very important because without it, SourceSafe integration inside Visual Basic will not function properly.
