XML and CDS Formats
The ClientDataSet component supports two different streaming formats: the native format and an XML-based format. The Borland Shared\Demo folder mentioned earlier holds versions of a number of tables in each of the two formats. By default, MyBase saves the datasets in XML format. The SaveToFile method has a parameter allowing you to specify the format, and the LoadFromFile method works automatically for both formats.

Using the XML format has the advantage of making the persistent data also accessible with an editor and with other programs not based on the ClientDataSet component. However, this approach implies converting the data back and forth, because the CDS format is close to the internal memory representation invariably used by the component, regardless of the streaming format. Also, the XML format generates large files, because they are text based. On average, a MyBase XML file is twice the size of the corresponding CDS file.

Tip 	
While you have a ClientDataSet in memory, you can extract its XML representation by using the XMLData property without streaming out the data. The next example puts this technique into practice.

http://etutorials.org/Programming/mastering+delphi+7/Part+III+Delphi+Database-Oriented+Architectures/Chapter+13+Delphi+s+Database+Architecture/MyBase+Stand-alone+ClientDataSet/

NOTE: TEST FILES TAKEN FROM /Borland Delphi/2002-7/Install/program files/Borland/Delphi7/Demos/DbClx/frames/ DIRECTORY OF AN INSTALLATION OF BORLAND DELPHI 7.
