Format of Version 5 Babyl Files:

Warning:

    This was written Tuesday, 12 April 1983 (by Eugene Ciccarelli),
based on looking at a particular Babyl file and recalling various
issues.  Therefore it is not guaranteed to be complete, but it is a
start, and I will try to point the reader to various Babyl functions
that will serve to clarify certain format questions.

    Also note that this file will not contain control-characters,
but instead have two-character sequences starting with Uparrow.
Unless otherwise stated, an Uparrow <character> is to be read as
Control-<character>, e.g. ^L is a Control-L.

Versions:

    First, note that each Babyl file contains in its BABYL OPTIONS
section the version for the Babyl file format.  In principle, the
format can be changed in any way as long as we increment the format
version number; then programs can support both old and new formats.

    In practice, version 5 is the only format version used, and the
previous versions have been obsolete for so long that Emacs does not
support them.


Overall Babyl File Structure:

    A Babyl file consists of a BABYL OPTIONS section followed by
0 or more message sections.  The BABYL OPTIONS section starts
with the line "BABYL OPTIONS:".  Message sections start with
Control-Underscore Control-L Newline.  Each section ends
with a Control-Underscore.  (That is also the first character
of the starter for the next section, if any.)  Thus, a three
message Babyl file looks like:


http://quimby.gnus.org/notes/BABYL
