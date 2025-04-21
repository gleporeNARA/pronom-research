UBI is a general purpose flash management layer which has similar functionality as the Logical Volume
Manager. The name was created with the picture of Unsorted Block Images in mind and accidentally is
also a Latin word, which means: where.
The basic idea is that the UBI layer provides the management for multiple logical volumes, which can
contain either static data or dynamic contents e.g file systems.
The management of multiple logical volumes on one or more flash devices of the same type requires the
following functionality:
• Bad block management
• Wear levelling across the device(s)
• Logical to physical block mapping
• Volume information storag

magic The magic number to identify the erase count header. The value of this magic
number is 0x55424923, which is ASCII: "UBI#".

http://linux-mtd.infradead.org/doc/ubidesign/ubidesign.pdf
