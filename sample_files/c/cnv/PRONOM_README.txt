Unicode, formally The Unicode Standard,[note 1][note 2] is an information technology standard for the consistent encoding, representation, and handling of text expressed in most of the world's writing systems. The standard, which is maintained by the Unicode Consortium, defines as of the current version (15.0) 149,186 characters[3][4] covering 161 modern and historic scripts, as well as symbols, thousands of emoji[5] (including in colors), and non-visual control and formatting codes.

Unicode's success at unifying character sets has led to its widespread and predominant use in the internationalization and localization of computer software. The standard has been implemented in many recent technologies, including modern operating systems, XML, JSON, and most modern programming languages, sometimes only in UTF-8 form.

The Unicode character repertoire is synchronized with ISO/IEC 10646, each being code-for-code identical to the other. The Unicode Standard, however, includes more than just the base code. Alongside the character encodings, the Consortium's official publication includes a wide variety of details about the scripts and how to display them: normalization rules, decomposition, collation, rendering, and bidirectional text display order for multilingual texts, and so on.[6] The Standard also includes reference data files and visual charts to help developers and designers correctly implement the repertoire.

Unicode can be stored using several different encodings, which translate the character codes into sequences of bytes. The Unicode Standard defines three encodings but several others exist, mostly variable-length encodings. The most common encodings are the ASCII-compatible UTF-8, the ASCII-incompatible UTF-16 (compatible with the obsolete UCS-2), and the Chinese Unicode encoding standard GB18030 which is not part of The Unicode Standard but is used in China and implements Unicode fully.

https://en.wikipedia.org/wiki/Unicode

The Data Library Customizer displays the data items in a tree view. Primarily, all data items are
selected. It is possible to deselect all items by expanding the advanced options and choosing the
Deselect All button. Expanding a tree shows all available items of that type. It is possible to reduce
the amount of displayed items by using the Filter Items button of the advanced options. For example, to reduce the tree view to show only items forJapanese countries, enterthe string "japanese"
in the text box and choose the FilterItems button. Now, several items can be selected or deselected.
All selected items are later added to the delivered base ICU data library and will be available for
Natural.
The second possibility is to obtain or create a .ucm (source) mapping data file for the desired converter. A large archive of converter data is maintained by the ICU team. This archive is versionindependent. If the desired conversion table is not available in the archive, it is possible to create
a new one. For the documentation of the layout of converter mapping tables (.ucm files), refer to
the chapter Conversion Data of the ICU User Guide(http://userguide.icu-project.org/conversion/data).
It is recommended to take a similar mapping table from the archive, rename it and adjust it to the
new requirements.
Note: It is forbidden to change the character mapping of an existing converter. In fact, this
is the creation of a new converter and requires a new converter name to avoid confusion.
Detailed information on how to customize the ICU data library is provided in the readme.txt file
which is part of the downloaded zip file.
Compiling Conversion Tables and Locales
Converter source files are compiled into binary converter files (.cnv files) by using the makeconv.exe
tool. It is possible to specify more than one converter.
Example:
Command Description
Compile the Danish character mapping table of code page IBM-1142
into the binary format. With a subsequent step, the output file
ibm-1142_P100-1997.cnv can be added to the new data library package.
makeconv ↩
ibm-1142_P100-1997.ucm
Converters obtained from ICU are already registered in the alias name table. No additional step
is necessary. If the converter source file is a user-defined file, there will be no appropriate entry
in the alias name table. In this case, it is necessary to register the new code page in the alias name
table. Open the text file convrtrs.txt and append an appropriate entry at the end of that file in the
section "User defined code pages". The name of the code page is required and the IANA name is
optional. The string { IANA* } declares iana-name as a IANA name. Each user-defined code page
requires an entry in the alias name table.

https://documentation.softwareag.com/natural/nat827dmf/print/unicode.pdf
