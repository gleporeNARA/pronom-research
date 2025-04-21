KDE is an international free software community that develops free and open-source software. As a central development hub, it provides tools and resources that allow collaborative work on this kind of software.[1] Well-known products include the Plasma Desktop (the default desktop environment on many Linux distributions), Frameworks and a range of cross-platform applications like Krita or digiKam designed to run on Unix and Unix-like desktops, Microsoft Windows and Android.[2]

https://en.wikipedia.org/wiki/KDE

kdelnk2desktop.py is used to convert a .kdelnk file (used by KDE 1) into a .desktop file (used by KDE 2 and later).

File kdelnk-file must have a name ending in .kdelnk. After kdelnk2desktop.py is run, this will be replaced by a new file ending in .desktop. The original kdelnk-file will be removed.

This utility is part of the KDE Software Development Kit.

https://www.carta.tech/man-pages/man1/kdelnk2desktop.py.1.html

The kdelnk file that you created is not a copy of the application that you wanted to launch. Rather, it is an information file that tells kfm how to launch the application and let other files use the application. If you view the contents of the gimp.kdelnk object (file) that was just created, you see that it contains properties values used by kfm and other KDE applications:

$ more -/gimp.kdelnk

# KDE Config File [KDE Desktop Entry]

https://www.halolinux.us/kde-reference/defining-an-application-in-kfm.html

http://underpop.online.fr/d/dev/weblinux/lnut/ch16_01.htm
