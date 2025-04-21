Vim (/vɪm/;[5] a contraction of Vi IMproved) is a free and open-source, screen-based text editor program for Unix. It is an improved clone of Bill Joy's vi. Vim's author, Bram Moolenaar, derived Vim from a port of the Stevie editor for Amiga[6] and released a version to the public in 1991. Vim is designed for use both from a command-line interface and as a standalone application in a graphical user interface. Vim is released under the Vim license that includes some charityware clauses, encouraging users who enjoy the software to consider donating to children in Uganda.[4] The Vim license is compatible with the GNU General Public License through a special clause allowing distribution of modified copies under the GNU GPL version 2.0 or later.[4]

Since its release for the Amiga, cross-platform development has made it available on many other systems. In 2006, it was voted the most popular editor amongst Linux Journal readers;[7] in 2015 the Stack Overflow developer survey found it to be the third most popular text editor,[8] and in 2019 the fifth most popular development environment.[9]

https://en.wikipedia.org/wiki/Vim_(text_editor)

This is a tutorial showing how to create your own syntax files in Vim. This provides syntax highlighting to show the different elements of files that you use. In this tutorial, all file names matching a particular extension will use the highlighting rules defined with the syntax commands shown below.

Build a syntax file
First, create a new file named cel.vim with the following contents (see below for its location):

" Vim syntax file
" Language: Celestia Star Catalogs
" Maintainer: Kevin Lauder
" Latest Revision: 26 April 2008

if exists("b:current_syntax")
  finish
endif
Vim comments start with a quote. Following the convention of the built-in syntax files, we start with a comment flower box. The test if exists("b:current_syntax") ... checks whether an earlier file has defined a syntax already. If so, the script exits with finish.

https://vim.fandom.com/wiki/Creating_your_own_syntax_files
