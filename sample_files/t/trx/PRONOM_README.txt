Broadcom devices .trx firmware packaging: format specification
.trx file format is widely used for distribution of firmware updates for Broadcom devices. The most well-known are ASUS routers.

Fundamentally, it includes a footer which acts as a safeguard against installing a firmware package on a wrong hardware model or version, and a header which list numerous partitions packaged inside a single .trx file.

trx files not necessarily contain all these headers.

header:
    seq:
      - id: magic
        contents: "HDR0"
      - id: len
        type: u4
        
        
http://formats.kaitai.io/broadcom_trx/

https://xinu.cs.mu.edu/index.php/TRX_header
