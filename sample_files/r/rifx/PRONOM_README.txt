A Tour of the Adobe Director File Format
A Macromedia Director 5 Movie, displayed in a hex editor.
A Macromedia Director 5 Movie, displayed in a hex editor. You’ll learn all about the chunks visible here!
Anthony Kleine, known online as Tomysshadow, has amassed expert-level knowledge of the Adobe/Macromedia Director Movie file format. In our recent text conversation, he gave me a great rundown of this knowledge. Because the details were so fascinating to me, I decided to condense and edit his messages into a set of “lecture notes.” And if you’d like to delve into more of the details, I’ve provided helpful links at the end of the article. The Director file format can feel dizzying in complexity, but this article is the best place to begin. So let’s get started!

Introduction
The first thing is to just ignore Shockwave Movies (.DCR files) for the time being and focus on Director Movies (.DIR) since you need to understand Director Movies before you can understand the Shockwave Movie format.
Director Movie Files use a RIFX container. This format has a long history, beginning as the default multimedia format of Windows 3.1. If you’ve looked at a lot of archive formats before this is likely par for the course for you. The file consists of Chunks, each beginning with a ChunkID (taking the form of a FourCC.) It’s similar to a RIFF container, like what WAV uses, except that RIFX containers can either be little or big endian. If the file is big-endian, it will begin with the ID RIFX. If it’s little-endian, it will begin with the ID XFIR. Whether the file is little or big endian depends on the processor of the computer that saved the file, but Director is always capable of opening files of either endianness. All Director versions before 11 were not designed for Intel Macs and that’s why they save big-endian files.

For the purposes of learning the format, it can be easier to inspect big-endian files since that way, not everything will be backwards and you can acquaint yourself with the format better. However, since Windows uses an Intel processor it will save little-endian files, so you may want to search around for a game made on the Mac for some files that will be easier on the eyes. Note that saving one of these files on Windows with a tool like dirOpener or Movie Restorer will swap the file’s endianness.

The Structure
Alright, so let’s actually talk about the format structure.
The first thing in the file is its ID (RIFX or XFIR) followed by the length of the container as an INT32. Then we have the codec (in the case of most Director movies, this is MV93, which is short for Movie 1993, the year of the specification.)

https://nosamu.medium.com/a-tour-of-the-adobe-director-file-format-e375d1e063c0

Basic Description
RIFFs are capable of holding various types of data. The file extension for RIFFs is dependent on its content.
Examples are:
ANI for animated cursors
AVI for videos
BND file bundles
DXR Macromedia Director Files (notice: Network byte order!)
PAL for color palette information
RDI for bitmaps
RMI for MIDI
WAV for digital audio
 
 
 
Basic File Format
The price for the flexibility of holding different types of data is a file structure, that isn't easy to understand. A RIFF is - more or less - a hierarchical structure. The 'directory entries' are defined by chunks. Every chunk contains either data or a list of chunks. This document will occasionally refer to the analogy of a file system, every chunk is either a file or a subdirectory. All chunks have the same structure:
Name	Size	Description
ID	4 byte	four ASCII character identifier, padded with ASCII 32 (space) if less than 4 characters
Size	4 byte	size of Data
Data	Size bytes	the 'payload'
unused 1 byte present, if size is odd
 
 
 
Structure of the 'RIFF', 'RIFX', and 'LIST' chunks
The first chunk is the root entry and must have a ID of 'RIFF' or 'RIFX', the prior being the most common version. 'RIFX' specifies 'Motorola' byte order (most significant byte first), whereas 'RIFF' specifies 'Intel' byte ordering (least significant byte first). This document will stick to 'RIFF'. That first chunk contains all other chunks of the file in its Data. Its Size field will therefore always contain a value of filesize - 8.
The structure of Data is dependent on its ID. There are two directory- IDs, 'RIFF' and 'LIST'. They contain a 4-byte ASCII header, leaving the following structure:
Name	Size	Description
ID	4 byte	four ASCII character identifier
Size	4 byte	size of Data
Data	Size bytes	the 'payload'
HeaderID	4 bytes	'Name' of the list
Data Size	4 bytes	List of chunks
There will never be a final extra byte, since the Size will always be even. The HeaderID in the RIFF chunk usually matches the file's extension.

https://www.daubnet.com/en/file-format-riff


NOTE: X-FMT/341 NEEDS TO HAVE PRIORITY OVER THIS FORMAT.
