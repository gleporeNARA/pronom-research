What is an .FIT file?
.FIT is Garmin Activity File

A FIT file is a GIS data file used by Garmin GPS sport devices and Garmin software. It contains location and time information logged on the GPS device during a run, bike race, or other athletic event. FIT files can be uploaded to the Garmin Connect Web service for personal fitness tracking.

FIT files allow users to track their physical activities over time. For example, users can upload data to Garmin Connect each time they run and review traveled paths on a map and the total distance, duration, and burned calories for each activity.

NOTE: The FIT format is similar to the .TCX format.

https://whatext.com/fit

File Header
The file header provides information about the FIT File. The minimum size of the file header is 12 bytes including protocol and profile version numbers, the amount of data contained in the file and data type signature. The 12 byte header is considered legacy, using the 14 byte header is preferred. The header size should always be decoded before attempting to interpret a FIT file, Garmin International, Inc. may extend the header as necessary. Computing the CRC is optional when using a 14 byte file header, it is permissible to set it to 0x0000. Including the CRC in the file header allows the CRC of the file to be computed as the file is being written when the amount of data to be contained in the file is not known. Table 1 outlines the FIT file header format.

Table 1. Byte Description of File Header

Byte	Parameter	Size (Bytes)	Description
0	Header Size	1	Indicates the length of this file header including header size. Minimum size is 12. This may be increased in future to add additional optional information
1	Protocol Version	1	Protocol version number as provided in SDK
2	Profile Version LSB	2	Profile version number as provided in SDK
3	Profile Version MSB		
4	Data Size LSB	4	Length of the Data Records section in bytesDoes not include Header or CRC
5	Data Size		
6	Data Size		
7	Data Size MSB		
8	Data Type Byte[0]	4	ASCII values for “.FIT”. A FIT binary file opened with a text editor will contain a readable “.FIT” in the first line.

https://developer.garmin.com/fit/protocol/
