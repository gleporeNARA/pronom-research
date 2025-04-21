Motivation
We created Parquet to make the advantages of compressed, efficient columnar data representation available to any project in the Hadoop ecosystem.

Parquet is built from the ground up with complex nested data structures in mind, and uses the record shredding and assembly algorithm described in the Dremel paper. We believe this approach is superior to simple flattening of nested name spaces.

Parquet is built to support very efficient compression and encoding schemes. Multiple projects have demonstrated the performance impact of applying the right compression and encoding scheme to the data. Parquet allows compression schemes to be specified on a per-column level, and is future-proofed to allow adding more encodings as they are invented and implemented.

Parquet is built to be used by anyone. The Hadoop ecosystem is rich with data processing frameworks, and we are not interested in playing favorites. We believe that an efficient, well-implemented columnar storage substrate should be useful to all frameworks without the cost of extensive and difficult to set up dependencies.

Modules
The parquet-format project contains format specifications and Thrift definitions of metadata required to properly read Parquet files.

The parquet-mr project contains multiple sub-modules, which implement the core components of reading and writing a nested, column-oriented data stream, map this core onto the parquet format, and provide Hadoop Input/Output Formats, Pig loaders, and other Java-based utilities for interacting with Parquet.

The parquet-cpp project is a C++ library to read-write Parquet files.

The parquet-rs project is a Rust library to read-write Parquet files.

The parquet-compatibility project contains compatibility tests that can be used to verify that implementations in different languages can read and write each other’s files.

Building
Java resources can be build using mvn package. The current stable version should always be available from Maven Central.

C++ thrift resources can be generated via make.

Thrift can be also code-genned into any other thrift-supported language.

Releasing
See How to Release.

Glossary
Block (hdfs block): This means a block in hdfs and the meaning is unchanged for describing this file format. The file format is designed to work well on top of hdfs.

File: A hdfs file that must include the metadata for the file. It does not need to actually contain the data.

Row group: A logical horizontal partitioning of the data into rows. There is no physical structure that is guaranteed for a row group. A row group consists of a column chunk for each column in the dataset.

Column chunk: A chunk of the data for a particular column. These live in a particular row group and is guaranteed to be contiguous in the file.

Page: Column chunks are divided up into pages. A page is conceptually an indivisible unit (in terms of compression and encoding). There can be multiple page types which is interleaved in a column chunk.

Hierarchically, a file consists of one or more row groups. A row group contains exactly one column chunk per column. Column chunks contain one or more pages.

Unit of parallelization
MapReduce - File/Row Group
IO - Column chunk
Encoding/Compression - Page
File format
This file and the thrift definition should be read together to understand the format.

4-byte magic number "PAR1"

https://parquet.apache.org/documentation/latest/
