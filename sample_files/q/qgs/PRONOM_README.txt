28.3.1. QGS/QGZ - The QGIS Project File Format
The QGS format is an XML format for storing QGIS projects. The QGZ format is a compressed (zip) archive containing a QGS file and a QGD file. The QGD file is the associated sqlite database of the qgis project that contain auxiliary data for the project. If there are no auxiliary data, the QGD file will be empty.

A QGIS file contains everything that is needed for storing a QGIS project, including:

project title

project CRS

the layer tree

snapping settings

relations

the map canvas extent

project models

legend

mapview docks (2D and 3D)

the layers with links to the underlying datasets (data sources) and other layer properties including extent, SRS, joins, styles, renderer, blend mode, opacity and more.

project properties

The figures below show the top level tags in a QGS file and the expanded ProjectLayers tag.

https://docs.qgis.org/3.16/en/docs/user_manual/appendices/qgis_file_formats.html#qgisprojectfile
