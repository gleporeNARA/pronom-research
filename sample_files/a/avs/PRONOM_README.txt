Advanced Visualization Studio (AVS), is a music visualization plugin for Winamp. It was designed by Winamp creator, Justin Frankel and was first shipped in version 2.0a4 with Winamp 2.61. AVS has a customizable design which allows users to create their own visualization effects, or "presets". AVS was made open source software in May 2005, released under a BSD-style license. AVS is currently at version 2.83 and is included with Winamp, though the distributed version has later been reverted[1] due to compatibility issues. Winamp currently ships with version 2.82 for Windows Vista (and later) and 2.81d for older Windows versions.

https://en.wikipedia.org/wiki/Advanced_Visualization_Studio


I was checking the AVS cpp code to see how the files are read/written. Here is what i've understood so far, if its of any help to anyone. Will need more help from someone with better understanding of the code.

The basic preset reading starts at __LoadPreset method in r_list.cpp. From there it goes on to read a root effectlist, and subsequently all the effects in the preset,

The basic structure is something like this:
AVS Signature string - "Nullsoft AVS Preset 0.2\x1a"
Root Effectlist Config - Effectlist config contains the following
mode (1 BYTE + 1 optional INT depending on the value of the first byte) - Not exactly sure how this is used. but i think it determines how some of the effectlist settings are read.
several INT values containing effect list settings. These i think are optional depending on the mode
config data for all sub effects

http://forums.winamp.com/showthread.php?t=364566
