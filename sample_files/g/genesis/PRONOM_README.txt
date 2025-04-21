The Sega Genesis, known as the Mega Drive[c] outside North America, is a 16-bit fourth-generation home video game console developed and sold by Sega. The Genesis was Sega's third console and the successor to the Master System. Sega released it in 1988 in Japan as the Mega Drive, and in 1989 in North America as the Genesis. In 1990, it was distributed as the Mega Drive by Virgin Mastertronic in Europe, Ozisoft in Australasia, and Tec Toy in Brazil. In South Korea, it was distributed by Samsung as the Super Gam*Boy and later the Super Aladdin Boy.[d] In Russia, it was distributed by Bitman.

Designed by an R&D team supervised by Hideki Sato and Masami Ishikawa, the Genesis was adapted from Sega's System 16 arcade board, centered on a Motorola 68000 processor as the CPU, a Zilog Z80 as a sound controller, and a video system supporting hardware sprites, tiles, and scrolling. It plays a library of more than 900 games on ROM-based cartridges. Several add-ons were released, including a Power Base Converter to play Master System games. It was released in several different versions, some created by third parties. Sega created two network services to support the Genesis: Sega Meganet and Sega Channel.

In Japan, the Mega Drive fared poorly against its two main competitors, Nintendo's Super Famicom and NEC's PC Engine, but it achieved considerable success in North America, Brazil, and Europe. Contributing to its success was its library of arcade game ports, the popularity of Sega's Sonic the Hedgehog series, several popular sports franchises, and aggressive youth marketing that positioned it as the cool console for adolescents. The North American release in 1991 of the Super Famicom, rebranded as the Super Nintendo Entertainment System, triggered a fierce battle for market share in the United States and Europe known as the "console war".[7][8] As this contest drew increasing attention to the video game industry among the general public, the Genesis and several of its highest-profile games attracted significant legal scrutiny on matters involving reverse engineering and video game violence. Controversy surrounding violent games such as Night Trap and Mortal Kombat led Sega to create the Videogame Rating Council, a predecessor to the Entertainment Software Rating Board.

30.75 million first-party Genesis units were sold worldwide. In addition, Tec Toy sold an estimated three million licensed variants in Brazil, Majesco projected it would sell 1.5 million licensed variants of the system in the United States, Bitman sold an unspecified amount in Russia (though outnumbered by counterfeit clones), and smaller numbers were sold by Samsung in South Korea. By the mid-2010s, licensed third-party Genesis rereleases were still being sold by AtGames in North America and Europe. Many games have been re-released in compilations or on online services such as the Nintendo Virtual Console, Xbox Live Arcade, PlayStation Network, and Steam. The Genesis was succeeded in 1994 by the Sega Saturn.

https://en.wikipedia.org/wiki/Sega_Genesis

ROM header reference
The ROM header comes after the 68000 vectors and spans the $100-$1FF range. The header includes some information such as the name of the game, or when it was released, or whether it can save, etc. Sometimes emulators may also read parts of the header looking for some information (e.g. what to put on the titlebar or what peripherals to emulate by default).

ROM header format
Address	Size	Description
$100	16 bytes	System type
$110	16 bytes	Copyright and release date
$120	48 bytes	Game title (domestic)
$150	48 bytes	Game title (overseas)
$180	14 bytes	Serial number
$18E	2 bytes	ROM checksum
$190	16 bytes	Device support
$1A0	8 bytes	ROM address range
$1A8	8 bytes	RAM address range
$1B0	12 bytes	Extra memory
$1BC	12 bytes	Modem support
$1C8	40 bytes	(reserved, fill with spaces)
$1F0	3 bytes	Region support
$1F3	13 bytes	(reserved, fill with spaces)
System type
What system the game is running on, padded with spaces. For the Mega Drive, it usually would be "SEGA MEGA DRIVE" or "SEGA GENESIS". Some flashcarts enable extra functionality if a specific text is found here.

Warning!
This is the only part of the header a console pays attention to. If it doesn't find the initial "SEGA" text in this field, systems with TMSS will refuse to boot the game.

All known system types so far:

List of system types
Value	Description
"SEGA MEGA DRIVE"	Mega Drive
"SEGA GENESIS"	Mega Drive
"SEGA 32X"	Mega Drive + 32X
"SEGA EVERDRIVE"	Mega Drive (Everdrive extensions)
"SEGA SSF"	Mega Drive (Mega Everdrive extensions)
"SEGA MEGAWIFI"	Mega Drive (Mega Wifi extensions)
"SEGA PICO"	Pico
"SEGA TERA68K"	Tera Drive (boot from 68000 side)
"SEGA TERA286"	Tera Drive (boot from x86 side)
Back to top
