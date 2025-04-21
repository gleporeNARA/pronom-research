AA3 (ATRAC3 Audio) is a proprietary compressed audio file format developed by the Sony Corporation and used extensively in most of their audio and video editing applications such as Sony Vegas, Sony Sound Forge and Sony ACID. The AA3 format is also a common choice among game developers for storing game sounds and is also used for storing audio data on CDs and MiniDiscs.

Audio data stored in AA3 files is encoded with the Adaptive Transform Acoustic Coding (ATRAC) algorithm. The ATRAC algorithm was originally developed in 1992 by the engineers from Sony, working in close cooperation with engineers from the LSI Corporation, having the aim to create an algorithm that allows encoding at high speeds with the lowest possible amount of power consumption (one of the reasons why, for example, batteries on Sony Walkmans last longer when playing ATRAC files rather than MP3). This led to the succesfull implementation of the ATRAC1 algorithm. With the addition of numerous improvements to the codec, ATRAC3 saw its release in 1999, followed by ATRAC3plus in 2002. AA3 files are based on the ATRAC3 and ATRAC3plus algorithms.

ATRAC3 is a complex sub-band coding algorithm, where the raw signal is split into four sub-bands through three stacked quadrature mirror filters (QMF). Modified discrete cosine transform (MDCT) is then applied to each subband, leading to a further compression of the signal. On the other hand, ATRAC3plus relies on 16-channel QMF filtering, followed by Generalized Harmonic Analysis (GHA) and a 128-point MDCT. Naturally, ATRAC3plus provides better audio quality compared to ATRAC3 and is therefore used on a broader set of devices, such as the Sony PlayStation 3 and Sony Hi-MD Walkmans.

The major downside of the AA3 format is that it lacks decent cross-platform support.


http://dotwhat.net/file/extension/aa3/9251

Detailed Description
This is a demuxer for Sony OpenMG Music files.
Known file extensions: ".oma", "aa3" The format of such files consists of three parts:

"ea3" header carrying overall info and metadata.
"EA3" header is a Sony-specific header containing information about the OpenMG file: codec type (usually ATRAC, can also be MP3 or WMA), codec specific info (packet size, sample rate, channels and so on) and DRM related info (file encryption, content id).
Sound data organized in packets follow the EA3 header (can be encrypted using the Sony DRM!).
LIMITATIONS: This version supports only plain (unencrypted) OMA files. If any DRM-protected (encrypted) file is encountered you will get the corresponding error message. Try to remove the encryption using any Sony software (for example SonicStage). CODEC SUPPORT: Only ATRAC3 codec is currently supported!

Definition in file oma.c.

https://ffmpeg.org/doxygen/0.5/oma_8c.html
