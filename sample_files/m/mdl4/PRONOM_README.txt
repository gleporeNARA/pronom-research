Very little information is publicly available. Here's the little I've found:

MDL and SLX are MathWorks proprietary file formats for storing Simulink models. SLX was introduced in Simulink R2012a and made the default file format in R2012b. Besides the file structure, the content of SLX and MDL files are very similar. For example, key-value pairs appear to be the same between the two formats. People often say that parsing these files is a bad idea because they can change between Simulink versions (see e.g. am304 and my comments above), but I have not seen much evidence of this.

The MDL format seems to have been developed in-house at MathWorks. There seems to have been an MDL parser for python, but it was of limited functionality, and the website is down as of May 2014.

https://stackoverflow.com/questions/23408186/information-about-simulink-mdl-and-slx-formats

What is an MDL file?
An MDL file is a simulation model created using Simulink, a simulation and model-based design application. It contains the block diagram and block properties of a simulation.

More Information
MDL files are saved in a plain text format and typically include a list of objects. Each object contains a set of properties and values that are delimited by line breaks.

NOTE: The MDL format was replaced by the .SLX model format with the release of Simulink 2012.

How do I open an MDL file?
You can open an MDL file in MathWorks Simulink. If you do not have MathWorks Simulink, you can open an MDL file using any text editor, including:

https://fileinfo.com/extension/mdl
