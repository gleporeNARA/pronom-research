Dustforce is a platform video game developed by Hitbox Team. The game was released in January 2012 for Microsoft Windows via Steam, and Mac OS X through Steam in May 2012. A Linux port was released as part of the Humble Indie Bundle 6. Capcom published the game for the PlayStation 3, PlayStation Vita, and Xbox 360.[1]

Within the game, the player controls one of four janitors who are attempting to sweep away a world corrupted with dust and filth. The player uses a number of acrobatic skills, such as double jumping and wall jumping to progress through the game's fifty-some levels, cleaning sections covered by leaves and attacking filth-covered creatures to score and progress through the level. The player's performance is ranked based on time and completion, and access to certain levels requires near-perfect runs of earlier levels.

https://en.wikipedia.org/wiki/Dustforce

writer = BitWriter()
  writer.write_bytes(b"DF_LVL")
  writer.write(16, 44)
  writer.write(32, 12 + len(writer_header.bytes()) +
                        len(writer_front.bytes()) +
                        len(writer_back.bytes()))
  return b"".join([writer.bytes(), writer_header.bytes(),
                   writer_front.bytes(), writer_back.bytes()])
                   
https://pythonhosted.org/dustmaker/_modules/dustmaker/MapWriter.html
