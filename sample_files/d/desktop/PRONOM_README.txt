KDE is an international free software community that develops free and open-source software. As a central development hub, it provides tools and resources that allow collaborative work on this kind of software.[1] Well-known products include the Plasma Desktop (the default desktop environment on many Linux distributions), Frameworks and a range of cross-platform applications like Krita or digiKam designed to run on Unix and Unix-like desktops, Microsoft Windows and Android.[2]

https://en.wikipedia.org/wiki/KDE

Introduction
Both the KDE and GNOME desktop environments have adopted a similar format for "desktop entries", or configuration files describing how a particular program is to be launched, how it appears in menus, etc. It is to the larger community's benefit that a unified standard be agreed upon by all parties such that interoperation between the two environments, and indeed any additional environments that implement the specification, becomes simpler.

File naming
Desktop entry files should have the .desktop extension, except for files of Type Directory which should have the .directory extension. Determining file type on basis of extension makes determining the file type very easy and quick. When no file extension is present, the desktop system should fall back to recognition via "magic detection".



A. Example Desktop Entry File
[Desktop Entry]
Version=1.0
Type=Application
Name=Foo Viewer

https://specifications.freedesktop.org/desktop-entry-spec/desktop-entry-spec-latest.html
