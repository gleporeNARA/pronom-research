PUID 939 and 940 can be replaced by the attached signature, which matches all current versions of compiled Python code. Although the specific version matters (in terms of being usable with any given installation of Python) I'm not sure we need to create 103 separate PRONOM PUIDs to cover them all. All possible magic numbers are below, taken from https://github.com/file/file/blob/2b66ae67281848c411000005936bbbbf5acb459e/magic/Magdir/python

.pyc files are created by the Python interpreter when a .py file is imported. They contain the "compiled bytecode" of the imported module/program so that the "translation" from source code to bytecode (which only needs to be done once) can be skipped on subsequent imports if the .pyc is newer than the corresponding .py file, thus speeding startup a little. But it's still interpreted. Once the *.pyc file is generated, there is no need of *.py file, unless you edit it.

https://www.tutorialspoint.com/What-are-pyc-files-in-Python

http://effbot.org/pyfaq/how-do-i-create-a-pyc-file.htm

https://nedbatchelder.com/blog/200804/the_structure_of_pyc_files.html



0       belong          0x02099900      python 1.0 byte-compiled
0       belong          0x03099900      python 1.1/1.2 byte-compiled
0       belong          0x892e0d0a      python 1.3 byte-compiled
0       belong          0x04170d0a      python 1.4 byte-compiled
0       belong          0x994e0d0a      python 1.5 byte-compiled
0       belong          0xfcc40d0a      python 1.6 byte-compiled
0       belong          0xfdc40d0a      python 1.6 byte-compiled
0       belong          0x87c60d0a      python 2.0 byte-compiled
0       belong          0x88c60d0a      python 2.0 byte-compiled
0       belong          0x2aeb0d0a      python 2.1 byte-compiled
0       belong          0x2beb0d0a      python 2.1 byte-compiled
0       belong          0x2ded0d0a      python 2.2 byte-compiled
0       belong          0x2eed0d0a      python 2.2 byte-compiled
0       belong          0x3bf20d0a      python 2.3 byte-compiled
0       belong          0x3cf20d0a      python 2.3 byte-compiled
0       belong          0x45f20d0a      python 2.3 byte-compiled
0       belong          0x59f20d0a      python 2.4 byte-compiled
0       belong          0x63f20d0a      python 2.4 byte-compiled
0       belong          0x6df20d0a      python 2.4 byte-compiled
0       belong          0x6ef20d0a      python 2.4 byte-compiled
0       belong          0x77f20d0a      python 2.5 byte-compiled
0       belong          0x81f20d0a      python 2.5 byte-compiled
0       belong          0x8bf20d0a      python 2.5 byte-compiled
0       belong          0x8cf20d0a      python 2.5 byte-compiled
0       belong          0x95f20d0a      python 2.5 byte-compiled
0       belong          0x9ff20d0a      python 2.5 byte-compiled
0       belong          0xa9f20d0a      python 2.5 byte-compiled
0       belong          0xb3f20d0a      python 2.5 byte-compiled
0       belong          0xb4f20d0a      python 2.5 byte-compiled
0       belong          0xc7f20d0a      python 2.6 byte-compiled
0       belong          0xd1f20d0a      python 2.6 byte-compiled
0       belong          0xd2f20d0a      python 2.6 byte-compiled
0       belong          0xdbf20d0a      python 2.7 byte-compiled
0       belong          0xe5f20d0a      python 2.7 byte-compiled
0       belong          0xeff20d0a      python 2.7 byte-compiled
0       belong          0xf9f20d0a      python 2.7 byte-compiled
0       belong          0x03f30d0a      python 2.7 byte-compiled
0       belong          0x04f30d0a      python 2.7 byte-compiled
0       belong          0xb80b0d0a      python 3.0 byte-compiled
0       belong          0xc20b0d0a      python 3.0 byte-compiled
0       belong          0xcc0b0d0a      python 3.0 byte-compiled
0       belong          0xd60b0d0a      python 3.0 byte-compiled
0       belong          0xe00b0d0a      python 3.0 byte-compiled
0       belong          0xea0b0d0a      python 3.0 byte-compiled
0       belong          0xf40b0d0a      python 3.0 byte-compiled
0       belong          0xf50b0d0a      python 3.0 byte-compiled
0       belong          0xff0b0d0a      python 3.0 byte-compiled
0       belong          0x090c0d0a      python 3.0 byte-compiled
0       belong          0x130c0d0a      python 3.0 byte-compiled
0       belong          0x1d0c0d0a      python 3.0 byte-compiled
0       belong          0x1f0c0d0a      python 3.0 byte-compiled
0       belong          0x270c0d0a      python 3.0 byte-compiled
0       belong          0x3b0c0d0a      python 3.0 byte-compiled
0       belong          0x450c0d0a      python 3.1 byte-compiled
0       belong          0x4f0c0d0a      python 3.1 byte-compiled
0       belong          0x580c0d0a      python 3.2 byte-compiled
0       belong          0x620c0d0a      python 3.2 byte-compiled
0       belong          0x6c0c0d0a      python 3.2 byte-compiled
0       belong          0x760c0d0a      python 3.3 byte-compiled
0       belong          0x800c0d0a      python 3.3 byte-compiled
0       belong          0x8a0c0d0a      python 3.3 byte-compiled
0       belong          0x940c0d0a      python 3.3 byte-compiled
0       belong          0x9e0c0d0a      python 3.3 byte-compiled
0       belong          0xb20c0d0a      python 3.4 byte-compiled
0       belong          0xbc0c0d0a      python 3.4 byte-compiled
0       belong          0xc60c0d0a      python 3.4 byte-compiled
0       belong          0xd00c0d0a      python 3.4 byte-compiled
0       belong          0xda0c0d0a      python 3.4 byte-compiled
0       belong          0xe40c0d0a      python 3.4 byte-compiled
0       belong          0xee0c0d0a      python 3.4 byte-compiled
0       belong          0xf80c0d0a      python 3.5.1- byte-compiled
0       belong          0x020d0d0a      python 3.5.1- byte-compiled
0       belong          0x0c0d0d0a      python 3.5.1- byte-compiled
0       belong          0x160d0d0a      python 3.5.1- byte-compiled
0       belong          0x170d0d0a      python 3.5.2+ byte-compiled
0       belong          0x200d0d0a      python 3.6 byte-compiled
0       belong          0x210d0d0a      python 3.6 byte-compiled
0       belong          0x2a0d0d0a      python 3.6 byte-compiled
0       belong          0x2b0d0d0a      python 3.6 byte-compiled
0       belong          0x2c0d0d0a      python 3.6 byte-compiled
0       belong          0x2d0d0d0a      python 3.6 byte-compiled
0       belong          0x2f0d0d0a      python 3.6 byte-compiled
0       belong          0x300d0d0a      python 3.6 byte-compiled
0       belong          0x310d0d0a      python 3.6 byte-compiled
0       belong          0x320d0d0a      python 3.6 byte-compiled
0       belong          0x330d0d0a      python 3.6 byte-compiled
0       belong          0x3e0d0d0a      python 3.7 byte-compiled
0       belong          0x3f0d0d0a      python 3.7 byte-compiled
0       belong          0x400d0d0a      python 3.7 byte-compiled
0       belong          0x410d0d0a      python 3.7 byte-compiled
0       belong          0x420d0d0a      python 3.7 byte-compiled
0       belong          0x480d0d0a      python 3.8 byte-compiled
0       belong          0x490d0d0a      python 3.8 byte-compiled
0       belong          0x520d0d0a      python 3.8 byte-compiled
0       belong          0x530d0d0a      python 3.8 byte-compiled
0       belong          0x540d0d0a      python 3.8 byte-compiled
0       belong          0x550d0d0a      python 3.8 byte-compiled
0       belong          0x5c0d0d0a      python 3.9 byte-compiled
0       belong          0x5d0d0d0a      python 3.9 byte-compiled
0       belong          0x5e0d0d0a      python 3.9 byte-compiled
0       belong          0x5f0d0d0a      python 3.9 byte-compiled
0       belong          0x600d0d0a      python 3.9 byte-compiled
0       belong          0x610d0d0a      python 3.9 byte-compiled
