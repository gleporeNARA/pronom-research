
What is BambooTracker

https://github.com/BambooTracker/BambooTracker.wiki.git
BambooTracker is a music tracker for the Yamaha YM2608 (OPNA) sound chip which was used in NEC PC-8801/9801 series computers.

YM2608 (OPNA)
YM2608 (OPNA) is a sound chip consisted of:

6 FM channels
3 SSG channels
6 rhythm sounds (bass drum, snare drum, hi-hat, cymbal, tom)
1 ADPCM channel
For details, refer to Sound Chip.

Tracker
A tracker is a form of composition tool. As in the list, events such as note-on are written in chronological order and moved from top to bottom for playback.

I will explain the structure of the song in this tracker.
One data (file) created by the tracker is called a module. The module has multiple songs, instruments, and settings common to each song.
In the song, each sound source channel is assigned to a track, and the track holds multiple patterns.
Patterns are played by registering them in the song order. Orders are listed and are played in order from the top.
The pattern has a structure in which the steps are arranged in chronological order. Note on / off and most events are described in steps.
A tick is the smallest execution unit, and 1 step = n ticks. Events that vary by count (effects such as vibrato) are based on ticks.

The tracker has a jam mode and an edit mode. In edit mode, you can edit orders and patterns. Instead of editing in jam mode, you can play like a simple synthesizer using the keyboard.

The module settings and song settings are in the Settings Field and Module Properties in the upper part of the tracker. The instrument settings are Instrument List and each instrument. In the setting dialog, edit the order in Order List and edit the events in the pattern in Pattern Editor. For more detailed explanation, please refer to the page of each element.


https://github.com/BambooTracker/BambooTracker/wiki/What-is-BambooTracker

BambooTracker Module File (.btm) Format Specification
v1.5.0 - 2020-04-28 (Modified descriptions: 2021-01-09)

All data are little endian.
Unless otherwise noted, character encoding of string is ASCII.
Header
Type	Field	Description
string (16 bytes)	File identifier	Format string, must be BambooTrackerMod.
uint32	EOF offset	Relative offset to end of file. i.e. File length - 18.
uint32	File version	Version number in BCD-Code. e.g. Version 1.3.0 is stored as 0x00010300.
Module Section
Type	Field	Description
string (8 bytes)	Section identifier	Must be MODULE .

https://github.com/BambooTracker/BambooTracker/blob/2ac8e4c9129c732d2b5d58411ea3c91970308e24/data/specs/mod_specs_v1.5.0.md
