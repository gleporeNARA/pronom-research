Software Resources	


One may take two approaches to writing software for image analysis, depending on what one is required to optimize. One may write in a style which optimizes/minimizes programmer time, or one may write to minimize computer time. In general, for image processing research, computer time is not be a concern (at least not usually), but your time is be far more valuable. For that reason, we follow a programming philosophy which produces correct, operational code in a minimal amount of programmer time.

This objective is accomplished by using the image read and access subroutines in IFS (Image File System). IFS supports any data type and any sort of image size. You may read images off disk using ifspin. This subroutine will figure out the size of the image, how much memory is required, and what sort of computer wrote the image. It will do all necessary data conversions (byte swapping, floating point format conversions, etc.) and read it into your computer in the format native to the machine you are using. You don’t need to know how to do any of this stuff. There is a variety of other routines that make life simpler (isn't that what it is all about?)!

IFS supports almost any data format, multiple frames, multiple dimensions, etc. etc.



https://web.archive.org/web/20030131031729/http://www.ece.ncsu.edu/imaging/Software/index.html

https://www.cambridge.org/core/books/fundamentals-of-computer-vision/image-file-system-ifs-software/709E0052FCDD885160B9A8EB523392E9

