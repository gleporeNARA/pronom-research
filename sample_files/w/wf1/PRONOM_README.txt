EViews is a statistical package for Windows, used mainly for time-series oriented econometric analysis. It is developed by Quantitative Micro Software (QMS), now a part of IHS. Version 1.0 was released in March 1994, and replaced MicroTSP.[1] The TSP software and programming language had been originally developed by Robert Hall in 1965. The current version of EViews is 12, released in November 2020.

https://en.wikipedia.org/wiki/EViews


http://www.eviews.com/home.html



EViews workfile format
Allin Cottrell <cottrell at wfu.edu>
Wake Forest University, July 2005
Updated, July 2011

Introduction
EViews is a popular proprietary econometrics program. It is widely used in teaching, and in various places around the Internet one can find datasets made available by publishers of textbooks or by professors in the EViews workfile format. It struck me that it would be useful if gretl could read this format. There does not appear to be any publicly available specification (not surprising for a proprietary binary format), so I decided to try reverse-engineering. This document sets out my findings. The findings are based on examination of several workfiles from different sources and dates (using Emacs in hexl mode, the strings program, and an exploratory reader program written in C), but I have no idea how general they are. I welcome any corrections or additions.

Update: The following discussion pertains to "New MicroTSP Workfile," the "traditional" EViews data format. With EViews 7, however, the program seems to have migrated to a new format, labeled "EViews File V01". This format resembles the old one in some respects but appears to be considerably more complex. Some notes on the new version appear in the appendix to this document. Note that the wf1 extension is used for both types of file.

Overview of format
An EViews workfile starts with an identifying string, "New MicroTSP Workfile," which seems to be padded out to 24 bytes with NUL characters. 

http://users.wfu.edu/cottrell/eviews_format/
