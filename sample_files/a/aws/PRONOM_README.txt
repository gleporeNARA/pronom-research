Advance Wars[a] is a turn-based strategy video game developed for the Game Boy Advance by Intelligent Systems and published by Nintendo. It was released in North America on September 10, 2001.[1] The game's release in Japan and Europe was delayed, supposedly due to the September 11 attacks in the United States. Although the game was released in Europe in January 2002, neither GBA title was released in Japan until the Game Boy Wars Advance 1+2 compilation in 2004. Advance Wars has been released for the Wii U Virtual Console simultaneously in Europe and North America on April 3, 2014.

Advance Wars is the first game in the Advance Wars series of video games, followed by Advance Wars 2: Black Hole Rising (also for the Game Boy Advance), and then by Advance Wars: Dual Strike and Advance Wars: Days of Ruin for the Nintendo DS. These games form a sub-series of the Wars series set of games. At E3 2021, Nintendo announced that the original Advance Wars, alongside its sequel Black Hole Rising, will be remade and released together for the Nintendo Switch in another compilation titled Advance Wars 1+2: Re-Boot Camp.

The game was not originally intended for release outside Japan, like the previous entries in the series, which were released in Japan only due to Nintendo feeling that Western consumers would not be interested in turn-based games because of their complex mechanics. In order to alleviate this, the developers made the mechanics of Advance Wars easy to understand, adding in an in-depth tutorial that did not require players to read the manual. Designer Kentaro Nishimura commented that the game's success shifted Nintendo's attitude over Western tastes, and that same success is frequently credited as a driving force for Nintendo bringing another Intelligent Systems franchise, Fire Emblem, outside of Japan beginning with the seventh installment.

The story takes place on a fictional continent, where two nations, Orange Star and Blue Moon, have been fighting each other for years. The conflict enters a new stage when an Orange Star commanding officer named Andy is accused of attacking the armies of two other nations, Yellow Comet and Green Earth, without reason, resulting in a worldwide war. The game was released to critical acclaim and has been listed among the greatest video games of all time.

https://en.wikipedia.org/wiki/Advance_Wars


AW Map Editor file format specifications.
 - by João Pedro S. Francese (Roma_emu) [joaofrancese@gmail.com]
 - last updated on February 04, 2008

Please inform me before using this file format in your project - but please DO use it,
if it involves AW maps! A standard file format is good for everyone, because it makes sure
the files are compatible between different programs. If you use it, please credit Kamek
(the file format's creator) and me (the map editor's creator) somewhere. :)
Personally I would prefer if you didn't try to make another editor...
But it's not really up to me, is it?

Note: The latest editor, as of today, is the AW Series Map Editor version 1.0.
Version 2.0 is planned, which will include Advance Wars: Days of Ruin units and terrains.
I also plan to introduce some form of compression (such as run-length encoding) and/or a change
from unit 2D arrays to a list of units, so the file size is reduced. The file extension will be
kept as .aws, so make sure your program checks the header for the appropriate version before
trying to parse the file, instead of checking just the extension.

The latest editor version can always be found at http://mapeditor.hopto.org.

-----------------

.awm/.aw2/.awd/.aws(v1) format specifications:

First, the header, with 10 bytes. It consists of the map editor version (6 bytes),
then the format version number (3 bytes), then a blank byte. Map editor version:
'AWMap ' (AW1 Map Editor), 'AW2Map' (AW2 Map Editor), 'AWDMap' (AWDS Map Editor),
'AWSMap' (AWS Map Editor). The only format version number used for these is '001'.



https://gist.github.com/max-m/4189235
