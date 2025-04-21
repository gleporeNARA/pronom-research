4.2 Keymap files
Keymap files are used to define the keyboard layout, defining which key (or combination of keys) must be mapped to each keysym.

In other words, the keyboard emulation works like this: whenever the user presses or releases a key while the emulation window has the input focus, the emulator receives an X-Window event with a value that identifies that key. That value is called a keysym and is unique to that key. The emulator then looks up that keysym in an internal table that tells it which key(s) to press or release on the emulated keyboard.

This table is described by the keymap file, which is made up of lines like the following:

KEYSYM ROW COLUMN SHIFTFLAG
Where:

KEYSYM is a string identifying the keysym: you can use the xev utility (shipped with the X Window system) to see what keysym is bound to any key;
ROW and COLUMN identify the key on the emulated keyboard;
SHIFTFLAG can have one of the following values:
0: the key is never shifted;
1: the key is shifted;
2: the key is the left shift;
4: the key is the right shift;
8: the key can be (optionally) shifted by the user.
The SHIFTFLAG is useful if you want certain keys to be "artificially" shifted by the emulator, and not by the user. For example, F2 is shifted on the C64 keyboard, but you might want it to be mapped to the unshifted F2 key on the PC keyboard. To do so, you just have to use a line like the following:

F2 0 4 1
where 0 and 4 identify the key (row 0, column 4 on the keyboard matrix), and 1 specifies that every time the user presses F2 the shift key on the C64 keyboard must be pressed.

There are also some special commands you can put into the keyboard file; they are recognized because they start with an exclamation mark:

!CLEAR clears the currently loaded keyboard map; it is necessary to put this at the beginning of the file if you want the keymap file to override all of the current internal settings;
!LSHIFT, !RSHIFT, followed by a row and a column value, specify where the left and right shift keys are located on the emulated keyboard; for example, C64 default keymaps will specify
!LSHIFT 1 7
!RSHIFT 6 4
Any line starting with the # sign, instead, is completely ignored. This is useful for adding comments within the keymap file.

VICE keymap files have the `.vkm' default extension, and every emulator comes with a default positional mapping and a default symbolic mapping.


https://web.archive.org/web/20130901032540/http://www.viceteam.org:80/vice_4.html
