1 Introduction
NVIDIA Material Definition Language (MDL) is a domain-specific language that describesthe appearance
of scene elements for a rendering process. MDL consists of a declarative component to describe materials
as well as a procedural programming language to customize image texture lookups and procedural textures
that provide the parametric input to the material declarations.
MDL is dedicated to providing an abstract material description that is well-defined and independent of
particular rendering systems. The material description is comprehensive and flexible, yet specifically
addresses modern renderers based on the simulation of physically based light transport. The declarative
nature of the material description makes it easy for a renderer to fully understand a material, yet — if
needed — to simplify and approximate the material to the best of the renderer’s capabilities. The procedural
programming language enables the aesthetic flexibility required by artists to design new materials.
Although it emphasizes physically plausible materials, MDL supports also traditional computer graphics
techniques that are important in conventional rendering and modeling workflows, such as normal mapping
and cut-outs.
MDL is designed for modern highly-parallel machine architectures. One important part is the declarative
nature of the material description. Another part is its procedural language, which is restricted to the
definition of pure functions, with access to the rendering state, that are free of side effects and global
dependencies. Material and function evaluations can thus be easily compiled and executed on modern
architectures.


23 Appendix B – MBSDF file format
The MBSDF file formatstoresthe data for a measurement of a bidirectional scattering distribution function
(BSDF). A BSDF consist of two parts: a bidirectional reflection distribution function (BRDF) and a
bidirectional transmission distribution function (BTDF). A measurement can contain either one or both.
This section documents version 1 of the MBSDF file format.
The filename extension is .mbsdf.
The file format starts with a file header and has one or two BSDF data blocks. The file header is readable
ASCII text while the BSDF data blocks are binary data after a text identifier. The BRDF data comes before
the BTDF data if both are present. The second block is directly appended to the first.
The basic entities to describe the format are the following types and their file storage size and description:
Type Bytes Storage
string variable string restricted to printable ASCII characters and terminated by ’\n’.
uint 4 binary storage of a 32-bit unsigned integer value in little-endian ordering
float 4 single-precision floating-point number as defined in IEEE-754 with binary
storage in little-endian ordering.
A type followed by an array-like brackets ’[]’ denote a sequence of zero or more occurrences of this type.
23.1 Header block
The header block starts with a magic identifier string including a version number followed by a sequence
of strings for meta-data.
Type Bytes Value Comment
string 20 NVIDIA ARC MBSDF V1\n magic identifier including file format version number, terminated by newline.

https://www.migenius.com/doc/realityserver/latest/resources/general/iray/mdl/specification/MDL_spec_1.2.2_28Apr2015.pdf
