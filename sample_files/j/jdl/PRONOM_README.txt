Reference: the *.jld HDF5 format
This is intended as a brief "reference standard" describing the structure of the HDF5 files created by JLD. This may be of value to others trying to read such files from other languages. If you're interested in understanding the format, it is highly recommended to run the script test/jld.jl, which generates a sample file called test.jld in your temporary directory (e.g., /tmp). This file can then be inspected with h5dump.

Major structural elements
Files created using jldopen have a 512-byte header, which begins with a sequence of characters similar to "Julia data file (HDF5), version 0.0.0". However, note that we also support opening a pre-existing "plain" HDF5 file with jldopen(filename, "r+"); new items will be written using *.jld formatting conventions. Such files will lack the 512-byte header.
Each Julia object is stored as a dataset; groups are intentionally saved for "user structure." Complex objects are therefore stored by making use of HDF5's reference features. To support referencing, there are two reserved group names, /_refs and /_types (see below).
Each dataset has at least a julia_type attribute, consisting of a string used to encode its type. Other reserved attribute names: julia_format, CompositeKind, Module, TypeParameters. (The last three are specific to writing CompositeKinds.)

https://github.com/JuliaIO/JLD.jl/blob/master/doc/jld.md
