4
 AFM File Structure
An AFM file has several sections: a ‘header’ of control and global
information for the font program, global writing direction information for the
font program, and several optional sections delimited by Start... and End...
keywords.
StartFontMetricsEndFontMetrics
version
(Required.) These keywords delimit the entire AFM file. The
StartFontMetrics keyword must be the first line in the file, and the
EndFontMetrics keyword must be the last non-empty line in the file.
version is the version number of the AFM format specification used to
generate this file. Fractional increases in the version number indicate minor,
upwards-compatible revisions to the format. Whole-number increases
indicate major, potentially incompatible, changes.


https://www.adobe.com/content/dam/acom/en/devnet/font/pdfs/5004.AFM_Spec.pdf
