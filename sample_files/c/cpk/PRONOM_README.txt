# CRI CPK archives (script 0.3.3)
#   derived from cpk_unpack of hcs - http://hcs64_com/vgm_ripping_html
#
#   THIS SCRIPT IS CURRENTLY UNSUPPORTED!
#   Please use https://github.com/esperknight/CriPakTools
#
# script for QuickBMS http://quickbms_aluigi_org

quickbmsver "0.7.6a"
comtype cpk

idstring "CPK " # all the CRI/TOC headers are little endian

https://zenhax.com/viewtopic.php?t=51

CriPakTools
Tool to extract/update contents of CRIWARE's CPK archive format.

This is based off of code uploaded by Falo's code released on the Xentax forums (http://forum.xentax.com/viewtopic.php?f=10&t=10646) which was futher modified by Nanashi3 (http://forums.fuwanovel.org/index.php?/topic/1785-request-for-psp-hackers/page-4).

I turned it into a command line application and added the ability to replace already existing files with the CPK archive.

This theoretically should work with any CPK archive but I'm sure something will break it. I've tested it so far with Corpse Party 2U and Time Travelers both for PSP.

I have no plans on adding the ability to create new files but if anyone wishes to, feel free.

https://github.com/esperknight/CriPakTools

https://www.wikidata.org/wiki/Q105762862
