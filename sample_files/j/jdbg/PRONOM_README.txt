The MAP files are usually big, the JCL Installer can compress them into JDBG files, this is done if the option "Create JEDI Debug Information" is selected. These compressed information can be embedded directly into the BPL if the option "Insert JEDI Debug Information in the libraries" is selected.

https://wiki.delphi-jedi.org/wiki/JCL_Packages


https://www.wikidata.org/wiki/Q105857339

ZJDBGPack is a command-line utility that inserts debugging information in ZJDBG format into Delphi executables. It is intended to be used as part of a build process, or be used from the Tools menu in the Delphi IDE.

Downloads and changelog

ZJDBGPack starts from a .MAP file, which is converted into JDBG format (JEDI Project’s JCL debug information format), which is then compressed (in UCL, via DIUCL), and finally inserted as a resource into the executable. This debugging information can be made use of by SamplingProfiler, and is usually about 40% smaller than regular JDBG.



https://www.delphitools.info/other-tools/zjdbgpack/
