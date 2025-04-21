GR2 files contain 3D models and skeletons stored in the proprietary Granny3D format. They consist of a physical (data storage) and logical (animated 3D model resources) layer.

Granny Header Structure
While the header clearly allows for flexible structures, in Ragnarok's GR2 files the size is fixed:

Field	Offset	Size	Type	Description and notes
Signature	0	16 Bytes	binary	Always B8 67 B0 CA F8 6D B1 0F 84 72 8C 7E 5E 19 00 1E

https://github.com/rdw-archive/RagnarokFileFormats/blob/master/GR2.MD
