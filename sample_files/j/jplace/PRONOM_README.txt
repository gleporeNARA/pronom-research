Specification
Files using the format described in this paper will use the .jplace suffix, which is short for JSON placement.

The basic types in a JSON file are Array, Boolean, Number, Object, String, and null. These are familiar terms except Object, which is a list of colon separated key-value pairs, where the keys are strings and the values are arbitrary types. A JSON file contains a single JSON object.

In .jplace files, the fundamental object contains a list of four keys: tree, fields, placements, metadata, and version. We will describe each of these in succession, but this need not correspond to their order in the JSON object. Indeed, the order of key-value pairs in a JSON object is unspecified.

Tree.
To represent the tree, we extend the well-known Newick file format. In that format, commas and parentheses are used to display the structure of the tree. The taxon names (leaf labels) are inserted as plain text. It is also common to label internal nodes with strings appearing after the closing of a parenthesis. It is also possible to label edges of the tree with strings enclosed in square brackets. For example, the tree

Other keys
There are also two other keys in the fundamental JSON object. The first, version, is mandatory, and indicates an integer version number of the format. The version described in this paper is 3. 

https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0031009
