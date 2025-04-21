Wiggle Track ASCII Text Format (.wig)
Wiggle files and its bedgraph variant allow you to plot quantitative data as either shades of color (dense mode) or bars of varying height (full and pack mode) on the genome. Both are text files that are easy to create, but need to be converted for actual use by the genome browser.

The bedGraph format is a very similar format for sparse data or data that contains elements of varying size. bedGraph can also be converted to compressed/indexed binary bigWig files. If you have other data to show in addition to the quantitative data, e.g. data you want to show on mouseover or when the user clicks the feature (like GWAS data), you should have a look at bigBed files with the "lollipop" type (contact us for more info). For a list of all possible formats for graphing, see the following wiki page.

Text files in wiggle format can be uploaded as custom tracks as-is to UCSC where they are compressed and stored for some time. But we recommand that you convert them on your own computer to the binary bigWig storage format. You then copy bigWig files onto your own webserver and they are referenced in custom tracks or track hubs via their URL.

Unlike bigWig binar files, wiggle ASCII text files can be uploaded as custom tracks onto our server. After the upload, wiggle data is compressed and stored internally in 128 unique bins. This compression means that there is a minor loss of precision when data is exported from a wiggle track (i.e., with output format "data points" or "bed format" within the Table Browser). For custom tracks, use the bedGraph format if it is important to retain exact data when exporting. However, the size of all custom tracks is limited. For these reasons, we recommend always converting wiggle files to the bigWig storage format and reference these from your custom tracks or track hubs via their URL.

General structure
Wiggle format is line-oriented. For wiggle custom tracks, the first line must be a track definition line (i.e., track type=wiggle_0), 

https://genome.ucsc.edu/goldenPath/help/wiggle.html
