QSlim Simplification Software

Version 1.0
October 1, 1997


This software is in the public domain and is provided AS IS. Use it at YOUR OWN RISK. This software is UNSUPPORTED. I've made it freely available, and you're free to do whatever you want with it. However, I don't have the resources to provide any real support for users, so you're more or less on your own.

      This software package is based on experimental software I developed for my own research purposes. As such, the code may be a little ugly in places, and it doesn't have all the features of industrial strength software. And there really isn't much documentation. However, it's proven quite useful to me, and I hope you'll find it useful as well.

      If you use my software for anything more substantial than toying around, I'd be interested to hear about it. Any other comments you'd like to make are also welcome. And if you find bugs in the software, please let me know. Even better, you can send me a patch if you decide to fix the problem yourself.




FILE FORMAT
-----------

QSlim uses my SMF file format.  This is similar to the Wavefront .OBJ
format.  For our purpuses here, an SMF file contains a sequence of
lines, each of which can one of the following forms:

    # ....
	Comment

    v <x> <y> <z>
	Defines a new vertex.  Vertices are implicitly numbered
	starting from 1 (NOT 0).

    f <v1> <v2> <v3>
	Defines a new triangular face whose corners are the vertices
	identified by the three numbers <v1> <v2> <v3>.  Faces are
	assumed to be listed in counter-clockwise order.

The 'models' directory contains a couple sample models for you to look
at and experiment with.


http://www.cs.cmu.edu/afs/cs/user/garland/www/quadrics/qslim10.html
