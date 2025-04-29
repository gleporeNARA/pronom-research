Flow Cytometry Standard (FCS)
The flow cytometry data file standard provides the specifications needed to completely describe flow cytometry data sets within the confines of the file containing the experimental data.

In 1984, the first Flow Cytometry Standard format for data files was adopted as FCS 1.0. This standard was modified in 1990 as FCS 2.0 and again in 1997 as FCS 3.0. We report here on the next generation Flow Cytometry Standard data file format. FCS 3.1 is a minor revision based on suggested improvements from the community. The unchanged goal of the Standard is to provide a uniform file format that allows files created by one type of acquisition hardware and software to be analyzed by any other type.

The FCS 3.1 standard retains the basic FCS file structure and most features of previous versions of the standard. Changes included in FCS 3.1 address potential ambiguities in the previous versions and provide a more robust standard. The major changes include simplified support for international characters and improved support for storing compensation. The major additions are support for preferred display scale, a standardized way of capturing the sample volume, information about originality of the data file, and support for plate and well identification in high throughput, plate based experiments.

https://isac-net.org/page/Data-Standards

3 File Segments
3.1 HEADER Segment
3.1.1
The primary purpose of the HEADER segment is to describe the location of the other segments in
the data set. The HEADER segment begins at byte offset zero from the beginning of the data set.
The first six bytes in the HEADER segment comprise the version identifier (FCS3.1). Note that
there is no space character between the FCS and the 3.1 in the identifier. The next 4 bytes (6 - 9)
are occupied by space characters (ASCII 32). Following the identifier are at least three pairs of
ASCII-encoded integers indicating the byte offsets for the start and end (=last byte of) of the
primary TEXT segment, the DATA segment, and the ANALYSIS segment, respectively. The byte
offsets are referenced to the beginning of the data set. Under FCS 3.1 these offsets remain
limited to 8 bytes. Each ASCII encoded integer offset is right justified in its 8 byte space. The first
byte offset (bytes 10 - 17) is that to the start of the primary TEXT segment. The next byte offset
(bytes 18 - 25) is that for the last byte of the primary TEXT segment. The next offset (bytes 26 -
33) is that for the start of the DATA segment. The byte offset for the last byte of the DATA
segment occupies bytes 34 - 41. That for the start of the ANALYSIS segment occupies bytes 42...

https://onlinelibrary.wiley.com/action/downloadSupplement?doi=10.1002%2Fcyto.a.20825&file=CYTO_20825_sm_suppinfo-1.pdf
