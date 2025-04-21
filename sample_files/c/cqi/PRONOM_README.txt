CopyQM is a floppy disk copy tool, developed by by Chuck Guzis at Sydex Inc. and introduced in 1987. It is designed to copy floppy disks in various formats. It also can used to create image files from floppy disks as well to rewrite an image file to a physical disk. It was sold by Sydex to NTI in March 2000, now called CopyQM Plus.

CopyQM is often used to save/backup historical computer diskettes.

John Elliot has published a C library called LibDsk to build programs and tools which can handle various disk images. The CopyQM driver is currently a read only driver, so you can read CopyQM images, but not modify or write back. Because I want to use disk images of floppies in an emulator, I need a R/W driver for this image format. Therefore, I have documented the image format and started to write a R/W driver for the LibDsk.
New: John Elliot has implemented the new drvqm driver in version 1.3.4 of its LibDsk library.

https://rio.early8bitz.de/cqm/index.htm

https://rio.early8bitz.de/cqm/cqm-format.pdf
