The archive format
In the repo section, the concept of objects was introduced, where file/content objects are checksummed and managed individually. (Unlike a package system, which operates on compressed aggregates).

The archive format simply gzip-compresses each content object. Metadata objects are stored uncompressed. This means that it’s easy to serve via static HTTP. Note: the repo config file still uses the historical term archive-z2 as mode. But this essentially indicates the modern archive format.

When you commit new content, you will see new .filez files appearing in objects/.

https://ostreedev.github.io/ostree/formats/

debuginfod supports a few archive formats. It would be nice to support ostree
archive files too. ostree is used by a few 

They have the .filez extension and have the following format: (I don't think it
is documented, but it is stable and can be seen in the code
https://github.com/ostreedev/ostree/blob/main/src/libostree/ostree-core.c#L475)

4 bytes header length (big endian)
4 bytes padding
header
content (deflate compressed without the zlib header)

So one should be able to read the header length, skip the padding and header
and read (and decompress) the contents.

https://www.mail-archive.com/elfutils-devel@sourceware.org/msg03779.html
