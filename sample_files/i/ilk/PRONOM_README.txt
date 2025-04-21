.Ilk Files as Linker Input
￼ ￼ ￼ ￼ ￼
When linking incrementally, LINK updates the .ilk status file that it created during the first incremental link. This file has the same base name as the .exe file or the .dll file, and it has the extension .ilk. During subsequent incremental links, LINK updates the .ilk file. If the .ilk file is missing, LINK performs a full link and creates a new .ilk file. If the .ilk file is unusable, LINK performs a nonincremental link. For details about incremental linking, see the Link Incrementally (/INCREMENTAL) option.

https://docs.microsoft.com/en-us/cpp/build/reference/dot-ilk-files-as-linker-input?view=msvc-160


.ilk files are intermediary files created by the linker during the development cycle. .ilk files serve the purpose of incremental linking. If the linker does not find and .ilk file when trying to do incremental linking, then it will do a full linking and reproduce the .ilk file. Incremental linking is meant to speed up the linking process. You can safely delete .ilk files.

https://stackoverflow.com/questions/10867186/why-do-i-need-ilk-pdb-and-exp-files
