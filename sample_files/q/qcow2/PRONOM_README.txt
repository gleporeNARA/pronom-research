The QCOW2 is the native format of QEMU emulator. Its acronym means “QEMU Copy-On-Write” version 2. In other words, this format uses the Copy-On-Write (COW) feature. It reduces the space in the original disk. The data is written into disk after a delay and only when it is really needed. It creates several layers that contains copies of the original data. Only the copy will be changed and the original data is kept for a while. This feature is useful for create snapshots and backups of the disk.

QCOW2 Header Structure

The QCOW2 format uses its own file to store snapshots. So the file size increase as long as the snapshots are being saved. The QCOW2 format has its own structure to store informations about snapshots and some useful informations related with the disk.

Lets start with the header of the format. The first 72 bytes of the disk store the header of the image. That structure is set using the big-endian format (that’s why we use functions to convert to little-endian format) and can be defined as:

typedef struct QCowHeader {
    uint32_t magic;
    uint32_t version;
    uint64_t backing_file_offset;
    uint32_t backing_file_size;
    uint32_t cluster_bits;
    uint64_t size; /* in bytes */
    uint32_t crypt_method;
    uint32_t l1_size;
    uint64_t l1_table_offset;
    uint64_t refcount_table_offset;
    uint32_t refcount_table_clusters;
    uint32_t nb_snapshots;
    uint64_t snapshots_offset;
} QCowHeader;
So, what do these attributes mean? Below, one by one is explained.

magic (4 bytes): it contains the characthers ‘Q’, ‘F’ and ‘I’. The last byte has the value 0xfb. This field identifies if the image is a QCOW.
version (4 bytes): it has the version of QCOW used by the disk image. The value can be version 1, version 2 or version 3, the new one.

https://juliofaracco.wordpress.com/2015/02/19/an-introduction-to-qcow2-image-format/
