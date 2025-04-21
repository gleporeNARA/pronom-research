Ebuild File Format
An ebuild is a bash script which is executed within a special environment. Files should be simple text files with a .ebuild extension.

File Naming Rules
An ebuild should be named in the form name-version.ebuild.

The name section should contain only lowercase non-accented letters, the digits 0-9, hyphens, underscores and plus characters. Uppercase characters are strongly discouraged, but technically valid.

Note: This is the same as IEEE Std 1003.1-2017, section 3.282 (Portable Filename Character Set), with the exception of the period character and with the addition of the plus character to keep GTK+ and friends happy.
The name must not begin with a hyphen or a plus sign, and must not end in a hyphen followed by anything that could be mistaken for a version.

The version section is more complicated. It consists of one or more numbers separated by full stop (or period, or dot, or decimal point) characters (eg 1.2.3, 20050108). The final number may have a single letter following it (e.g. 1.2b). This letter should not be used to indicate 'beta' status — Portage treats 1.2b as being a later version than 1.2 or 1.2a.

There can be a suffix to version indicating the kind of release. In the following table, what Portage considers to be the 'lowest' version comes first.

https://devmanual.gentoo.org/ebuild-writing/file-format/index.html
