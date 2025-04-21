

NIB is the simplest. NBZ is just NIB with LZ-alike compression applied.

NIB files are:

0x100 header
1st 13 bytes ID = MNIB-1541-RAW

Then 2 bytes for each track in the file, first is track number (always starts with 2 (track 1 is not accessible on 1541) and almost always ends with 82 unless file is truncated. The second byte is the detected density in the 4 MSB bits, and the sync flags in the 4 LSB. You can ignore the sync flags as they will be re-detected in the conversion anyway.

Starting at 0x100, it is simple $2000 byte dumps of each track. This contains about 1.2-1.5 revolutions of overlap. That way the cycle can be detected and stitched back together.

It would be nice to have the option to start data at the index signal...

https://c64preservation.com/dp/apps/bbs/dm.php?thread=2068


https://m.wikidata.org/wiki/Q72724891
