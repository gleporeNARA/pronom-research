Vim (/vɪm/;[5] a contraction of Vi IMproved) is a free and open-source, screen-based text editor program. It is an improved clone of Bill Joy's vi. Vim's author, Bram Moolenaar, derived Vim from a port of the Stevie editor for Amiga[6] and released a version to the public in 1991. Vim is designed for use both from a command-line interface and as a standalone application in a graphical user interface. Vim is released under the Vim license, which includes some charityware clauses that encourage users who enjoy the software to consider donating to children in Uganda.[4] The Vim license is compatible with the GNU General Public License through a special clause allowing distribution of modified copies under the GNU GPL version 2.0 or later.[4]

Since its release for the Amiga, cross-platform development has made it available on many other systems. In 2006, it was voted the most popular editor amongst Linux Journal readers;[7] in 2015 the Stack Overflow developer survey found it to be the third most popular text editor,[8] and in 2019 the fifth most popular development environment.[9]

https://en.wikipedia.org/wiki/Vim_(text_editor)


The first hint as to the purpose of these files is :h spell-sug-file:

This file is used to find suggestions by their sound-a-like form quickly. At the cost of a lot of memory

There are three types of files used in Vim's built-in spell checking tool:

Dictionary Simple lists of correct/known words that are used to identify spelling errors. Vim scans all words and tries to find each in the configured dictionaries. If a word is not found it can be highlighted as a spelling error.

SPL file These files are used to look up suggested corrections for common mistakes such as "purposeful" misspellings (e.g. suprise for surprise) and typos (e.g. teh for the). The files contain trie data structures in binary format.

SUG file These files are used to look up suggested corrections for words that are "sound-alike" or phonetically similar (e.g. funetik for phonetic). As noted in the side bar below these suggestions are primarily useful for people who don't know the language well. Like SPL files, these files contain trie data structures in binary format. The key values are "soundfolds" which are a kind of normalization of phonetic spellings. A misspelled word is converted with the soundfold() function and the result is used to lookup suggestions in the SUG data. There's more information about soundfold/sound-alike conversion and lookup in this Phonetic Code document.

https://vi.stackexchange.com/questions/13468/how-does-sug-files-work-and-can-you-generate-them-yourself


#define VIMSUGMAGIC "VIMsug"	// string at start of Vim .sug file

https://github.com/vim/vim/blob/9dac9b1751dd43c02470cc6a2aecaeea27abcc80/src/spell.h
