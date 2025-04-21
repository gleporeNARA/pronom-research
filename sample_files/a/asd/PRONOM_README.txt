SEE _en_assets_asd-file-format-v8_tcm50-54148.pdf FOR FORMAT SPECIFICATIONS.


Overview
The ASD file format is the format for storing both raw data as well as reference data. This format
is created and used by the Indico, RS3 and 21CFR software. The following specification gives a
detailed description of the structure for version 8 of this format.
Data Format
The ASD file format is native to Windows and therefore Intel processors, all data values are
stored in Little-Endian (least significant byte first) order.
Variable length strings are stored in ASCII format which consists of a length prefix and the data
string. The length prefix is a 2 byte integer that defines the length of the string. The string is
followed immediately after the length prefix and is in ASCII format. An empty string will have a
length prefix of 0.
Length
 String
Variable length arrays are stored with a 10 byte length prefix and then the data elements. The
prefix format consists of three sections:
1. 2 byte integer that defines dimension size.
2. 4 byte integer that defines the number of elements.
3. 4 byte unused section.
The data elements follow immediately after the length prefix. An empty array will have a prefix
length of 2 bytes and the dimension size will be 0.
Dimension
 Elements
 Unused
Size
 Length
Data
File Structure
The ASD file layout consists of 12 sections: The following figure displays how these sections are
laid out.
Page 1 of 10
ASD Inc., a PANalytical company
2555 55th Street, Suite 100
Boulder, CO 80301
Phone: (303) 444-6522
Fax: (303) 444-6825
Email: nir.support@panalytical.com
Basic ASD File Layout
Spectrum File Header


Offset
 Size
 Type
3
 char
3
 157
 char
160
 18
 struct tm
178
 1
 byte
179
 1
 byte
180
 1
 byte
181
 1
 byte
182
 4
 time_t (==long)
186
 1
 byte
187
 4
 time_t (==long)
191
 4
 float
195
 4
 float
199
 1
 byte
200
 1
 byte
201
 1
 byte
202
 1
 byte
203
 1
 byte
204
 2
 ushort
206
 128
 APP_DATA
334
 56
 GPS_DATA
390
 4
 ulong
394
 2
 int
396
 2
 int
398
 2
 uint
400
 2
 uint
402
 4
 float
406
 4
 float
410
 4
 float
414
 4
 float
418
 2
 uint
420
 1
 byte
421
 4
 byte
425
 2
 unsigned
427
 2
 unsigned
429
 2
 unsigned
431
 1
 byte
432
 4
 ulong
436
 2
 uint
438
 2
 uint
440
 2
 uint
442
 2
 uint
444
 4
 float
448
 4
 float
452
 27
 float
479
 5
 byte
Description
co[3];
comments[157];
when;
program_version;
file_version;
itime;
dc_corr;
dc_time;
data_type;
ref_time;
ch1_wavel;
wavel_step;
data_format;
old_dc_count;
old_ref_count;
old_sample_count;
application;
channels;
app_data;
gps_data;
it;
fo;
dcc;
calibration;
instrument_num;
ymin;
ymax;
xmin;
xmax;
ip_numbits;
xmode;
flags[4];
dc_count;
ref_count;
sample_count;
instrument;
bulb;
swir1_gain;
swir2_gain;
swir1_offset;
swir2_offset;
splice1_wavelength;
splice2_wavelength;
SmartDetectorType
spare[5];
Comment
// File Version - as6
// comment field
// time when spectrum was saved
// ver. of the programcreatinf this file.
// major ver in upper nibble, min in lower
// spectrum file format version
// Not used after v2.00
// 1 if DC subtracted, 0 if not
// Time of last dc, seconds since 1/1/1970
// see *_TYPE below
// Time of last wr, seconds since 1/1/1970
// calibrated starting wavelength in nm
// calibrated wavelength step in nm
// format of spectrum.
// Num of DC measurements in the avg
// Num of WR in the average
// Num of spec samples in the avg
// Which application created APP_DATA
// Num of channels in the detector
// Application-specific data
// GPS position, course, etc.
// The actual integration time in ms
// The fo attachment's view in degrees
// The dark current correction value
// calibration series
// instrument number
// setting of the y axis' min value
// setting of the y axis' max value
// setting of the x axis' min value
// setting of the x axis' max value
// instrument's dynamic range
// x axis mode. See *_XMODE
// flags(0) = AVGFIX'ed
// flags(1) see below
// Num of DC measurements in the avg
// Num of WR in the average
// Num of spec samples in the avg
// Instrument type. See defs below
// The id number of the cal bulb
// gain setting for swir 1
// gain setting for swir 2
// offset setting for swir 1
// offset setting for swir 2
// wavelength of VNIR and SWIR1 splice
// wavelength of SWIR1 and SWIR2 splice
// Data from OL731 device
// fill to 484 bytes
Definitions:
Spectrum data type (variable data_type at byte offset 186):
#define
#define
#define
#define
RAW_TYPE
REF_TYPE
RAD_TYPE
NOUNITS_TYPE
(byte)0
(byte)1
(byte)2
(byte)3
Page 3 of 10
ASD Inc., a PANalytical company
2555 55th Street, Suite 100
Boulder, CO 80301
Phone: (303) 444-6522
Fax: (303) 444-6825
Email: nir.support@panalytical.com
#define
#define
#define
#define
#define
IRRAD_TYPE
QI_TYPE
TRANS_TYPE
UNKNOWN_TYPE
ABS_TYPE
(byte)4
(byte)5
(byte)6
(byte)7
(byte)8
