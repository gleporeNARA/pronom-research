We have made the flux image format public information so that emulation authors can finally take advantage of low level data that is easy to read and use.

The flux image format consists of a header containing offsets to tracks.  Each track contains a header with the information about the track data, including bit cell count, rotational speed, and offset to the actual flux data.  The image format was made so that corrupted images could be recovered, losing only the track(s) of data where the corruption occurred, not all of the data.  Because offsets are used for the data, it is possible to make very small images where writing is not required (a write-protected disk).  You can also have a large padded space so that the track can change sizes for writing support.

If you have any questions about the data structure, please ask here so that everyone can learn.

We are willing to help emulation authors implement this format.  This format is being implemented into the FPGA Arcade for low-level disk access so it will be possible to use copy protected disk images that will load just like the original!

The updated image file format specification is located here:

https://www.cbmstuff.com/downloads/scp/s..._specs.txt


https://www.cbmstuff.com/downloads/scp/scp_image_specs.txt
