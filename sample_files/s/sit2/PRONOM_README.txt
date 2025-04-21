NOT A LOT OF DOCUMENTATION ON THIS SIT VARIANT. HOWEVER, THE FILE OPENS AS A SIT ARCHIVE AND CONTAINS THE "RLAU" SIGNATURE AT OFFSET 11 THAT IS USED IN ALL SIT FILES. TRID IDENTIFIES IT AS BELOW.


https://file-extension.net/seeker/file_extension_sit

// StuffIt parsing based on http://code.google.com/p/theunarchiver/wiki/StuffItFormat
// Compression 14 based on libxad (http://sourceforge.net/projects/libxad/)

#include "grim/stuffit.h"

#include "common/bitstream.h"
#include "common/debug.h"
#include "common/memstream.h"
#include "common/substream.h"

namespace Grim {

StuffItArchive::StuffItArchive() : Common::Archive() {
	_stream = 0;
}

StuffItArchive::~StuffItArchive() {
	close();
}

// Some known values of StuffIt FourCC's
// EMI Mac in particular uses ST65
static const uint32 s_magicNumbers[] = {
	MKTAG('S', 'I', 'T', '!'), MKTAG('S', 'T', '6', '5'), MKTAG('S', 'T', '5', '0'),
	MKTAG('S', 'T', '6', '0'), MKTAG('S', 'T', 'i', 'n'), MKTAG('S', 'T', 'i', '2'),
	MKTAG('S', 'T', 'i', '3'), MKTAG('S', 'T', 'i', '4'), MKTAG('S', 'T', '4', '6')
	
	https://github.com/YakBizzarro/residual/blob/master/engines/grim/stuffit.cpp

