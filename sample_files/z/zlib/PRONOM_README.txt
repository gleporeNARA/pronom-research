NOTE FROM GL: this one might be a bit too simple to catch only the zlib compresssed data, however, I believe it's an accurate signature. I've run it against my collections and did not find any definite false positives.



"Let me share some more info on ZLIB compressed data. Compressing data with ZLIB is called deflating, and the algorithm is called DEFLATE.
When I compress the text "Hello, Hello, Hello, Hello" with Python's ZLIB module, I obtain the following binary data (represented in hexadecimal): 789cf348cdc9c9d751f0c0a400745608b5.
...
This data is structured according to RFC 1950: the first byte (0x78 in this example) if known as CMF (Compression Method and Flags). This byte is very often equal to 0x78. The 4 least significant bits identify the compression method (8 is DEFLATE and 15 is reserved), the 4 most significant bits are used to encode the size of the window when the compression method is 8. This value is often 7 (32K window size).
0x78 is a lowercase letter x, so easy to recognize in an ASCII dump. So, if you encounter some high entropy data that starts with x (0x78), it might be ZLIB compressed data according to RFC 1950.
If you see a byte sequence starting with 7801, 789C or 78DA, your best chance is to first to try to decompress it with ZlibD."


https://isc.sans.edu/forums/diary/Recognizing+ZLIB+Compression/25182/
