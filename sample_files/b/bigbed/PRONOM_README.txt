bigBed Track Format
The bigBed format stores annotation items that can be either a simple or a linked collection of exons, much as BED files do. BigBed files are created from BED type files using the program bedToBigBed. The resulting bigBed files are in an indexed binary format. The main advantage of the bigBed files is that only those portions of the files needed to display a particular region are transferred to the Genome Browser server. Because of this, bigBed has considerably faster display performance than regular BED when working with large data sets. The bigBed file remains on your local web-accessible server (http, https, or ftp), not on the UCSC server, and only the portion that is needed for the currently displayed chromosomal position is locally cached as a "sparse file". If you do not have access to a web-accessible server and need hosting space for your bigBed files, please see the Hosting section of the Track Hub Help documentation.

Additional indices can be created for the items in a bigBed file to support item search in track hubs. See Example #3 below for an example of how to build an additional index.

See this wiki page for help in selecting the graphing track data format that is most appropriate for your type of data.

Note that the bedToBigBed utility uses a substantial amount of memory: approximately 25% more RAM than the uncompressed BED input file.

http://genome.ucsc.edu/goldenPath/help/bigBed.html
