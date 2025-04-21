HDT Binary Format
DRAFT VERSION 03/07/2015
In the following we provide a technical description of the HDT binary serialization format (v.1.0).

Important note: Initial HDT specifications were published on 30 March 2011 as a W3C Member Submission. Since then, we have continued working to improve the format. This document in aimed at superseding the binary format details from the W3C submission and it is the format followed by all the tools and libraries provided in this site.

For a brief overview of HDT read “What is HDT”, or “HDT Internals” for a brief technical overview of how HDT works internally.

1. Introduction
2. Control Information
3. Header
4. Dictionary
5. Triples

1. Introduction
HDT is a binary format that represents RDF Data in a compact manner. This document specifies the structure of an HDT file, including the headers, subsections and all details to implement an HDT reader/generator in any language / platform.

The HDT file is composed by three parts:

The Header, that provides metadata about the dataset in plain RDF format.
The Dictionary, that provides a mapping between strings and unique identifiers (IDs).
The Triples, that encodes the RDF graph using IDs.
Each HDT file starts with a global “control information” section, and then one header, one dictionary and one triples section. Each section has another “control information” at the beginning, followed by section-specific internal data structures.

All multibyte fields are little endian, unless specified otherwise.

We use CRC (Cyclic Redundancy Code) to detect corrupted data within the file. We use:

CRC8-CCIT. With polynom x^8 + x^2 + x + 1, in hex: 0x07
CRC16-ANSI. With polynom x^16 + x^15 + x^2 + 1, in hex: 0x8005
CRC32C. With polynom x^32 + x^28 + x^27 + x^26 + x^25 + x^23+ x^22 + x^20 + x^19 + x^18 + x^14 + x^13+ x^11 + x^10 + x^9 + x^8 + x^6 + 1, in hex: 0x1EDC6F41.

2. Control Information
It is a preamble that describes a chunk of information.

HDT Cookie	Control Type	Format	 [Properties]	CRC
HDT Cookie: The magic keyword ‘$HDT’, as four ASCII characters (No Null terminated).

https://www.rdfhdt.org/hdt-binary-format/
