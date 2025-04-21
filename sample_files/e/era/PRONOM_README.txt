Introduction
The e2store (extension: .e2s) is a simple linear Type-Length-Value file for long-term cold storage of arbitrary items typically found in Ethereum. Entries encoded using serialization techniques used in ethereum 2 in general: SSZ, varint, snappy.

General structure
e2s files consist of repeated type-length-value records. Each record is variable-length, and unknown records can easily be skipped. In particular, e2s files are designed to:

allow trivial implementations that are easy to audit
allow append-only implementations
allow future record types to be added, such as when the chain forks

Writing
e2s files are written record-by-record starting with a version record. Files may be concatenated freely, meaning that the version record may appear multiple times in the file and a single file may have multiple versions.

The version record is used to introduce backwards-incompatible changes to the file format - readers should not attempt to read unknown versions.

When splitting a multi-record file, a version record must appear first in each of the new files.

Known types
Version
type: [0x65, 0x32]
The version type must be the first record in the file. Its type is [0x65, 0x32] (e2 in ascii) and the length of its data field is always 0, thus the first 8 bytes of an e2s file are always [0x65, 0x32, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00].



https://github.com/status-im/nimbus-eth2/blob/613f4a9a50c9c4bd8568844eaffb3ac15d067e56/docs/e2store.md#era-files
