
This is where the IDX file comes in – it tells us where each object begins.

IDX files
While it’s possible to to work around the aforementioned buffering issues and parse a packfile without ever reading the IDX file, the index makes it a lot easier. Like the packfile, a version 2 index file starts with a header, though the index file header is only eight bytes instead of 12. The first four bytes are always 255, 116, 79, 99, which are chosen because the first version of the index file did not have any header information, and these four bytes would be an invalid start to a version 1 index file. The next four bytes denote the version number explicitly – in our case, version 2.

https://git-scm.com/docs/pack-format
