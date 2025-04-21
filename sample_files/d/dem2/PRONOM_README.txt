DEM Format

DEM (short for demo) is the Source demo file format. Used in conjunction with the Source recorder to record demos, which contain recorded events that can be edited and played back in-game. Demos can be edited to change camera angles, speed up, slow down, play music, and other functions.

Note.png Note: 	There are currently no tools available for editing demos after they are recorded.
For the purpose of this we will be referring to each collection of events as a frame. This may or may not add up to the number of frames given by the header.

Contents
1	Demo Header
2	Frame
2.1	Network Protocols 7 and 8
2.2	Network Protocols 14 and 15
2.3	Network Protocols 36 and Higher
2.4	dem_stop
2.5	dem_consolecmd, dem_datatables, dem_usercmd, dem_stringtables
2.6	dem_synctick, dem_signon, dem_packet
3	Standard Data "Packet"
4	Frame Format
5	Example of use
6	See Also
Demo Header
Type	Field	Value
String	Header	8 characters, should be "HL2DEMO"+NULL


https://developer.valvesoftware.com/wiki/DEM_Format

https://www.wikidata.org/wiki/Q105855748
