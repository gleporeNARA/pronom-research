Vim (/vɪm/;[5] a contraction of Vi IMproved) is a free and open-source, screen-based text editor program for Unix. It is an improved clone of Bill Joy's vi. Vim's author, Bram Moolenaar, derived Vim from a port of the Stevie editor for Amiga[6] and released a version to the public in 1991. Vim is designed for use both from a command-line interface and as a standalone application in a graphical user interface. Vim is released under the Vim license that includes some charityware clauses, encouraging users who enjoy the software to consider donating to children in Uganda.[4] The Vim license is compatible with the GNU General Public License through a special clause allowing distribution of modified copies under the GNU GPL version 2.0 or later.[4]

Since its release for the Amiga, cross-platform development has made it available on many other systems. In 2006, it was voted the most popular editor amongst Linux Journal readers;[7] in 2015 the Stack Overflow developer survey found it to be the third most popular text editor,[8] and in 2019 the fifth most popular development environment.[9]

https://en.wikipedia.org/wiki/Vim_(text_editor)

Vim documentation: filetype

1. Filetypes					*filetypes* *file-types*

Vim can detect the type of file that is edited.  This is done by checking the
file name and sometimes by inspecting the contents of the file for specific
text.

*new-filetype*
If a file type that you want to use is not detected yet, there are four ways
to add it.  In any way, it's better not to modify the $VIMRUNTIME/filetype.vim
file.  It will be overwritten when installing a new version of Vim.

A. If you want to overrule all default file type checks.
   This works by writing one file for each filetype.  The disadvantage is that
   means there can be many files.  The advantage is that you can simply drop
   this file in the right directory to make it work.

   
   file:///home/lepore/data/nara/signatures/ready_to_submit/batch_24/vim_syntax
