Overview
zsync is a file transfer program. It allows you to download a file from a remote server, where you have a copy of an older version of the file on your computer already. zsync downloads only the new parts of the file. It uses the same algorithm as rsync. However, where rsync is designed for synchronising data from one computer to another within an organisation, zsync is designed for file distribution, with one file on a server to be distributed to thousands of downloaders. zsync requires no special server software — just a web server to host the files — and imposes no extra load on the server, making it ideal for large scale file distribution.

Single meta-file — zsync downloads are offered by building a .zsync file, which contains the meta-data needed by zsync. This file contains the precalculated checksums for the rsync algorithm; it is generated on the server, once, and is then used by any number of downloaders.

http://zsync.moria.org.uk/
