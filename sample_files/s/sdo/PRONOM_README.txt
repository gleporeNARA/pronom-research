The Signum! file format (SDO)
The Signum! word processor was a text editing application from the german software publisher "Application Systems Heidelberg" (ASH), written for the ATARI ST. It was one of the most popular word processors available for that system. This document is as far as I know the only description of that file format that is available online.

All of the code snippets in this document are simplified pseudo-code, even though they are inspired by the nom parser-combinator library. For general information on Signum! documents, have a look at [this page]({{'documents' | relative_url }}).

The container
Every SDO file starts with the bytes 73 64 6f 63, that is sdoc in most ASCII-compatible encodings, including UTF-8 and the ATARI ST Character Set.

Following this is a sequence of sub-files, that is a 4 byte lowercase alphanumeric name, a 32bit big-endian length-specifier and then a binary section of that length. In pseudo-code, that is

tag("sdoc");
while len > 0 {
  key = take(4);
  len = be_u32();
  bytes = take(len);
}
The individual parts
The first section in all the files that I have available has the name 0001. I assume that is intended to be a file format version number at the same time.

The sections are:

Version 1 Header 0001
This section is mostly zeros, with the creation date at offset 72 ($48) and the modified date at offset 76 ($4c). Both are given as two WORDs (i.e. u16 / 2 bytes) representing date and time respectively, that have the same layout as returned by the GEMDOS functions Tgetdate and Tgettime.

https://github.com/Xiphoseer/sdo-tool/blob/dd35ca9fcbcf5ddc42e45051bc7de1c88d12573a/docs/formats/sdoc.md
