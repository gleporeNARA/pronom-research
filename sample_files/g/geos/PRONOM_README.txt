GEOS (later renamed GeoWorks Ensemble, NewDeal Office, and Breadbox Ensemble) is a computer operating environment, graphical user interface (GUI), and suite of application software. Originally released as PC/GEOS, it runs on DOS-based, IBM PC compatible computers. Versions for some handheld platforms were also released and licensed to some companies.[1]

PC/GEOS was first created by Berkeley Softworks, which later became GeoWorks Corporation. Version 4.0 was developed in 2001 by Breadbox Computer Company, limited liability company (LLC), and was renamed Breadbox Ensemble. In 2015, Frank Fischer, the CEO of Breadbox, died and efforts on the operating system stopped until later in 2017 when it was bought by blueway.Softworks.[2][3]

PC/GEOS should not be confused with the 8-bit GEOS product from the same company, which runs on the Commodore 64 and Apple II.

https://en.wikipedia.org/wiki/GEOS_(16-bit_operating_system)

/******************************************************************************
 *               GEOS standard file header (all file types)                   *
 ******************************************************************************/
#define GEOS2_ID 0x53C145C7             // GEOS2 file identification "magic"

typedef struct {                        /*** GEOS2 standard header */
  int ID;                              // GEOS2 id magic: C7 45 CF 53
  char name[GEOS_LONGNAME];             // long filename
  unsigned short class;                       // geos filetype, see SDK docs
  unsigned short flags;                       // attributes
  GEOSrelease release;                  // "release"
  GEOSprotocol protocol;                // protocol/version
  GEOStoken token;                      // file type/icon
  GEOStoken appl;                       // "token" of creator application
  char info[GEOS_INFO];                 // user file info
  char _copyright[24];                  // original files: Copyright notice
  char _x[8];
  PackedFileDate create_date;
  PackedFileTime create_time;           // creation date/time in DOS format
  char password[8];                     // password, encrypted as hex string
  char _x2[44];                         // not yet decoded
} GEOS2header;

https://github.com/bluewaysw/pcgeos/blob/9672d033f192a4fd5103103bf385cc8cd58c48b7/Tools/geodump/geos2.h#L35
