What are DLIS files?
In 1991, the American Petroleum Institute introduced the Digital Log Interchange Standard (DLIS) format as their Recommended Practice 66 (API RP66). This original version of the standard has now become the standard format for well log data. (The second version of the DLIS standard from 1996 never really caught on.)

Sets, frames, and channels
Well log plot
Five DLIS channels from a log file in the well Volve 15/9-F-11 B. The two channels in the left column have one dimension (depth), whereas those in the other three columns have two dimensions (depth and azimuthal angle).
We can divide the content of DLIS files into two main components, namely sets and frames.

A DLIS set is basically a table of data that describes the logging situation. For example, one set might specify the tools used in the logging run. Another set might specify which frames are available in the file. Other sets may specify the parameters used while logging and processing the data.

https://erlend-viggen.no/dlis-files/

/* hexdump -vCn 80 in.dlis v1
 * 000  20 20 20 31 56 31 2e 30  30 52 45 43 4f 52 44 20  |   1V1.00RECORD |
 * 010  38 31 39 32 44 65 66 61  75 6c 74 20 53 74 6f 72  |8192Default Stor|
 * 020  61 67 65 20 53 65 74 20  20 20 20 20 20 20 20 20  |age Set         |
 * 030  20 20 20 20 20 20 20 20  20 20 20 20 20 20 20 20  |                |
 * 040  20 20 20 20 20 20 20 20  20 20 20 20 20 20 20 20  |                |
 *
 * A well-formatted whitespace padded storage-unit-label for dlis v1. The
 * fields, with their respective sizes:
 *
 * Storage Unit Sequence Number  4
 * DLIS Version                  5
 * Storage Unit Structure        6
 * Maximum Record Length         5
 * Storage Set Identifier       60
 */
 
 https://github.com/equinor/dlisio/blob/4120f10119e3497a4769c50e1f5c859624cb91c9/lib/src/dlis/dlisio.cpp#L107
