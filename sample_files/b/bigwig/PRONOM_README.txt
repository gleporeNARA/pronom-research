bigWig Track Format
The bigWig format is useful for dense, continuous data that will be displayed in the Genome Browser as a graph. BigWig files are created from wiggle (wig) type files using the program wigToBigWig. Alternatively, bigWig files can be created from bedGraph files, using the program bedGraphToBigWig.

The bigWig files are in an indexed binary format. The main advantage of this format is that only those portions of the file needed to display a particular region are transferred to the Genome Browser server. Because of this, bigWig files have considerably faster display performance than regular wiggle files when working with large data sets. The bigWig file remains on your local web-accessible server (http, https or ftp), not on the UCSC server, and only the portion needed for the currently displayed chromosomal position is locally cached as a "sparse file". If you do not have access to a web-accessible server and need hosting space for your bigWig files, please see the Hosting section of the Track Hub Help documentation.

Wiggle data must be continuous and consist of equally sized elements. If your data is sparse or contains elements of varying sizes, use the bedGraph format instead of the wiggle format. If you have a very large bedGraph data set, you can convert it to the bigWig format using the bedGraphToBigWig program. For details, see Example #3 below. Refer to this wiki page for help in selecting the graphing track data format most appropriate for the type of data you have.

Note that the wigToBigWig utility uses a substantial amount of memory: approximately 50% more memory than that of the uncompressed wiggle input file. While running the wigToBigWig utility, we recommend that you monitor the system's memory usage with the top command. The bedGraphToBigWig utility uses about 25% more RAM than the uncompressed bedGraph input file.

https://genome.ucsc.edu/goldenPath/help/bigWig.html
