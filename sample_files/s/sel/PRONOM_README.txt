This document describes add-on media preparation for SUSE Linux 10.1 and SUSE Linux Enterprise 10 products. The add-on support was developed to support our customers and partners and simplify third-party software distribution for all SUSE products.

Creating an Add-On Product
If you want to distribute your software or product for SUSE Linux 10.1, SUSE Linux Enterprise Server 10, SUSE Linux Enterprise Desktop 10, and higher with support from installation programs like YaST and rug, you can create add-on media.
...
Both selections and patterns are designed to provide a group of packages for installation in the YaST pattern or selection filter with one click. They have similar syntax, but they are used for different products. Selection are used in SUSE Linux and patterns are used in the SUSE Linux Enterprise products.

Note
Patterns versus Selections
If you create an add-on product for SUSE Linux 10.1, create selections. If you create add-on product for SUSE Linux Enterprise products, create patterns. SUSE Linux 10.1 might not work correctly with patterns and SLE products might not work correctly work with selections.

Selections
To have a functional selection visible in the YaST selection filter, prepare two files:

selections
File with the list of all selection files in the add-on media, each selection on separate line.
selection-name-version.arch.sel
File with a selection definition. The name should resemble Multimedia-10.1-3.i686.sel.These files must be in the setup/descr directory in the add-on data directory. For multiple selections, prepare more *.sel and include them in selections. The keywords for descriptions are shown in Table5.List of Supported Selection Entry Keywords. Dependency-related keywords are defined in terms of corresponding keywords from, but only relate to selections.
...
# SuSE-Linux-Package-Selection 10.1-73.x86_64 -- (c) 2004 SuSE Linux AG
    # Needs parser version 4.0 or greater

    =Ver: 4.0

    =Sel:  Mobile 10.1 73 x86_64 

    =Sum: Mobile Computing
    =Sum.bg: Мобилен компютър 
    =Sum.cs: Mobilní komunikace
    =Sum.da: For bærbare computere 
    
    
https://www.novell.com/developer/creating_add-ons.html#Selections_and_Patterns
