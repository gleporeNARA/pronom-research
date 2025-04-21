ERF
EDIT
This article is about the file format; for the file extension, see .erf.
ERF is an acronym for encapsulated resource file, a BioWare file type containing multiple game resources. This is a container file format, similar to RAR, TAR, or ZIP, without compression. Neverwinter Nights files that use the ERF format include imports/exports to/from the Toolset (.erf), hak paks (.hak), modules (.mod), and BioWare modules (.nwm).

External links
ERF file format @ BioWare

https://nwn.fandom.com/wiki/ERF

The Encapsulated Resource File Format (ERF)

Intended Audience: For Developers
By Sydney Tang

The Encapsulated Resource File (ERF) format is one of BioWare's methods of packing multiple files into a single file so that they may be treated as a single unit. In this regard, it is similar to .zip, .tar, or .rar.

BioWare Aurora Engine/Toolset files that use the ERF format include the following: .erf, .hak, .mod, and .nwm.

NOTICE: This documentation provides information about specific file formats used with the BioWare Aurora Engine. It is intended for the use of software developers to create third-party software to work with the BioWare Aurora Engine and the BioWare Aurora Toolset. While this documentation is provided as a service, we may or may not provide updates, fixes and additions to the information provided herein. We reserve the right to change file formats without updating the documentation. Please refer to the For Developers FAQ and the NWN End User License Agreement (EULA) for more information.
Contents:

Global ERF Structure and Header Format

https://web.archive.org/web/20070320030608/http://nwn.bioware.com/developers/erf.html

ERF Header format

FileType	4 char	"ERF ", "MOD ", "SAV ", "HAK " as appropriate
Version	4 char	"V1.0"

https://web.archive.org/web/20070320030452/http://nwn.bioware.com/developers/erf1.html
