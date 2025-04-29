data format
Answer
A database with the CBF format used in earlier versions of the ChessBase and Fritz programs consisted simply of two files with the extensions *.cbf und *.cbi. Handling them was thus relatively simple, if, e.g., you wanted to pass on a database to someone. The disadvantage of the CBH data format was that apart from the notation and the identifying data all that could be saved consisted of text, variations + sub-variations.

The advantages of the present CBH format are significant: in addition to variations and text you can save diverse multi-media components. Coloured display on the chess board, embedded graphics, sound, videos, embedded training questions in the notation or the support for various languages – all of these considerably extend the functionality of ChessBase and Fritz.

A further advantage of the CBH data format: you are able to make use of lengthy names for a database, e.g. “My best games”.

A database in CBH format is composed of several files.

If you wish to pass on or send a database, it is therefore not sufficient to copy simply the file with the extension *.CBH. To help with the understanding of this let us consider the most important individual files which make up a database in the CBH format.



Data structure
Unlike other data formats, e.g. the PGN format, a database in CBH format is made up of several different files. To better understand the structure of a database let us take a look at the significance of the most important files in a database:

CBH= the identifying data for a game, e.g. players, tournament, etc.
CBG= moves and variations
CBA= comments
If the file with the extension *.cba is deleted, all the annotations to the games in the database are lost.
CBP= player index
CBT= tournament index
CBC= index of annotators
CBS= index of sources
CBB= search booster
CBD= hash file of doubles
CKO/CPO= the openings key for the database is stored in these two files
CKN/CPN= general themes key
CK1/CP1= tactics key
CK2/CP2= strategy key
CK3/CP3= endgame key
Perhaps you have read all this so far and are wondering whether it is really necessary to know the significance of each individual file? No, since we have of course thought of how to make the handling of a database as simple as possible for the user.

Transporting databases!
Suppose you want to copy to a disk your database called My games and transfer it to your notebook. In ChessBase there is a simple way to bring together all the files in a database into a single file with the file extension *.CBV. To do so you proceed as follows:



https://en.chessbase.com/support-kb/content/details/1005/data%20format
