# pronom-research


This repository contains file format samples, and <a href="https://github.com/gleporeNARA/pronom-research/wiki">standard operating procedures</a> for the identification, examination, and documentation of new file format signatures for the UK National Archives PRONOM database.

In addition the repo contains over 1,100 PRONOM signatures converted to the 'file' format which can be used with the standard Linux command 'file'. Each subdirectory in sample_files contains sample files (duh), the PRONOM signature, metadata about the format (specifications, explanation, etc.), and the PRONOM signature after being run through the PRONOM Signature Reconstructor, which translates the PRONOM XML file to a simplified expression of the signature.

"PRONOM is an on-line information system about data file formats and their supporting software products. Originally developed to support the accession and long-term preservation of electronic records held by the National Archives, PRONOM is now being made available as a resource for anyone requiring access to this type of information."

The PRONOM database currently holds some file format information for approximately 1,800 file formats. Most of these format entries have an associated "magic number". A magic number is a unique series of bytes which only occur in files of the same format. Most file formats are written to adhere to specification files which dictate how the file format must be laid out at the most basic level. This repository will detail processes to identify these unique signatures within files that do not currently have signatures in the database.

