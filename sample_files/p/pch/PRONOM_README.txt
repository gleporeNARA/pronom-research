Microsoft Visual C++ (MSVC) is a compiler for the C, C++ and C++/CX programming languages by Microsoft. MSVC is proprietary software; it was originally a standalone product but later became a part of Visual Studio and made available in both trialware and freeware forms. It features tools for developing and debugging C++ code, especially code written for the Windows API, DirectX and .NET.

Many applications require redistributable Visual C++ runtime library packages to function correctly. These packages are often installed independently of applications, allowing multiple applications to make use of the package while only having to install it once. These Visual C++ redistributable and runtime packages are mostly installed for standard libraries that many applications use.[3]

https://en.wikipedia.org/wiki/Microsoft_Visual_C%2B%2B



I use Visual C++ 2012 with a project that makes a heavy use of precompiled headers. So heavy that the infamous /Zm switch is in use.

I followed rockeye's suggestion of trying to find a pattern in these corrupted files. Turns out it's very simple: valid files start with a VCPCH0 header, corrupted files don't.

A simple C# program run as a Pre-Build Event of the failing project(s) and deleting the corrupted files solves the issue. If anyone's interested, the source is right here.

https://stackoverflow.com/questions/21116830/how-to-deal-with-precompiled-headers-randomly-becoming-corrupted-on-a-cancelled

https://www.filesignatures.net/index.php?page=search&search=PCH&mode=EXT
