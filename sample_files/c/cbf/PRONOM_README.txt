The Crystallographic Binary File (CBF) is an electronic file supporting the efficient storage of large quantities of experimental data in a self-describing binary format. Its primary function is to handle large image data sets within laboratories and for interchange between collaborating groups. Except for embedded binary data segments, the format is derived from that of the pure-ASCII Crystallographic Information File (CIF), so that all suitable CIF data items describing the crystallographic experiment and description of any structural results may be included. Embedding of binary data fields makes use of Internet standard MIME headers to facilitate the identification and handling of separate binary components. Where file size or efficiency of processing are not important, the embedded binary data may be ASCII-encoded according to a specified protocol. The resultant file, containing only ASCII character data, is fully compatible with CIF and is known as an image-supporting crystallographic information file (imgCIF). This chapter describes in detail the structure and format of CBF and imgCIF representations, and explains how to convert from one format to the other. This chapter is also available as HTML from the International Tables Online site hosted by the IUCr.
...
The text ###CBF: VERSION must
be present as the very first line of every CBF file


https://link.springer.com/referenceworkentry/10.1107%2F97809553602060000729#:~:text=The%20Crystallographic%20Binary%20File%20(CBF)%20is%20an%20electronic%20file%20supporting,for%20interchange%20between%20collaborating%20groups.

PILATUS CBF
Image files written in the CBF format by a PILATUS detector are by default "minimal" CBF files and contain a PILATUS CBF header. Documentation and specification of this format is available for download with the following link:

Pilatus_CBF_Header_Specification.pdf
220.5 KB
A reference implementation written in Python for parsing of PILATUS CBF headers is available for download with the following link:

pilatus_header.py
7.2 KB
Optionally it is possible to write PILATUS images as full CBF files using a template system developed in collaboration with Graeme Winter from Diamond Light Source. Documentation is provided in the file "cbf_template_HOWTO.txt" which comes with the detector software camserver and is also available here:

cbf_template_HOWTO.txt
10.2 KB

https://www.dectris.com/support/downloads/header-docs/cbf/
