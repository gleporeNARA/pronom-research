The regf signature taken from below documentation, additional signature taken from:

https://github.com/file/file/blob/8220981557cfd23dc432f984bec549abc0cd9f69/magic/Magdir/windows

The Windows Registry is a hierarchical database that stores low-level settings for the Microsoft Windows operating system and for applications that opt to use the registry. The kernel, device drivers, services, Security Accounts Manager, and user interface can all use the registry. The registry also allows access to counters for profiling system performance.

https://github.com/libyal/libregf/blob/master/documentation/Windows%20NT%20Registry%20File%20(REGF)%20format.asciidoc


Base block
The base block is 4096 bytes in length, it contains the following structure in Windows XP (hereinafter, all numbers and bit masks are in the little-endian form, all data units are bytes, unless otherwise mentioned):

Offset	Length	Field	Value(s)	Description
0	4	Signature	regf	ASCII string

https://github.com/msuhanov/regf/blob/master/Windows%20registry%20file%20format%20specification.md#format-of-primary-files
