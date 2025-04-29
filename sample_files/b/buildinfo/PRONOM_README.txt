NAME
deb-buildinfo - Debian build information file format

SYNOPSIS
filename.buildinfo

DESCRIPTION
Each Debian source package build can record the build information in a .buildinfo control file, which contains a number of fields in deb822(5) format.

Each field begins with a tag, such as Source or Binary (case insensitive), followed by a colon, and the body of the field (case sensitive unless stated otherwise). Fields are delimited only by field tags. In other words, field text may be multiple lines in length, but the installation tools will generally join lines when processing the body of the field (except in case of the multiline fields Binary-Only-Changes, Installed-Build-Depends, Environment, Checksums-Md5, Checksums-Sha1 and Checksums-Sha256, see below).

https://manpages.debian.org/bullseye/dpkg-dev/deb-buildinfo.5.en.html
