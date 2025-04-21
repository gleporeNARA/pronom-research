Xunlei is a major Chinese corporation with a monopoly on video downloading in China; they allow to download and play all sorts of Chinese TV shows for free but they're all in XV format, which is only supported by a video player Xunlei made. The video is H.264 video. FFmpeg cannot play this. When I try "ffmpeg -i 1.xv" I get the following: ​http://i.imgur.com/PrRNzvs.png
Here is a link to 1.xv: ​https://www.dropbox.com/s/0rlzjm9b1apg0j5/1.xv
1.xv is 180MB, and it's supposed to be a video of about 45 minutes. Thanks!


I have checked out this converter and it is a funny one. It descrambles the actual FLV header way down in the file and replaces the header with an "unknown FLV chunk" (type 255) so it will be properly skipped.
The file format starts with the magic XLVF, seems to have a 32 bit pointer to the actual data at position 8 (e.g. 0x00200000 in the two files). After that a URL to the original .flv follows and perhaps some index data.


https://trac.ffmpeg.org/ticket/3720
