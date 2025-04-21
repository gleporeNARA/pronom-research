Lucasfilm Games is an American video game licensor that is part of Lucasfilm.[2] It was founded in May 1982 by George Lucas as a video game development group alongside his film company; as part of a larger 1990 reorganization of the Lucasfilm divisions, the video game development division was grouped and rebranded as part of LucasArts. LucasArts became known for its line of adventure games based on its SCUMM engine in the 1990s, including Maniac Mansion, the Monkey Island series, and several Indiana Jones titles. A number of influential game developers were alumni of LucasArts from this period, including Brian Moriarty, Tim Schafer, Ron Gilbert, and Dave Grossman. Later, as Lucasfilm regained control over its licensing over the Star Wars franchise, LucasArts produced numerous action-based Star Wars titles in the late 1990s and early 2000s, while dropped adventure game development due to waning interest in the genre.

Lucasfilm was wholly acquired by The Walt Disney Company in December 2012, and by April 2013, Disney had announced the shuttering of LucasArts in all but name, keeping the division around to handle licensing of Lucasfilm properties to third-party developers, primarily Electronic Arts, and having any in-house development transferred to Disney Interactive Studios. Disney has since revitalized the Lucasfilm Games brand as the licenser of all Lucasfilm-related properties.

https://en.wikipedia.org/wiki/Lucasfilm_Games


The LAB file format
LAB files, first four bytes LABN, extension .LAB, are the LucasArts BiNary archive format. This is a very straightforward game-package-like uncompressed binary format. In the Windows folder where the game is installed you should be able to find at least:

outlaws.lab
olobj.lab
olsfx.lab
oltex.lab
olweap.lab
olpatch1.lab
olpatch2.lab
The game was patched several times over the years to add support for D3D and Glide, so we’ll find archives like olpatch1.lab in the directory for latter releases.

The file names are more or less self-evident, olobj has sprites and configurations for game objects, olsfx has all the WAV sound effects used by the game, olweap has sprites for the player weapons (from the player’s perspective), and so on.

http://glampert.com/2015/10-10/reverse-engineering-lucasarts-outlaws/

http://wiki.xentax.com/index.php/Lucus_Arts_LAB
