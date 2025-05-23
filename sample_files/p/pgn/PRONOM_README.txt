Portable Game Notation (PGN) is a standard plain text format for recording chess games (both the moves and related data), which can be read by humans and is also supported by most chess software.

Usage
PGN is structured "for easy reading and writing by human users and for easy parsing and generation by computer programs." The chess moves themselves are given in algebraic chess notation using English initials for the pieces. The filename extension is .pgn.

There are two formats in the PGN specification, the "import" format and the "export" format. The import format describes data that may have been prepared by hand, and is intentionally lax; a program that can read PGN data should be able to handle the somewhat lax import format. The export format is rather strict and describes data prepared under program control, similar to a pretty printed source program reformatted by a compiler. The export format representations generated by different programs on the same computer should be exactly equivalent, byte for byte.

PGN text begins with a set of "tag pairs" (a tag name and its value), followed by the "movetext" (chess moves with optional commentary).

Tag pairs
Tag pairs begin with an initial left bracket [, followed by the name of the tag in plain ASCII text. The tag value is enclosed in double-quotes, and the tag is then terminated with a closing right bracket ]. A quote inside a tag value is represented by the backslash immediately followed by a quote. A backslash inside a tag value is represented by two adjacent backslashes. There are no special control codes involving escape characters, or carriage returns, and linefeeds to separate the fields, and superfluous embedded spaces are usually skipped when parsing.

PGN data for archival storage is required to provide seven tag pairs – together known as the "Seven Tag Roster". In export format, these tag pairs must appear before any other tag pairs and in this order:

Seven Tag Roster
Event	Name of the tournament or match event.
Site	Location of the event. This is in City, Region COUNTRY format, where COUNTRY is the three-letter International Olympic Committee code for the country. An example is New York City, NY USA.
Although not part of the specification, some online chess platforms will include a URL or website as the site value.[3]

https://en.wikipedia.org/wiki/Portable_Game_Notation
