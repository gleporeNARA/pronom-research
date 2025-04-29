Here is some information about the .abr file structure:

- A brush file starts with a header: version (2-byte big-endian integer) followed by sub-version (2-byte big-endian integer).

- Atfer the header lies a sequence of sections organized by key: 'samp', 'patt' and 'desc' (I'm not sure if their order is fixed though).

Each of them follows the same structure:

   - Photoshop resource signature ('8BIM')

   - 4-character key ('samp' or 'patt' or 'desc')

   - length of data (4-byte big-endian integer)

   - data (variable size)

- The 'samp' section data (if not empty) represents a series of sampled brushes with unique identifiers (UUID) referenced in the descriptor.

- The 'patt' section data (if not empty) represents a series of patterns (used for textures) with unique identifiers (UUID) referenced in the descriptor.

- The 'desc' section data is a flatten descriptor which can be decoded using the fromStream method.

I already wrote a very simple script which uses this information, but unfortunately it doesn't parse what you are interested in, i.e. the brush previews...

<http://www.tonton-pixel.com/blog/wp-content/uploads/test-parse-abr-file.zip >

An old version of the "Adobe  Photoshop®6.0 File Formats Specification" document has a section about brushes:

<http://oldschoolprg.x10.mx/downloads/ps6ffspecsv2.pdf >

There is an open-source project called ABR Viewer:

<abrViewer.NET - Browse /abrViewer.NET_2.0/abrViewer.NET 2.0 at SourceForge.net >

which provides relevant information about the "8BIMsamp" section in the file "ScanningProcess.cs" inside the "abrViewerNET20_source.zip" archive.

Also, the "8BIMpatt" section data structure may be similar to the way patterns are stored at the beginning of a styles file.

See "Photoshop Styles File Format" in <http://www.tonton-pixel.com/blog/documentation/>

HTH...

https://community.adobe.com/t5/photoshop-ecosystem-discussions/reading-writing-and-previewing-abr-files-brushes-how/m-p/8536998
