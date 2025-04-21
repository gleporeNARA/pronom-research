Bob's Adlib Music
File Format
Name	Bob's Adlib Music
Ontology	
Electronic File Formats
Audio and Music
Bob's Adlib Music
Extension(s)	.bamBob's Adlib Music is a FM music format used in OHRRPGCE.
Contents [hide] 
1 Identification
2 Software
3 Sample files
4 External links
Identification
This file starts with the four ASCII characters CBMF, which apparently stands for "Creative Bob's Music File".

Software
AdPlug / AdPlay
Sample files
https://telparia.com/fileFormatSamples/music/bobsAdLib/
External links
Specification in OHRRPGCE wiki

http://fileformats.archiveteam.org/wiki/Bob%27s_Adlib_Music

BAM Format
Jump to navigationJump to search
Bam.pngBAM format is no longer the preferred music format. BAM is still supported, but MIDI is a better choice
Inside RPG files, .BAM songs 0-99 are lumps gamename.##, where the extension is not padded with zeroes, and songs 100+ are song###.bam.

They are potentially the most complicated files (outside of .HS Files/.HSX Lumps). They are a series of commands that describe music. Here is the official Bam specification:



Contents
1	BAM Specification
1.1	BAM Header
1.2	Byte Commands
1.2.1	0 Stop-song
1.2.2	1-15 Reserved
1.2.3	16-31 (16+voice) Start-note
1.2.4	32-47 (32+voice) Stop-note
1.2.5	48-63 (48+voice) Define-instrument
1.2.6	64-79 Reserved
1.2.7	80-95 (80+label) Set-Label
1.2.8	96-111 (96+label) Jump
1.2.9	112 End-of-chorus
1.2.10	113-127 Reserved
1.2.11	128-255 (127+time) Wait
1.2.12	(End-of-file) Stop-song
2	SBI Format
3	IBK Format
4	See Also
BAM Specification
2001/08/29 - Draft 3 - James Paige

BAM (Bob's Adlib Music) is a format for synthetic music created by BriTech International/Hamster Republic Productions. The format is designed to make good use of the FM synthesis chip in your sound card (also known as the "Adlib Chip"). All BAMs are played in "Melodic" mode, as opposed to "Percussion" mode. Sadly, now that Wavetable synthesis is standard, FM is rather obsolete.

BAM Header
Every BAM file starts with a 4 byte header CBMF (67,66,77,70). This header can be used to tell the difference between a real BAM file, and some other type of file that just happens to have a .BAM extension. As a point of trivia, CBMF stands for Creative Bob's Music File. The "Creative" is because the header for a .VOC file also starts with a C that stands for "creative". Had we known this was the company's name (Creative Labs) and not just a flattering adjective, we would have chosen another letter. Oh well. Fans of the format can pretend it means "Cool" and detractors can pretend it stands for "Crappy"

What follows after the header is a chain of sequential commands. A command is one byte, and may be followed by several more bytes of data, as required by the command. All of the voice commands leave room for 16 voices even though only 9 voices are supported in all current implementations of BAM at the time of this writing. A BAM playing program or library should gracefully ignore the last 7 voices if it isn't capable of playing them. BAM creating programs that support more than 9 voices should always use the lower numbered voices first.

Voices are numbered 0-8 (or 0-15 in an extended implementation)

https://rpg.hamsterrepublic.com/ohrrpgce/BAM_Format
