# pronom-research

Research into developing new file format signatures for files in archival collections.

This repository will contain code samples, file format samples, and <a href="https://github.com/gleporeNARA/pronom-research/wiki">standard operating procedures</a> for the identification, examination, and documentation of new file format signatures for the UK National Archives PRONOM database.

"PRONOM is an on-line information system about data file formats and their supporting software products. Originally developed to support the accession and long-term preservation of electronic records held by the National Archives, PRONOM is now being made available as a resource for anyone requiring access to this type of information."

The PRONOM database currently holds some file format information for approximately 1,600 file formats. Most of these format entries have an associated "magic number". A magic number is a unique series of bytes which only occur in files of the same format. Most file formats are written to adhere to specification files which dictate how the file format must be laid out at the most basic level. This repository will detail processes to identify these unique signatures within files that do not currently have signatures in the database.

The lcs.py code analyzes beginning sections of a group of files for common sequences. The sim.py code analyzes strings in two files for similarities and, if the files are similar enough, the code creates a regular expression that matches the first two files and then attempts to match that sequence in the remaining file in the collection.


