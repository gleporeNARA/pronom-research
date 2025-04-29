9.5 .RData files
The best way to store objects from R is with .RData files. .RData files are specific to R and can store as many objects as you’d like within a single file. Think about that. If you are conducting an analysis with 10 different dataframes and 5 hypothesis tests, you can save all of those objects in a single file called ExperimentResults.RData.

https://bookdown.org/ndphillips/YaRrr/rdata-files.html

class FileTypes(enum.Enum):
    """Type of file containing a R file."""

    bzip2 = "bz2"
    gzip = "gzip"
    xz = "xz"
    rdata_binary_v2 = "rdata version 2 (binary)"
    rdata_binary_v3 = "rdata version 3 (binary)"
    
    https://rdata.readthedocs.io/en/latest/_modules/rdata/parser/_parser.html
