Zstandard, or zstd as short version, is a fast lossless compression algorithm, targeting real-time compression scenarios at zlib-level and better compression ratios. It's backed by a very fast entropy stage, provided by Huff0 and FSE library.

The project is provided as an open-source dual BSD and GPLv2 licensed C library, and a command line utility producing and decoding .zst, .gz, .xz and .lz4 files. Should your project require another programming language, a list of known ports and bindings is provided on Zstandard homepage.

https://github.com/facebook/zstd/tree/master

Zstandard (or zstd) is a lossless data compression algorithm developed by Yann Collet at Facebook. Zstd is the reference implementation in C. Version 1 of this implementation was released as free software on 31 August 2016.[3][4]

Features
Zstandard was designed to give a compression ratio comparable to that of the DEFLATE algorithm (developed in 1991 and used in the original ZIP and gzip programs), but faster, especially for decompression. It is tunable with compression levels ranging from negative 5 (fastest)[5] to 22 (slowest in compression speed, but best compression ratio).

The zstd package includes parallel (multi-threaded) implementations of both compression and decompression[citation needed]. Starting from version 1.3.2 (October 2017), zstd optionally implements very long range search and deduplication (--long, 128 MiB window) similar to rzip or lrzip.[6]

Compression speed can vary by a factor of 20 or more between the fastest and slowest levels, while decompression is uniformly fast, varying by less than 20% between the fastest and slowest levels.[7] Zstandard command-line has an "adaptive" (--adapt) mode that varies compression level depending on I/O conditions, mainly how fast it can write the output.

Zstd at its maximum compression level gives a compression ratio close to lzma, lzham, and ppmx, and performs better than lza, or bzip2.[8][9] Zstandard reaches the current Pareto frontier, as it decompresses faster than any other currently-available algorithm with similar or better compression ratio.[10][11]

Dictionaries can have a large impact on the compression ratio of small files, so Zstandard can use a user-provided compression dictionary. It also offers a training mode, able to generate a dictionary from a set of samples.[12][13] In particular, one dictionary can be loaded to process large sets of files with redundancy between files, but not necessarily within each file, e.g., log files.

https://en.wikipedia.org/wiki/Zstandard
