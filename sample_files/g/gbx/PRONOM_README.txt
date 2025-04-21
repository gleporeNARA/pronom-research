TrackMania .gbx files (GameBox) are generic container files that can contain everything from configuration to textures to track definitions. They consist of a header, a reference table and the body.

In old versions of TrackMania they used to be text files – nowadays they are binary files. Integers are stored in little-endian order. 

Header
The header contains things like compression information and the class ID of the main class instance. The current version of the header also provides a few chunks of the main class that serve as meta information (e.g. the thumbnail of a challenge).

byte[3] magic: "GBX"
uint16 version: currently 6
if version >= 3:
byte format: 'B' or 'T': Binary or Text (always B for version 6 gbx files)
byte compression: 'U' or 'C': Uncompressed or Compressed reference table (unused, always U)
byte compression: 'U' or 'C': Uncompressed or Compressed body (typically C for binary files)

https://wiki.xaseco.org/wiki/GBX#Header
