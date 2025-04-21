Introduction
Apache Hadoop supports text files which are quite commonly used for storing the data, besides text files it also supports binary files and one of these binary formats are called Sequence Files. Hadoop Sequence File is a flat file structure which consists of serialized key-value pairs. This is the same format in which the data is stored internally during the processing of the MapReduce tasks.

Sequence files can also be compressed for space considerations and based on these compression type users, Hadoop Sequence files can be of three types:
Uncompressed
Record Compressed
Block Compressed
2. File Format
Sequence files in Hadoop similar to other file formats consists of a Header at the top. This header consists of all the meta-data which is used by the file reader to determine the format of the file or if the file is compressed or not.

2.1 File Header
File header consists of the following data:

Sequence File Header
version - A byte array: 3 bytes of magic header 'SEQ', followed by 1 byte of actual version no. (e.g. SEQ4 or SEQ6)

https://examples.javacodegeeks.com/enterprise-java/apache-hadoop/hadoop-sequence-file-example/

https://cwiki.apache.org/confluence/display/HADOOP2/SequenceFile
