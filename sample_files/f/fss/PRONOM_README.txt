Openglad
========

Openglad is a port of the open-sourced dos game known as Gladiator
(http://fsgames.com/glad/). It is a top-view gauntlet style RPG that
features fast paced multiplayer action, several different classes, and
a scenario editor.

	// Format of a scenario object list file version 2 is:
	// 3-byte header: 'FSS'
	// 1-byte version #
	// ----- (above is already determined by now)
	// 8-byte string = grid name to load
	// 2-bytes (short) = total objects to follow
	// List of n objects, each of 7-bytes of form:
	// 1-byte ORDER
	// 1-byte FAMILY
	// 2-byte short xpos
	// 2-byte short ypos
	// 1-byte TEAM
	// 1-byte facing
	// 1-byte command
	// ---
	// 11 bytes reserved
	
	https://github.com/openglad/openglad/blob/a4d41c0cf99e33550c2501d8ec7669898ff67f5b/src/level_data.cpp
