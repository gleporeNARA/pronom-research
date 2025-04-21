UM0391
User manual
DfuSe File Format Specification
Introduction
The Device Firmware Upgrade specification specifies the contents of a data structure to be
placed at the end of the DFU files, but leaves the definition of the content up to the vendor.
This document describes the format used with the DFU solution from STMicroelectronics

DFU File format
The basic DFU file format to be used with STMicroelectronics DFU solution is based on
three sections; Prefix, Images and Suffix, described as follows:
2.1 DFU Prefix section
The DFU prefix placed as a header file is the first part read by the software application, used
to retrieve the file context, and enable valid DFU files to be recognized. The Prefix buffer is
represented in Big Endian order.
The prefix packet is structured as follows:
● The szSignature field, five-byte coded, presents the file identifier that enables valid
DFU files to be recognized, and incompatible changes detected. This identifier should
be updated when major changes are made to the file format. This field is set to
“DfuSe”.
● The bVersion field, one-byte coded, presents the DFU format revision, The value will be
incremented if extra fields are added to one of the three sections. Software exploring
the file can either treat the file depending on its specified revision, or just test for valid
value.
● The DFUImageSize field, four-byte coded, presents the total DFU file length in bytes.
● the bTargets field, one-byte coded, presents the number of DFU image stored in the
file.

http://rc.fdr.hu/UM0391.pdf
