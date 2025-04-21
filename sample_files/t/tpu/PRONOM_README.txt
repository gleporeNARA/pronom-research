From ts@uwasa.fi Mon Jan 1 00:00:32 1996
Subject: Converting TPUs

32. *****
 Q: How can I convert a TPU unit of one TP version to another?

 A: Forget it. In practical terms such a conversion is not on. The
Turbo Pascal TPU units are strictly version dependent. If there were
a working solution I assume we would have heard of it long since.
The hacks that have been tried won't solve this dilemma. For all
practical purposes you need the source code and the relevant
compiler version.
   You may nevertheless wish to ascertain for which version a TPU
unit has been compiled. This is very simple. Just look at the first
four character of a TPU file. The codes are
 TPU0  for 4.0
 TPU5  for 5.0
 TPU6  for 5.5
 TPU9  for 6.0
 TPUQ  for 7.0 real mode
But don't go editing these. It will not get you anywhere.

http://www.lpjjl.net/pgm/fichiers/pasfaq.txt
