Universal Scene Description
Universal Scene Description (USD) is an efficient, scalable system for authoring, reading, and streaming time-sampled scene description for interchange between graphics applications.

For more details, please visit the web site here.


https://github.com/PixarAnimationStudios/OpenUSD

    // _BootStrap structure.  Appears at start of file, houses version, file
    // identifier string and offset to _TableOfContents.
    struct _BootStrap {
        _BootStrap();
        explicit _BootStrap(Version const &);
        uint8_t ident[8]; // "PXR-USDC"
        uint8_t version[8]; // 0: major, 1: minor, 2: patch, rest unused.
        int64_t tocOffset;
        int64_t _reserved[8];
    };
    
    https://github.com/PixarAnimationStudios/OpenUSD/blob/ebac0a8b6703f4fa1c27115f1f013bb9819662f4/pxr/usd/usd/crateFile.h#L441-L450
