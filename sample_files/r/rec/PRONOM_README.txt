What is the Ascii Patrol?
Ascii Patrol is an ASCII game project. It was mainly inspired by "Moon Patrol", my favourite arcade game at the times I was a child.

Ascii Patrol capture
Ascii Patrol game play screen capture
Game is going to hit following platforms:

Windows as pure console application
Linux and Cygwin with optional X11 input handling
DOS, FreeDOS, DOSBox and other DOS emulators
Web Browsers with Canvas (WebGL is highly recommended)
So why is this ASCII game?
Some time ago I was transferring a lot of files over remote Linux machine with pure text interface only. While waiting I thought maybe there is a port of Moon Patrol or any other cool old game on Linux so I could play it over SSH. Unfortunately everything I've found was quite disappointing. So a few days later I made the decision, let's make such game by myself.

What is the release date?
Currently, the project is developed in my spare time, it is not going forward with the speed of light, but first alpha releases will show up by the end of May 2016. What will happen then with Ascii Patrol depends mostly on these releases receptions.
ALPHA 1.6 access is open!
What about game design?
The game play is very close to the original Moon Patrol game, but with several additions. Of course game menu is also added as Ascii Patrol is not coin operated, so players can choose, in example, a level to play.

Ascii art images were initially painted using an ordinary text editor. It was sufficient at the beginning as I didn't even consider using colors for my game.

Later I thought that adding some color could improve game appearance a lot. I started searching for a suitable ANSI art editor, with the simple file format, ability to supply it with different raster fonts and most importantly with powerful features with easy to use interface.

I found REX Paint, and immediately fall in love with it. Currently, I paint all game assets using REX Paint in 2 versions: black & white and ANSI palette. So the game can run in monochrome or 16 color mode.

Game controls
At current development state, the game can be controlled only by physical keyboard. On most platforms key bindings and behaviour is pretty obvious. The player can use arrow keys, Enter and Escape to both navigate in menu and control player's car in the game. Additionally, players can define alternative key bindings, but they cannot overlap keys of the main input.

Future releases will be capable of handling mouse in the menu, the web browser platform will also enable touch input so the game will be playable on mobile devices without physical keyboard.

When playing on Linux and Cygwin platforms without X11 input handling enabled, it is not possible to accurately detect if / when the player releases particular key. Car's acceleration, braking and crouching uses 'sticky' mode input then. In this mode, the game assumes particular key is pressed until the player presses another key in the opposite direction.

Ascii Patrol Hi-Scores

(REC-*) Downloaded .rec files can be used to play them locally
[user@linux ~]$ .\asciipat 2 <file.rec>
More on using arguments can be found here: [Forum: ./asciipat arguments]

   Rank   Player            Score     Date      Time   REC-*
-------- ---------------- -------- ---------- -------- -----
       1 alex76gr           264340 2018-07-10 11:20:47 [REC]
       
http://ascii-patrol.com/index.html
