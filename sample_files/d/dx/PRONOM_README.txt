(i) JCAMP Files
Probably the best example of spectral data format this is the Joint Committee on Atomic and Molecular Physical data extension (JCAMP-DX) file, which is a way of formatting spectral data in terms of x,y coordinates. Many spectrometers can now export their data files directly into JCAMP format. Specialised graphical viewers (such as JCAMP data viewer) have been developed which can then display these files at a later date, and manipulate them offline. For example, the spectra can be expanded or shrunk, viewed on different scales, and the exact position of peaks and troughs can be determined.

JCAMP files are given the extrension .jdx, and an example of such a file can be seen below.

<##TITLE= Simplified IR Spectrum of water
##JCAMP-DX= 4.24 $$ Written by Drive for Windows v 1.39
##DATA TYPE= SPECTRUM
##ORIGIN= Gaussian 94 Frequencies
##OWNER= P.W. May
##XUNITS= Wavenumber (CM^-1)
##YUNITS = Intensity (Arb. Units)
##PEAK ASSIGNMENT= (XYWA)
##NPOINTS=822
##XYDATA=(X+(Y..Y))
500,-0.0001
501,-0.0002
502,-0.0002
503,-0.0003
504,-0.0002
505,-0.0003
[...many points removed for brevity]
4498,0.0000
##END=

The ## signs signify a comment, and these lines give extra information about how the spectrum was created (either experimentally or in simulation), and by whom. The main data can be formatted in a number of different styles, and in this case the attribute ##XYDATA=(X+(Y..Y)) defines it as a series of increasing x,y data points, which then follow as a set of comma-separated pairs on separate lines. More information about the exact specification for the contents and attributes of JCAMP files can be found in Ref.[12] .

http://www.chm.bris.ac.uk/~paulmay/temp/pcc/jcamp.htm

http://www.jcamp-dx.org/
