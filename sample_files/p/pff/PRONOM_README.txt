1. PROforma Introduction
1.1 What is PROforma?
PROforma is short for FROGS Font & Raster Manager, and it does exactly what this name
suggest. It is a library of routines to manage and display vector graphics and fonts on
(raster) devices like screens and printers.
The availability of a separate program to manage graphics and fonts has several
advantages. It allows application developers to create output of equal quality (resolution
permitting) on several devices, and they can share resources. In short this means that the
PROforma library only has to be loaded once, independent of the number of applications
which use it. Also fonts only have to be loaded once, and can be shared between
applications.
PROforma was originally developed as the graphics library for LlNEdesign. That does not
mean that this is the only kind of application for which PROforma is of use. PROforma is
perfectly suitable as well for desktop publishers, word processors, business graphics and all
applications which want high quality output (which must be just about every application
except compilers and games). Actually, even at the time of writing there are things which are
possible with PROforma and can’t be accessed through LiNEdesign. 

Best you create some subdirectones to hold PROforma.
MAKE_DIR win1_pf_
MAKE_DIR win1_pf_fnt_
MAKE_DIR win1_pf_drv_
Then you should copy PROforma and the fontmap. 
COPY flp1_PROforma,win1_pf_PROforma
COPY flp1_PFfontmap,win1f_PFfontmap
COPY flp1_PFConfig,win1_pf_PFConfig
And you should also copy all the fonts and drivers to your harddisk.
WCOPY flpl_.pff,win 1 _pf_fnt_pff
and
WCOPY Tip l__pfd,wtnl _pf_drv_pfd
Now you should configure your fontmap file. The most important is that you have to change
the search paths to the directory on your harddisk, so for the fonts this should include
win 1_pf_fnt_
and for the drivers this should include
win1_pf_drv_ 


http://www.dilwyn.me.uk/prowess/PROforma%20Introduction.pdf
