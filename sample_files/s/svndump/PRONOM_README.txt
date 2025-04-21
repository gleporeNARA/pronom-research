= How to interpret Subversion dumpfiles =

Version 1.3, 2020-12-21

== Introduction ==

The Subversion dumpfile format is a serialized description of the
actions required to (re)build a version history. from scratch.

The goal of this document is that it be sufficient for people writing
dumpfile interpreters to emulate the actions the dumpfile describes on
a versioned filesystem-like store, such as another version-control
system.  It derives from and incorporates some incomplete notes from 
before r39883.



==== Version stamp records ====

A version stamp record is always the first line of the file and
looks like this:

-------------------------------------------------------------------
SVN-fs-dump-format-version: <N>\n


https://svn.apache.org/repos/asf/subversion/trunk/notes/dump-load-format.txt
