VGM
Jump to navigationJump to search
Company: XVD Corporation (DigitalStream-USA)
Website: http://www.xvdcorp.com/
Extension: vgm, vg2
Samples: http://xvd.bha.co.jp/download/sample.html
VGM (presumably from VideoGraM since originally this format was used for sending short video messages from one user to another) aka XVD (eXtended-play Video Disc) is a format that includes VGM Audio codec and VGM Video codec.

VGM2 Format
This format uses little-endian integers

 4 bytes - "VGM2"
 4 bytes - file size (may be zero)
 4 bytes - duration in milliseconds
 1 byte  - number of streams
 1 byte  - file comment length
 N bytes - file comment (usually "Created by BHA dumper")
 1 bytes - string terminator?
 stream headers
 data packets
 
 https://wiki.multimedia.cx/index.php/VGM
