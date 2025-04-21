What Is Waba?

Waba is a stripped-down implementation of the Java Virtual Machine. By 'stripped down', we mean that it does not support doubles, longs, exceptions, finalizers, threading, reflection, custom class loaders, security or class verification, and the entire Java class library. Waba comes with its own library of small but useful classes -- the only classes Waba has in common with Java's class suite are Object, String, and StringBuffer, and Waba's implementations have only the bare minimum of methods.

As long as you use Waba's class libraries, and stay away from exceptions, finalizers, doubles, and longs, then (here comes the nifty part) you can use any Java development environment to write a Waba application which will, with the help of a few minor conversion tools, automagically run on the Newton, Palm Pilot, Windows CE, Windows 98/2000/NT, or even in your web browser.

https://cs.gmu.edu/~sean/projects/newton/waba/

Waba File Format Notes
Some external links may be obsolete -- if you have updates, please send.

Last updated: 25-Jun-2005

There many different file formats involved in Waba development and distribution, and a few of these are documented here.

source
.java, .bmp
compiled
.class
distribution: resource
.pdb, .wrp, .jar, .pkg
distribution: initialization/launch
.prc, .lnk, .htm, (.pkg)
The Warp and Exegen applications (in wextras/wababin) demonstrate how to create and access .prc, .pdb, .lnk and .wrp files.

You can see these formats used in WabaTester (NewtonScript); in setAppClasses, it extracts classes and bitmaps from .pdb, .wrp, .jar (uncompressed); in convertBitmap, it converts .bmp to Newton bitmap format; in setAppArgs, it extracts command line parameters from .prc, .lnk, .htm (some of which are described in wabanewton-api.htm), main class name, and icon (from .prc).

Some details on formats are provided next, followed by a few thoughts on which formats to use.

WinCE Warp (.wrp)
A WRP file starts with the following header:

name                type/size
-------------------------------
magic chars         char/4 bytes
number of records   int/4 bytes
The "magic chars" for the WRP file format version 1.0 are "Wrp1". This is followed by the number of records contained in the file as a 4 byte value. All integer values in the WRP file format are in network order (also known as big-endian or MSB order).

https://communicrossings.com/html/waba/dev/file_format_doc.htm
