Contents
This document provides information about the (undocumented yet) format of gradients files in Photoshop.

Note: all multi-byte values, i.e., integer numbers (including C-style 4-character constants), floating-point (double) numbers, and Unicode characters are coded in big-endian format.

Gradients file format
Gradients file
Name	Type	Kind	Description
Gradients.psp	'8BPF'	Gradients file	Adobe Photoshop preferences file containing all the gradients listed in the Preset Manager.
Warning: like most preferences files, the gradients file is not updated in real-time: it is read by the application only once at start-up (launch) time and written back at shut-down (quit) time.
*.grd	'8BGR'	Gradients file	Adobe Photoshop gradients file; generally produced by saving a selected set of gradients from the Preset Manager.

Length (in bytes)	Description	Comments
4	Magic number (= '8BGR')	C-style 4-character constant.

https://web.archive.org/web/20150907065117/http://www.tonton-pixel.com/Photoshop%20Additional%20File%20Formats/gradients-file-format.html
