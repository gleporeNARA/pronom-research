CRYENGINE uses many different asset types to deal with the complexity of simulating the real world as realistically as possible. Some of the most common asset types used in CRYENGINE are .cgf (Crytek Geometry Format), .mtl (Material) and .dds (Directdraw Surface) textures, however most users will mainly interact with the .cgf standard geometry format and will have to assign materials.

.mtl (Material) - .mtl files are created within the Material Editor in the Sandbox and material description (internally an .xml file). They contain settings for shaders, surface types, and references to textures. A .mtl file is a text file which holds all the information for the in-game material library. The material library is a collection of sub materials which can be assigned to each face/polygon of a geometry. You can for example have different surfaces such as metal, plastic, human skin within different IDs of the asset. Each of these sub materials can use different shaders and textures.

https://docs.cryengine.com/display/CEMANUAL/Asset+Types



https://www.wikidata.org/wiki/Q105863962
