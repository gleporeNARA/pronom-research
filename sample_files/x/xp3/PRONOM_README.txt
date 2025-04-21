KAG is abbreviation for "Kirikiri Adventure Game." It is a script engine which assists creating VN(visual novel) or KN(kinetic novel).
KAG interprets scenario file, which is a text file with embedded "tag"(derective to KAG), and KAG itself is written in TJS(2) scripting language which kirikiri base system interprets.
Creators writes scenario file manually with text editor. Creators have to leap some hurdles, but it isn't painful for those who can write HTML manually with text editor.

With intrinsic tags, most functionalities for VN are available. Furthur more, KAG itself is written in TJS script, so you can modify it, or directly operate on kirikiri base system using embedded TJS script in scenario file, leading to anothor behavior or extended functionality. This is one of kirikiri/KAG's major features.


Note
kirikiri handling KAG3 or later, is kirikiri2. kirikiri2 was written almost from scratch to reimplement kirikiri1, and KAG was also rewritten as KAG3. KAG3 is compatible with previous KAG in senario file level, but you must care to transcipt previous KAG to KAG3. See Upgrading to KAG3 and Features of KAG3 for detail.



Note
kirikiri base system interprets TJS scripting language, and KAG, which is written in TJS, interprets scenario file. So, the term "KAG" designates KAG specific, "kirikiri" designates kirikiri base system specific, and "kirikiri/KAG" designates both concerning material.
To distinguish between TJS script and KAG scenario, the term "script" or "script file" designates material with TJS script, and "scenario" or "scenario file" designates material with KAG scenario.

http://kirikirikag.sourceforge.net/contents/index.html

XP3 and PEXP3
　The XP3 format is an original kirikiri archive format and is completely supported.
　PEXP3 is a format, that combines XP3 format and the Kirikiri executable file, in a single execuatable file.
　Releaser of Kirikiri SDK comes with either format.
　
http://kirikirikag.sourceforge.net/contents/Prepare.html

http://fileformats.archiveteam.org/wiki/KiriKiri_Adventure_Game_System
