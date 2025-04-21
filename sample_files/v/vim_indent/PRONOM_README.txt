Vim (/vɪm/;[5] a contraction of Vi IMproved) is a free and open-source, screen-based text editor program for Unix. It is an improved clone of Bill Joy's vi. Vim's author, Bram Moolenaar, derived Vim from a port of the Stevie editor for Amiga[6] and released a version to the public in 1991. Vim is designed for use both from a command-line interface and as a standalone application in a graphical user interface. Vim is released under the Vim license that includes some charityware clauses, encouraging users who enjoy the software to consider donating to children in Uganda.[4] The Vim license is compatible with the GNU General Public License through a special clause allowing distribution of modified copies under the GNU GPL version 2.0 or later.[4]

Since its release for the Amiga, cross-platform development has made it available on many other systems. In 2006, it was voted the most popular editor amongst Linux Journal readers;[7] in 2015 the Stack Overflow developer survey found it to be the third most popular text editor,[8] and in 2019 the fifth most popular development environment.[9]

https://en.wikipedia.org/wiki/Vim_(text_editor)


How to Write a Vim Indent Script: A Pascal Example
Writing an indent file that indents perfectly is almost impossible since it would require Vim to be a compiler. Vim is a text editor, not a compiler (ignoring its ability to parse its own configuration files). Consequently, syntax files for some languages are only compromises.

Vim allows the user to control the way their text is indented. We do this with a Vim script file, which contains some code that returns a numeric value. The file has an appropriate name, and is stored in an appropriate directory.

For Vim to load the correct indent script, it must have some means of identifying the filetype. Vim already knows about lots of filetypes, but you may have to provide your own means of identifying it, if it is not already in Vim's list.

A Vim indent script works by following a protocol explained in Vim's documentation. The basic steps are thus:

The script file is named after the filetype with the extension ".vim". In our case, the filetype is "pascal", so our script file is named pascal.vim.
The script must be located in the /indent subdirectory of the $VIMFILES directory.
To be a good citizen, the script should check to ensure it doesn't override another.
The script must provide an expression that returns a numeric value corresponding to the indentation level measured in columns (i.e. spaces, not ‘indents’ or tabs).
The script should indicate under what conditions the indentation is performed.
To make the correct indent choice every time, it is necessary to know exactly what context or state the source is in when it makes its choice. To be able to do this for any position in the file, the source code has to be completely parsed. And if your program can do that, you may as well make it a compiler! Having said that, we can get things right often enough to make it worthwhile. Doing so requires that we make a few assumptions about the source code. This obviously introduces errors, but these can easily be corrected. In some cases where the indenter has introduced an error, things sometimes get cumulatively worse; this can be fixed manually by correcting the error manually and rerunning the script from the new, corrected, position. Think of it as 'resynchronising' the indenter.

Our coding standard dictates that comments cannot come before executable code on the same line. Comments can, however, appear at teh end of a line containing executable code. In other words, nothing can appear after a comment, apart from another comment. This means we can ignore any line starting with a comment. Conversely, we have to allow for comments to appear after keywords.

First, we follow the Vim conventions for a script file by placing some information about the script's identity at the top of the file.

" Vim indent file
" Language:    Pascal

https://psy.swansea.ac.uk/staff/carter/vim/vim_indent.htm
