mbcopy is a utility for copying swath sonar data files which
may be used to change formats, average pings, or window
in time and space. mbcopy can be used as a filter from
stdin to stdout, or it may do i/o to and from files.

https://www3.mbari.org/data/mbsystem/html/mbcopy.html


The development of MB-System began in 1990 as part of David Caress' research at
the Lamont-Doherty Earth Observatory (LDEO), which involved swath bathymetry data collected
with SeaBeam multibeam sonars. Development was accelerated in 1991 as part of an effort to
support the new STN-Atlas Hydrosweep DS multibeam sonar on LDEO's ship, the R/V Maurice Ewing.
Dale Chayes, a Lamont-Doherty engineer, was responsible for the maintenance and operation
of the Ewing's Hydrosweep. As part of a grant in 1993 and 1994 to Chayes and Caress to upgrade
the Hydrosweep operations on the Ewing, the National Science Foundation provided support
to improve and extend MB-System. The intent of this initial grant was to provide a
standard "generic" set of tools for processing and display of swath sonar data that could
be used by the U.S. academic community. The first generally released version of MB-System
(3.0) was made available in the Spring of 1993. This was followed by versions 3.1 and 3.2 in
July, 1993, version 3.3 in November, 1993, and version 3.4 in December 1993. All of these
early releases supported only SeaBeam and Hydrosweep data.


Ancillary data files. Many common MB-System tasks (e.g. swath plotting
and gridding) can be accomplished more rapidly using ancillary data files containing
file statistics (".inf" files), quickly read bathymetry (".fbt" files), and
(".fnv") files. Each of these files is named by adding the indicated four character
suffix to the original swath data filename. The ".inf" files are created by directing
the output of mbinfo to a file. The ".fbt" files are creating by using
mbcopy to extract the bathymetry into a format 71 file. The ".fnv" files
are created using mblist to create a text navigation list.
These ancillary files are automatically created together using the
program mbdatalist.

https://www3.mbari.org/products/mbsystem/html/mbsystem.html
