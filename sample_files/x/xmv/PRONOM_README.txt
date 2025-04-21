XMV
Jump to navigationJump to search
Extension: xmv
Company: Microsoft
Samples: http://samples.mplayerhq.hu/game-formats/xmv/
XMV is the audio/video container format used on the Microsoft Xbox console. It is reportedly similar to ASF and typically contains WMV2 video at 640x480 29.97, and CBR audio at 128k.

An open source demuxer exists in FFmpeg/libav: http://git.videolan.org/gitweb.cgi/ffmpeg.git/?p=ffmpeg.git;a=blob_plain;f=libavformat/xmv.c

Copyrighted Microsoft source code for a decoder/demuxer is also available: http://sourceforge.net/tracker/index.php?func=detail&aid=1097094&group_id=53761&atid=471491

See also http://thread.gmane.org/gmane.comp.video.ffmpeg.devel/25207/focus=25224 and http://www.maxconsole.net/?mode=news&newsid=411 for hints/tips

File Format
All multi-byte numbers of little endian.

bytes 0-11    unknown
bytes 12-15   'xobX' ('Xbox' spelled backwards)

https://wiki.multimedia.cx/index.php/XMV
