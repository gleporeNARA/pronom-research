NOTE: LIKE MANY AUDIO FORMATS, THIS FORMAT ALLOWS FOR LOTS OF DIFFERENT VALUES FOR THINGS LIKE SAMPLE RATE. THE SUBMITTED SIGNATURE MATCHES MOST OF THE FREQUENTLY USED VARIABLES IN A COUPLE OF FILES. THE SIGNATURE MATCHES ALL KNOWN EXAMPLES AS WELL AS SEVERAL SPECIALLY CREATED ONES WITH THE SOFTWARE.


VLF Receiver Software Toolkit
A modular software toolkit for timestamped signal processing and storage.
Command line driven, scripted processing;
Precision timestamped capture and processing;
Streamable packeted signal streams;
Whistler detection;
Signal database;
TOGA measurement;
Linux, FreeBSD, OpenBSD;
Open source;
Real-time, post-processing, or simulations;
Distributed pipelines, built-in networking;
SID monitoring with phase and bearing;
Runs on PC, Raspberry Pi, BeagleBone;
SDR-IQ and RTL2832U;
Designed for VLF radio signal processing, it also has applications for meteor forward scatter, seismographic and natural radioactivity recording, ELF and magnetometers, radio astronomy, bat detection, amateur radio, and other projects which require precision timestamps preserved through signal capture, storage, and post-processing.

The software is suitable for heavy-duty post processing of recorded data, and for remote or headless embedded data capture in industrial and scientific applications.

http://abelian.org/vlfrx-tools/

The header structures for non-compressed streams are specified below (as C sourcecode) :

typedef struct VT_BLOCK  // compatible with VT_BLOCK defined in vlfrx-tools-0.7c/vtlib.h
{                        // DON'T MODIFY - keep compatible with Paul's VLF Tools !
   int32_t  magic;     // should contain VT_MAGIC_BLK = 27859 = Data block header
#   define VT_MAGIC_BLK 27859
   uint32_t flags;     // See VT_FLAG_* below
   uint32_t bsize;     // Number of frames per block
   uint32_t chans;     // Number of channels per frame;
   uint32_t sample_rate;   // Nominal sample rate
   uint32_t secs;      // Timestamp, seconds part
   uint32_t nsec;      // Timestamp, nanoseconds part
   int32_t  valid;     // Set to one if block is valid
   int32_t  frames;    // Number of frames actually contained
   int32_t  spare;
   double   srcal;     // Actual rate is sample_rate * srcal (8 byte IEEE double precision float)
} T_VT_Block;

// Bit definitions for VT_BLOCK and VT_BUFFER flags field. Copied from vlfrx-tools/vtlib.h :
#define VTFLAG_RELT    (1<<0)   // Timestamps are relative, not absolute
#define VTFLAG_FLOAT4  (1<<1)   // 4 byte floats  (8 byte default)
#define VTFLAG_FLOAT8  0
#define VTFLAG_INT1    (2<<1)   // 1 byte signed integers
#define VTFLAG_INT2    (3<<1)   // 2 byte signed integers
#define VTFLAG_INT4    (4<<1)   // 4 byte signed integers
#define VTFLAG_FMTMASK  (VTFLAG_FLOAT4 | VTFLAG_INT1 | VTFLAG_INT2 | VTFLAG_INT4)   // Mask for format bits


typedef struct tStreamHeader
{
   uint32_t dwPattern8000; // pattern 0x80008000 (0x00 0x80 0x00 0x80, little endian order),
                           // never appears in the 16-bit signed integer samples because
                           // THEIR range is limited to -32767 ... +32767 .
                           // Also very unlikely to appear in a stream of 32-bit floats.
#  define STREAM_HDR_PATTERN 0x80008000
   uint32_t nBytes;        // total size of any header, required for stream reader
                           // to skip unknown headers up to the next raw sample .
                           // Must always be a multiple of FOUR, to keep things aligned.
      // Example: nBytes = 4*4 + sizeof(VT_BLOCK) = 16 + 10*4+8 = 64 bytes .
      // (assuming that 'int' in struct VT_BLOCK is, and will always be, 32 bit)
   uint32_t dwReserve;     // 'reserved for future use' (and for 8-byte alignment)
   uint32_t dwStructID;    // 0=dummy,
                           // 1=the rest is a VT_BLOCK as defined in vlfrx-tools-0.7c/vtlib.h
                           // (etc... more, especially headers with GPS lat/lon/masl will follow)
#  define STREAM_STRUCT_ID_NONE     0
#  define STREAM_STRUCT_ID_VT_BLOCK 1
} T_StreamHeader;

typedef struct tStreamHdrUnion
{ T_StreamHeader header;
  union
   { T_VT_Block  vtblock;  // used when header.dwStructID == STREAM_STRUCT_ID_VT_BLOCK
   }u;
} T_StreamHdrUnion;

https://www.qsl.net/dl4yhf/speclab/webstreams.htm
