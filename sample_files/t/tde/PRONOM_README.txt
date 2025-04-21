The result of data analysis in Tableau can be saved in various formats, to be saved and distributed. The various formats are referred as different file types and they are identified by different extensions. Their formats depend on how they are produced and for what purposes they are used. They are all stored as XML files, which can be opened and edited.

Following table lists the description of each file type and their usage.

File Type	File Extension	Purpose
Tableau Workbook	.twb	It contains information on each sheet and dashboard that is present in a workbook. It has the details of the fields, which are used in each view and the formula applied to the aggregation of the measures. It also has the formatting and styles applied. It contains the data source connection information and any metadata information created for that connection.
Tableau Packaged Workbook	.twbx	This file format contains the details of a workbook as well as the local data that is used in the analysis. Its purpose is to share with other Tableau desktop or Tableau reader users, assuming it does not need data from the server.
Tableau Data Source	.tds	The details of the connection used to create the tableau report are stored in this file. In the connection details, it stores the source type (excel/relational/sap, etc.) as well as the data types of the columns.
Tableau Packaged Data source	.tdsx	This file is similar to the .tds file with the addition of data along with the connection details.
Tableau Data Extract	.tde	This file contains the data used in a .twb file in a highly compressed columnar data format. This helps in storage optimization. It also saves the aggregated calculations that are applied in the analysis. This file should be refreshed to get the updated data from the source.
Tableau Bookmark	.tbm	These files contain a single worksheet that is shared easily to be pasted into other workbooks.
Tableau Preferences	.tps	This file stores the color preference used across all the workbooks. It is mainly used for consistent look and feel across the users.

https://www.tutorialspoint.com/tableau/tableau_file_types.htm#:~:text=Tableau%20Packaged%20Workbook&text=This%20file%20format%20contains%20the,need%20data%20from%20the%20server
