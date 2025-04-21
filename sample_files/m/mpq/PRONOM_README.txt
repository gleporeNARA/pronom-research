MPQ (file format)
From HandWiki
NamespacesPageDiscussionPage actionsReadView source
MPQ
Filename extension	.mpq
Developed by	Mike O'Brien
MPQ (Mo'PaQ, short for Mike O'Brien Pack, named after its creator[1]), is an archiving file format used in several of Blizzard Entertainment's games.

MPQs used in Blizzard's games generally contain a game's data files, including graphics, sounds, and level data. The format's capabilities include compression, encryption, file segmentation, extensible file metadata, cryptographic signature and the ability to store multiple versions of the same file for internationalization, platform-specific differences and patching. MPQ archives can use a variety of compression algorithms which may also be combined.

https://handwiki.org/wiki/MPQ_(file_format)

MPQ File Header and MPQ User Data
Great majority of file format begins with a header and MPQ format is no exception. MPQ header (or MPQ user data header) must begin at a file offset aligned to 512 (0x200). While searching for MPQ header, if a MPQ User Data header is found instead of MPQ Header, the algorithm must add the MPQ Header offset to the current file offset and continue searching. Header type is recognized by 32-bit ID:

'MPQ\x1A' means there's MPQ header at that offset
'MPQ\x1B' means there's MPQ user data header at that offset

http://www.zezula.net/en/mpq/mpqformat.html
