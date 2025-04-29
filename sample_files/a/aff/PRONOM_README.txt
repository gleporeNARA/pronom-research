hunspell (4) - Linux Man Pages
hunspell: format of Hunspell dictionaries and affix files
Command to display hunspell manual in Linux: $ man 4 hunspell

NAME
hunspell - format of Hunspell dictionaries and affix files

DESCRIPTION
Hunspell(1) Hunspell requires two files to define the way a language is being spell checked: a dictionary file containing words and applicable flags, and an affix file that specifies how these flags wil controll spell checking. An optional file is the personal dictionary file.

Dictionary file
A dictionary file (*.dic) contains a list of words, one per line. The first line of the dictionaries (except personal dictionaries) contains the approximate word count (for optimal hash memory size). Each word may optionally be followed by a slash ("/") and one or more flags, which represents the word attributes, for example affixes.
Note: Dictionary words can contain also slashes when escaped like "/" syntax.


Personal dictionary file
Personal dictionaries are simple word lists. Asterisk at the first character position signs prohibition. A second word separated by a slash sets the affixation.
foo
Foo/Simpson
*bar
In this example, "foo" and "Foo" are personal words, plus Foo will be recognized with affixes of Simpson (Foo's etc.) and bar is a forbidden word.


Short example
Dictionary file:

3
hello
try/B
work/AB
The flags B and A specify attributes of these words.

Affix file:

SET UTF-8
TRY esianrtolcdugmphbyfvkwzESIANRTOLCDUGMPHBYFVKWZ'

REP 2
REP f ph
REP ph f

PFX A Y 1
PFX A 0 re .

SFX B Y 2
SFX B 0 ed [^y]
SFX B y ied y
In the affix file, prefix A and suffix B have been defined. Flag A defines a `re-' prefix. Class B defines two `-ed' suffixes. First B suffix can be added to a word if the last character of the word isn't `y'. Second suffix can be added to the words terminated with an `y'.

All accepted words with this dictionary and affix combination are: "hello", "try", "tried", "work", "worked", "rework", "reworked".


AFFIX FILE GENERAL OPTIONS
Hunspell source distribution contains more than 80 examples for option usage.

SET encoding
Set character encoding of words and morphemes in affix and dictionary files. Possible values: UTF-8, ISO8859-1 - ISO8859-10, ISO8859-13 - ISO8859-15, KOI8-R, KOI8-U, microsoft-cp1251, ISCII-DEVANAGARI.
SET UTF-8
FLAG value
Set flag type. Default type is the extended ASCII (8-bit) character. `UTF-8' parameter sets UTF-8 encoded Unicode character flags. The `long' value sets the double extended ASCII character flag type, the `num' sets the decimal number flag type. Decimal flags numbered from 1 to 65000, and in flag fields are separated by comma. BUG: UTF-8 flag type doesn't work on ARM platform.
FLAG long
COMPLEXPREFIXES
Set twofold prefix stripping (but single suffix stripping) eg. for morphologically complex languages with right-to-left writing system.
LANG langcode
Set language code for language specific functions of Hunspell. Use it to activate special casing of Azeri (LANG az) and Turkish (LANG tr).
IGNORE characters
Sets characters to ignore dictionary words, affixes and input words. Useful for optional characters, as Arabic (harakat) or Hebrew (niqqud) diacritical marks (see tests/ignore.* test dictionary in Hunspell distribution).
AF number_of_flag_vector_aliases
AF flag_vector
Hunspell can substitute affix flag sets with ordinal numbers in affix rules (alias compression, see makealias tool). First example with alias compression:
3
hello
try/1
work/2
AF definitions in the affix file:

AF 2
AF A
AF AB
It is equivalent of the following dic file:

3
hello
try/A
work/AB
See also tests/alias* examples of the source distribution.

Note I: If affix file contains the FLAG parameter, define it before the AF definitions.

Note II: Use makealias utility in Hunspell distribution to compress aff and dic files.

AM number_of_morphological_aliases
AM morphological_fields
Hunspell can substitute also morphological data with ordinal numbers in affix rules (alias compression). See tests/alias* examples.
AFFIX FILE OPTIONS FOR SUGGESTION
Suggestion parameters can optimize the default n-gram (similarity search in the dictionary words based on the common 1, 2, 3, 4-character length common character-sequences), character swap and deletion suggestions of Hunspell. REP is suggested to fix the typical and especially bad language specific bugs, because the REP suggestions have the highest priority in the suggestion list. PHONE is for languages with not pronunciation based orthography.
KEY characters_separated_by_vertical_line_optionally
Hunspell searches and suggests words with one different character replaced by a neighbor KEY character. Not neighbor characters in KEY string separated by vertical line characters. Suggested KEY parameters for QWERTY and Dvorak keyboard layouts:
KEY qwertyuiop|asdfghjkl|zxcvbnm
KEY pyfgcrl|aeouidhtns|qjkxbmwvz
Using the first QWERTY layout, Hunspell suggests "nude" and "node" for "*nide". A character may have more neighbors, too:

KEY qwertzuop|yxcvbnm|qaw|say|wse|dsx|sy|edr|fdc|dx|rft|gfv|fc|tgz|hgb|gv|zhu|jhn|hb|uji|kjm|jn|iko|lkm
TRY characters
Hunspell can suggest right word forms, when they differ from the bad input word by one TRY character. The parameter of TRY is case sensitive.

https://www.systutorials.com/docs/linux/man/4-hunspell/
