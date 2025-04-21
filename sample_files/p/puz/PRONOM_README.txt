Introduction
PUZ is a file format commonly used by commercial software for crossword puzzles. There is, to our knowledge, no documentation of the format available online. This page (and the implementations) is the result of a bit of reverse engineering work.

The documentation is mostly complete. Implementations based on this documentation seem to support, for example, all (or the vast majority of) New York Times puzzles. The few remaining unknown pieces are noted.

We have no real financial interest in this; it was just a fun hack.

File Contents
The file is laid out like this: 1. a fixed-size header with information like the width and height of the puzzle 1. the puzzle solution and the current state of the cells, with size determined by the puzzle dimensions described in the previous section 1. a series of NUL-terminated variable-length strings with information like the author, copyright, the puzzle clues and a note about the puzzle. 1. optionally, a series of sections with additional information about the puzzle, like rebuses, circled squares, and timer data.

Header Format
Define a short to be a little-endian two byte integer. The file header is then described in the following table.

| Component | Offset | End | Length | Type | Description | |:--------------|:-----------|:--------|:-----------|:---------|:----------------| | Checksum | 0x00 | 0x01 | 0x2 | short | overall file checksum | | File Magic | 0x02 | 0x0D | 0xC | string | NUL-terminated constant string: 4143 524f 5353 2644 4f57 4e00 ("ACROSS&DOWN") |

https://code.google.com/archive/p/puz/wikis/FileFormat.wiki#:~:text=PUZ%20is%20a%20file%20format,commercial%20software%20for%20crossword%20puzzles.&text=Implementations%20based%20on%20this%20documentation,remaining%20unknown%20pieces%20are%20noted.
