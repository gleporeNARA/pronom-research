Java Object Serialization
File Format
Name	Java Object Serialization
Ontology	
Electronic File Formats
Serialization
Java Object Serialization
Released	1997
Java Object Serialization, often referred to by third-party sources as simply Java serialization, is the native serialization format for the Java programming language, analogous to the Pickle format for Python. It appears to have been introduced in 1997[1], with version 1.1.[2]

Contents [hide] 
1 Versions
2 Identification
3 Specifications
4 References
Versions
There are three different things in or attributes of a Java Object Serialization stream that are referred to by "version":

"protocol version", which corresponds to the usual meaning of "version";
an integer field in the header called "STREAM_VERSION" or just "version", which has been 5[3][4] since at least JDK 1.1.4[5], released between 1997 and 1998[1], meaning that it has had the value of 5 for almost all of the format's existence;
and the "version" not of the Object Serialization format, but of whatever format is built on top of it[6].
The "protocol version" can be either 1 or 2. The second version was made standard in the Java platform in version 1.2[2] in December 1998[1]. Java versions at and above 1.1.7 can read both versions, but will default to writing and reading 2[2]. There is nothing in the stream to indicate the "protocol version".

Identification
Both versions begin with the hexadecimal ac ed[4][3].



http://fileformats.archiveteam.org/wiki/Java_Object_Serialization
