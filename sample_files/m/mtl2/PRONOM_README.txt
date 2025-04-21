SoftQuad Software was a Canadian software company best known for HoTMetaL,[1] the first commercial HTML editor.[2][3][4] It is also known for Author/Editor, the first specialized SGML editor,[5] and Panorama, the first browser plugin for SGML.[6] Panorama demonstrated the need for standardization of SGML on the web,[2] which eventually resulted in the development of the XML specification.[7]

HoTMetaL was one of a series of applications created by SoftQuad for editing, viewing and publishing structured (SGML and XML) content. It was based upon a popular SGML Editor called Author/Editor and has since evolved into XMetaL.

Panorama was described as "A browser for SGML texts. The NCSA (National Center for Supercomputer Applications) includes the [free] version of Panorama into its Mosaic delivery. The Mosaic [browser] will launch Panorama when it encounters any other SGML file than an HTML file. Panorama will have a style editor to define the outlook of documents. The commercial version has additional features like the ability to create annotations and customized bookmarks."[20]

https://en.wikipedia.org/wiki/SoftQuad_Software


1.2.3. Rules files

The rules that determine how elements can be arranged in an
SGML file are described by a set of declarations collectively
known as a document type declaration, or DTD.  HTML files are
no exception to this. HoTMetaL reads a DTD in a special, binary
form called a rules files which contains the same information
as the DTD but in a different format, one which is more efficient
for HoTMetaL to read. It is not necessary for you to know more
details about DTDs and rules files. You just need to be aware
that  HoTMetaL uses a rules file called html.mtl: this file
is located in a directory called rules in the HoTMetaL directory.
Normally there will be no need for you to move this file; if
for some reason you do, the new location of the rules file must
be specified using the rules_path configuration variable--otherwise
HoTMetaL will not be able to find it. For example:

http://webcache.googleusercontent.com/search?q=cache:ZlfQmK1y-cIJ:ftp://ftp.cc.umanitoba.ca/software/pc_html/hotmetal.txt+&cd=1&hl=en&ct=clnk&gl=us&client=ubuntu
