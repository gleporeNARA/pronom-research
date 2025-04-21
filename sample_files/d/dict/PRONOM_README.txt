Unicode, formally The Unicode Standard,[note 1][note 2] is an information technology standard for the consistent encoding, representation, and handling of text expressed in most of the world's writing systems. The standard, which is maintained by the Unicode Consortium, defines as of the current version (15.0) 149,186 characters[3][4] covering 161 modern and historic scripts, as well as symbols, thousands of emoji[5] (including in colors), and non-visual control and formatting codes.

Unicode's success at unifying character sets has led to its widespread and predominant use in the internationalization and localization of computer software. The standard has been implemented in many recent technologies, including modern operating systems, XML, JSON, and most modern programming languages, sometimes only in UTF-8 form.

The Unicode character repertoire is synchronized with ISO/IEC 10646, each being code-for-code identical to the other. The Unicode Standard, however, includes more than just the base code. Alongside the character encodings, the Consortium's official publication includes a wide variety of details about the scripts and how to display them: normalization rules, decomposition, collation, rendering, and bidirectional text display order for multilingual texts, and so on.[6] The Standard also includes reference data files and visual charts to help developers and designers correctly implement the repertoire.

Unicode can be stored using several different encodings, which translate the character codes into sequences of bytes. The Unicode Standard defines three encodings but several others exist, mostly variable-length encodings. The most common encodings are the ASCII-compatible UTF-8, the ASCII-incompatible UTF-16 (compatible with the obsolete UCS-2), and the Chinese Unicode encoding standard GB18030 which is not part of The Unicode Standard but is used in China and implements Unicode fully.

https://en.wikipedia.org/wiki/Unicode



/**
 * Format of dictionary .dict data files.
 * Format version 1.0.
 *
 * A dictionary .dict data file contains a byte-serialized BytesTrie or
 * a UChars-serialized UCharsTrie.
 * Such files are used in dictionary-based break iteration (DBBI).
 *
 * For a BytesTrie, a transformation type is specified for
 * transforming Unicode strings into byte sequences.
 *
 * A .dict file begins with a standard ICU data file header
 * (DataHeader, see ucmndata.h and unicode/udata.h).
 * The UDataInfo.dataVersion field is currently unused (set to 0.0.0.0).
 *
 * After the header, the file contains the following parts.
 * Constants are defined in the DictionaryData class.
 *
 * For the data structure of BytesTrie & UCharsTrie see
 * https://icu.unicode.org/design/struct/tries
 * and the bytestrie.h and ucharstrie.h header files.
 
 https://github.com/unicode-org/icu/blob/86193b1b982528ab1a4407e80cd3bdac2e23fc26/icu4c/source/common/dictionarydata.h#L144
