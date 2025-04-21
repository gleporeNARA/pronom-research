Altium Limited (formerly known as Protel Systems until 2001) is a publicly traded software company that provides PC-based electronics design software for engineers who design printed circuit boards. Founded as Protel Systems Pty Ltd in Australia in 1985,[2] the company has regional headquarters in the United States, Australia, China, Europe, and Japan. Its products are designed for use in a Microsoft Windows environment and used in industries such as automotive, aerospace, defense, and telecommunications. Its flagship product, Altium Designer, is a software for unified electronics design.

https://en.wikipedia.org/wiki/Altium

Altium Designer is a PCB and electronic design automation software package for printed circuit boards. It is developed by Australian software company Altium Limited.

https://en.wikipedia.org/wiki/Altium_Designer

The configuration file set
The main configuration files for software extensions are resources files, installation files and tool location files. Which files are included in an extension project will depend on its capabilities and how the extension interfaces with Altium Designer.

Extension configuration files
Resources file (.rcs)
Installation file (.ins)

The structure of an Installation file
When building an editor, the types of documents and resources need to be specified (for example the Schematic Editor has two document types - the schematic sheets and schematic libraries). The installation file is one of the places that can define the document kinds. The system's text-based configuration files specify the document type association to the document extension so the DXP application knows which server to invoke when a specific document type is being generated and opened.

To do this, the system FileFilters and FileExtensions text files need to be updated to specify the document type associated with the document extension. See the SDK's GraphicViewer example project for an application of file filters.

A skeleton Installation file:

ClientInsFile 1.0

https://www.altium.com/documentation/altium-dxp-developer/server-configuration-files#!the-structure-of-an-installation-file
