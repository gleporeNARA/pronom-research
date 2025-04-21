Dirac
Jump to navigationJump to search
FOURCC: BBCD
Company: BBC
Website: http://diracvideo.org
Samples: Libav Samples DiracVideo Samples
Wavelet-based video codec developed by the BBC. The development of a C++ Dirac implementation under the MPL license called libdirac is hosted at SourceForge. The Schrödinger Project is an implementation written in ANSI C89, jointly developed by Fluendo and BBC.

The Schroedinger C implementation has surpassed the quality of the original C++ libdirac one.

FFmpeg supports both encoding and decoding via libschroedinger.

Dirac performance is in the same range as MPEG4 or Theora (quite possibly better for high bitrates) but it is unfortunately much more CPU-intensive. The compression artifacts look different in Dirac compared to the DCT-based codecs, thus a preference may be a matter of personal taste.


Contents
1	About Wavelets
2	Dirac Video Codec
3	SMPTE VC-2 (Dirac Pro)
4	External links
About Wavelets
Continuous Wavelet Transform (CWT) is an alternative to the Windowed Fourier Transform (WFT). The data analysis at different factor or resolutions is the main difference between CWT and WFT, also called multi-resolution analysis (MRA) which is also the justification for the algorithm of the Fast Wavelet Transform (FWT). [In front of Fourier Transform which has only the sin() and cos() functions available, the Wavelet transform has infinite available functions, with that property the access to the information is immediate. -- an odd-looking statement? -- Rl] The WFT projects a time function (the signal) into a A and B function, where A is known as scale and B is known as translation. A and B are also known as 'mother wavelet' and 'child wavelets'. A and B could be Quadrature Mirror Filter (QMF).

The Fast Wavelet Transform is designed to turn a waveform in the time domain into a sequence of coefficients based on an orthogonal basis of small finite waves or wavelets. The transform can be easily extended from time to other domains like images (2D-WT) or videos (3D-WT).

For 1D-WT, applying two QMF Filters L and H would split the original signal into two halves, the low-pass (L) subband (or reference signal) and the high-pass (H) subband (or signal detail). In case of 2D-WT (e.g. Pictures), the FWT is applied to each row and each column generating four sub-bands: low-low (LL), high-low (HL), low-high (LH), high-high (HH). Each subband would contain respectively the following: a reference Picture of the original, the horizontal details, the vertical details, the diagonal details. Each subband is a quarter from the original size. 3D-WT follows the same principle of 2D-WT but generating nine subband. The transform can be applied as many times as it is desired, this is called iterations, the number of iterations isn't limited, that's why there is no limitations of size for the wavelet transform.

Dirac Video Codec
Is an experimental wavelet-based video codec being developed by the BBC. The development of a C++ Dirac implementation under MPL license called libdirac is hosted at SourceForge. The Schröedinger project is an implementation written in ANSI C89, jointly developed by Fluendo and BBC. Libdirac is considered obsolete and the usage of libschroedinger is suggested.

The structure of a Dirac decoder is similar to a well known block oriented codecs but where one would find a DCT/IDCT (Discrete Cosine Transform) a DWT/IDWT (Discrete Wavelet Transform) is found. Different wavelet filters are available for the DWT/IDWT step. Arithmetic coding was selected to provide a better bitstream compression.

https://wiki.multimedia.cx/index.php?title=Dirac


Dirac (video compression format)
From Wikipedia, the free encyclopedia
Jump to navigationJump to search
Dirac
Filename extension	
drc
Developed by	BBC Research & Development
Latest release	2.2.3[1]
(23 September 2008; 12 years ago)
Type of format	Video compression format
Contained by	MPEG-TS, Ogg, AVI, MKV, MOV, MPEG-4 Part 12, etc.
Extended to	VC-2
Standard	SMPTE 2042-1-2009, SMPTE 2042-2-2009 (a sub-set of Dirac)
Dirac is an open and royalty-free video compression format,[2] specification and system developed by BBC Research & Development.[3][4][5][6] Schrödinger and dirac-research (formerly just called "Dirac") are open and royalty-free software implementations (video codecs) of Dirac. Dirac format aims to provide high-quality video compression for Ultra HDTV and beyond,[4] and as such competes with existing formats such as H.264 and VC-1.

The specification was finalised in January 2008, and further developments are only bug fixes and constraints.[1] In September of that year, version 1.0.0 of an I-frame only subset known as Dirac Pro was released[7] and has since been standardised by the SMPTE as VC-2.[5][8] Version 2.2.3 of the full Dirac specification, including motion compensation and inter-frame coding, was issued a few days later.[9] Dirac Pro was used internally by the BBC to transmit HDTV pictures at the Beijing Olympics in 2008.[10][11][12]

The format implementations are named in honour of the theoretical physicists Paul Dirac and Erwin Schrödinger, who shared the 1933 Nobel Prize in physics.


https://en.wikipedia.org/wiki/Dirac_(video_compression_format)
