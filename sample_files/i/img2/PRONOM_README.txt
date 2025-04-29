Universal Disk Format (UDF) is a profile of the specification known as ISO/IEC 13346 and ECMA-167[5] and is an open vendor-neutral file system for computer data storage for a broad range of media. In practice, it has been most widely used for DVDs and newer optical disc formats, supplanting ISO 9660. Due to its design, it is very well suited to incremental updates on both recordable and (re)writable optical media. UDF was developed and maintained by the Optical Storage Technology Association (OSTA).

https://en.wikipedia.org/wiki/Universal_Disk_Format

Volume recognition is the first step to make sure this is a UDF volume. It only tells that this is a UDF media but does not tell where the file system metadata. A quick format utility can simply erase the UDF volume by erasing the recognition sequence of the volume. The volume recognition procedure looks for the Volume Recognition Sequence (VRS) from a base address (UDF's term is Volume Recognition Space). For most media, the base address is the start of the media. For multi-session optical media (CD-R, DVD-R, DVD+R, BD-R etc), the base point is the start of the last data session. VRS consists of the following three contiguous sectors which are stored after the first 32KB of the base address:

Beginning Extended Area Descriptor (BEA)

https://sites.google.com/site/udfintro/
