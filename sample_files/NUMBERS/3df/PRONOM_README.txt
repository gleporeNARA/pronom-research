Glide is a 3D graphics API developed by 3dfx Interactive for their Voodoo Graphics 3D accelerator cards. Although it originally started as a proprietary API, it was later open sourced by 3dfx.[1] It was dedicated to rendering performance, supporting geometry and texture mapping primarily, in data formats identical to those used internally in their cards. Wide adoption of 3Dfx led to Glide being extensively used in the late 1990s,[citation needed] but further refinement of Microsoft's Direct3D and the appearance of full OpenGL implementations from other graphics card vendors, in addition to growing diversity in 3D hardware, eventually caused it to become superfluous.[citation needed]

https://en.wikipedia.org/wiki/Glide_(API)


3df File Format
Overview
A 3df file is a simple ASCII header followed by binary data. In this format specification, ANSI C printf formatting codes are used to specify the format of each of the ASCII header lines.

Header
A 3df file's header consists of a series of ASCII text strings, each of which are delimited by newline characters.

Magic cookie
Every 3df file starts with the ASCII string "3df v%d.%d", where the first and second integers represent the major and minor version numbers, respectively, of the 3df file format that the file complies with (eg "3df v1.0"). This value is known as a "magic cookie" since it is used by Glide™ and TexUS for validation.




https://users.cg.tuwien.ac.at/wimmer/view3dx/TEXUS.html
