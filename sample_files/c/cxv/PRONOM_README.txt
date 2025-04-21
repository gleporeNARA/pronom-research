PVCS Professional Suite automates the capture, routing, collaboration, and resolution of issues and defects. Customizable WYSIWYG forms Process designer Simplified change management Trend reporting.

https://www.microfocus.com/en-us/products/pvcs/overview

Discussion posted 4/8/10 by Lars Erdmann
Details:

Serena 8.2.1.0 under Windows:
we have a PVCS file server based database (and therefore split archives). Recently, I checked in a bunch of files, specifying a label. I checked with the GUI that the expected files had the label and they did.
Subsequently I tried to get the files (recursively) specifying that same label. The get action failed with a bunch of warnings and errors telling me that this and that file did not have the label specified. I checked with the GUI and they DID have the label. Also the archive path length is not too long. I stopped and restarted the GUI client but it just would not get the correct files.
specifying some OLDER label than the most recent one or specifying no label at all (the default revision) worked OK !!!!
I somehow have the impression that the PVCS file server caches some meta-data information that is now out of sync with the archives. I also noticed that on every failed get action, that the "pvcsfs" directory under my %tmp% directory would contain hundreds of temporary files containing some odd administrative information (amongst a string: "Polytron VCS logfile").
Can anyone enlighten me of what needs to be done to rectify this issue ?
Thanks !

https://community.microfocus.com/adtd/pvcs/f/pvcs_discussions/499859/pvcs-file-server-based-database-probs-getting-given-label
