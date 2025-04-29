###########################################################
#### ReadMe.txt for "Data on Icelandic pre-aspiration"
#### Stefano Coretta 

The data set contains the following audio files (.wav):

- brs02_20160531.wav- bte03_20160531.wav- jj04_20160531.wav- shg05_20160613.wav- tt01_20160527.wav

The file names are composed by the initials of the informant plus a two digit index, followed by an underscore and the date of recording in the format YYYYMMDD.

Each audio file has its corresponding TextGrid annotation file. The tier structure is as follows:

1. sent: frame sentence boundaries (not used)
2. word: boundaries of the target words
3. voic: interval containing voicing
4. mann: interval with glottal spread (spr), nasality (nas), laterality (lat), rhoticity (rho).
5. rels: consonant release.

The .wav audio files and TextGrid files can be opened in PRAAT (http://www.fon.hum.uva.nl/praat/).
To allign audio and TextGrid files, select both files from the object window and click on "View & Edit."

To reproduce the analysis performed on this data set, go to the repository at http://github.com/stefanocoretta/icelandic-preaspiration
