COPASI File Format

COPASI uses an XML-based file format; files in this format are usually ending in the extension .cps.

This native file format (CopasiML) is not the same as the SBML format, which COPASI can also import and export. COPASI's native file format stores information about the model but also information that would not fit the SBML schema, such as instructions on what simulations to run, details of plotting, etc.

The schema of COPASI's native file format version 1.0 and its documentation is publicly available, allowing for 3rd-party programs to read, manipulate, and write COPASI files directly. The documentation can be found here and the schema is available in 2 formats:
Relax NG (normative).
XSD Schema.

http://copasi.org/Support/Technical_Documentation/File_Format/
