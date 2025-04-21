The Spatial Data File (SDF) is a single-user geodatabase file format developed by Autodesk. The file format is the native spatial data storage format for Autodesk GIS programs MapGuide and AutoCAD Map 3D. As of 2014 SDF format version SDF3 (based on SQLite3) uses a single file. Prior versions of the format required a spatial index file (SIF), with an optional key index file (KIF) to speed access to the file.

https://en.wikipedia.org/wiki/Spatial_Data_File


SDF data is two-dimensional (2D), and SDF files store both geometry and attributions. A logical SDF dataset consists of one or more files in the same folder with the extension .sdf – this extension is added to the basename of the SDF files. Each .sdf file is also paired with its spatial index file, which has the extension .sif. The paired .sif file is required in order to use its .sdf file for processing. An optional key index file (.kif) may also be created and is used by MapGuide to speed access to the file.

https://docs.safe.com/fme/html/FME_Desktop_Documentation/FME_ReadersWriters/sdf/sdf.htm
