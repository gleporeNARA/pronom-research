GNU Aspell, usually called just Aspell, is a free software spell checker designed to replace Ispell. It is the standard spell checker for the GNU operating system. It also compiles for other Unix-like operating systems and Windows. The main program is licensed under the GNU Lesser General Public License (GNU LGPL), the documentation under the GNU Free Documentation License (GNU FDL). Dictionaries for it are available for about 70 languages.[2] The primary maintainer is Kevin Atkinson.

https://en.wikipedia.org/wiki/GNU_Aspell

I have Aspell successfully installed and have compiled PHP with Pspell, and everything seems to be working fine.

The only thing I am unable to do, is create a list of "ignore" words, or a personal dictionary, however you want to refer to it.

I've tried the steps outlined here and here but neither had any effect.

As described at the above link and on the Aspell documentation, I tried creating a personal dictionary as outlined in the manual:

personal_ws-1.1 en 0
Rubiflex
quasirhombicosidodecahedron
I placed this in the aspell directory, my home directory, the root directory, and it was never picked up. The Aspell documentation never actually says where it should live or how to otherwise load it.

The other reference is to creating an individual word list:

Create a txt file with the words that you'd like to add to the dictionary, where each word is on a separate line then run the following command:

 aspell --lang=en create master ./custom.rws < test.txt
This will create a file called custom.rws that will contain the aspell encoded word(s) for the dictionary. You can name the file anything you want as long as the extension is .rws. Now to add this to the dictionary move the custom.rws file to the dictionary location which is /usr/lib/aspell by running the following command:

cp custom.rws /usr/lib/aspell/

https://stackoverflow.com/questions/9999831/adding-a-dictionary-to-aspell-pspell
