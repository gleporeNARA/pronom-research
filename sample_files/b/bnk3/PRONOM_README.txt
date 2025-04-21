Wwise (Wave Works Interactive Sound Engine) is Audiokinetic's software for interactive media and video games, available for free to non-commercial users[2][3] and under license for commercial video game developers. It features an audio authoring tool and a cross-platform sound engine.[4]

https://en.wikipedia.org/wiki/Audiokinetic_Wwise

Wwise SoundBank (*.bnk)
On this page you can find a file format specification of the .bnk SoundBank files used by Wwise.

SoundBanks by Wwise can be used to have a great deal of control over the soundtrack of a game, including the sound effects and the score. SoundBanks contain the individual audio files as well as containers to group the files, e.g. a gun shot container that plays a random gun shot sound. Also, SoundBanks contain events which can play or pause containers or audio files. Events are the only type of object that is visible outside the SoundBanks, and developers can access these events from the game code. For example, during a very emotional scene they could call a Play_EmotionalTheme event, which will play an emotional piece, as defined by the sound designer.

Each Wwise project contains an initialization SoundBank, Init.bnk. This SoundBank contains the project settings and is loaded first. The other SoundBanks contain sounds for different parts of the game (e.g. one SoundBank for each area or level). They are loaded into memory whenever the player has reached that part of the game.

The sound files are stored via a custom Wwise encoding and have the file extension .wem (before 2011, the Wwise extension was called .wav). For converting these files to .ogg files, I recommend the command-line utility ww2ogg by Halley's Comet Software (hcs) -- see hcs64.com/vgm_ripping.html. Depending on the game, some files are not embedded in the SoundBanks but are streamed. In this case, look in the game archive for .wem files.

BKHD section
The BKHD section (Bank Header) contains the version number and the SoundBank id.

42 4B 48 44 -- BKHD

https://wiki.xentax.com/index.php/Wwise_SoundBank_(*.bnk)
