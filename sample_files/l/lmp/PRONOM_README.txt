1. Introduction
A DOOM lmp file records all player actions. The monster movements, respawn positions etc. are totally deterministic. The messages during a multiplayer game (chat mode) do not appear in the lmp.

A lmp file consists of a header, a data area and a quit byte.

The header contains the skill, episode, start map, number of players etc.
The data area is divided in game tics. For each player there are four movement bytes per game tic.
Each lmp should end with a quit byte (80h).

From Version 1.4 on the header consists of 13 bytes:

Byte  Type Contents
0000h Byte version (104d=68h DOOM 1.4, 105d=69h DOOM 1.5, 106d=6Ah DOOM 1.6)
0001h Byte skill   (0-4)
0002h Byte episode (1-3)
0003h Byte map     (1-9)
0004h Byte multiplayer rule (0: Cooperative, 1: DeathMatch, 2: AltDeath)
0005h Byte respawn    0: off, !=0: on \  a value != 0 is the number of
0006h Byte fast       0: off, !=0: on  > this command line parameter
0007h Byte nomonsters 0: off, !=0: on /  (with expanded @paramfile)
0008h Byte the lmp is recorded from this player's view (0-3)
0009h Byte 0/1     (green player)  \  
000Ah Byte 0/1     (indigo player)  \ 0: this player doesnt play 
000Bh Byte 0/1     (brown player)   / 1: this player plays
000Ch Byte 0/1     (red player)    /
The number of bytes (9-C) unequal to zero is the number of players.

dechexgame(s)1040x68DOOM 1.4beta1050x69DOOM 1.5beta1060x6ADOOM 1.6beta, DOOM 1.666and DOOM ][ 1.6661070x6BDOOM ][ 1.7 and DOOM ][ 1.7a1080x6CDOOM 1.8 and DOOM ][ 1.81090x6D(Ultimate) DOOM 1.9 andDOOM ][ 1.91100x6EPublished DOOM sourc

https://studylib.net/doc/8138514/

https://www.gamers.org/docs/FAQ/lmp.faq.html
