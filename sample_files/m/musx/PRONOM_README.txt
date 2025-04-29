I've been getting my nostalgia on recently by watching The Crystal Maze. My main takeaway—other than that surely sliding block puzzles aren't that hard?—is that the theme tune badly needs remixing. But before I embarked on such a project, I was aware of a computer adaptation to the Archimedes, a platform with which I'm deeply familiar. I'd played the game (well, the demo) back in the day: I even still had a copy, although it had suffered bitrot and would crash on startup. It presumably contained the theme tune. Now I just had to extract it.

It's been many years since I did any Acorn hacking, but this turned out to be remarkably straightforward. The presence of TrackerModule in the game's Modules directory was a dead giveaway. TrackerModule can play precisely three file formats: Soundtracker, Protracker, and its native format, the almost-lost-to-history Archimedes Tracker. Soundtracker doesn't have any magic numbers to speak of, but even in 1993 nobody used such an obsolete format. Happily the others do: in particular, Archimedes Tracker files start with the string "MUSX", and lo, three data files contain that string.



https://blog.sphere.chronosempire.org.uk/2014/02/02/crystal-maze-theme
