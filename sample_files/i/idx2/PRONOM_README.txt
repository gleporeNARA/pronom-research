How ClipArt Gallery Registers New Images in ARTGALRY.INI
Q122973
--------------------------------------------------------------------------
The information in this article applies to:

 - Microsoft Publisher version 2.0
 - Microsoft Special Occasions Design Pack
 - Microsoft StyleLine Design Pack
 - Microsoft Clipart Gallery version 1.0
 - Microsoft Clipart Gallery version 2.0
--------------------------------------------------------------------------

SUMMARY
=======

When you install Publisher 2.0, the Special Occasions Design Pack, or the
StyleLine Design Pack, Setup adds entries to the [Import] section of the
ARTGALRY.INI file. These entries allow the Microsoft ClipArt Gallery
program to automatically register the clip art images that come with these
products.

Each time you run ClipArt Gallery, the program checks the [Import] section
of ARTGALRY.INI for new thumbnails to be added. The program looks for the
specified .IDX and .THM files and merges the new .IDX files with
ARTGALRY.IDX, merges the new .THM files with ARTGALRY.THM, and once these
files are merged, the program deletes them.

https://www.betaarchive.com/wiki/index.php/Microsoft_KB_Archive/122973


The following lines are added during a complete installation of PowerPoint 4.0 for Windows:

PP400=+<DIRECTORY>,PP400.IDX,PP400.THM,PowerPoint PP401=-<DIRECTORY>,ACADEMIC.IDX,ACADEMIC.THM,PowerPoint Academic PP402=-<DIRECTORY>,ANIMALS.IDX,ANIMALS.THM,PowerPoint Animals PP403=-<DIRECTORY>,BUILDING.IDX,BUILDING.THM,PowerPoint Buildings PP404=-<DIRECTORY>,BACKGRND.IDX,BACKGRND.THM,PowerPoint Backgrounds PP405=-<DIRECTORY>,BUSINESS.IDX,BUSINESS.THM,PowerPoint Business PP406=-<DIRECTORY>,CARTOONS.IDX,CARTOONS.THM,PowerPoint Cartoons PP407=-<DIRECTORY>,COMM.IDX,COMM.THM,PowerPoint Communications PP408=-<DIRECTORY>,CURRENCY.IDX,CURRENCY.THM,PowerPoint Currency PP409=-<DIRECTORY>,ELECTRNC.IDX,ELECTRNC.THM,PowerPoint Electronics PP4010=-<DIRECTORY>,ENERGY.IDX,ENERGY.THM,PowerPoint Energy PP4011=-<DIRECTORY>,ENTRTAIN.IDX,ENTRTAIN.THM,PowerPoint Entertainment PP4012=-<DIRECTORY>,FLAGS.IDX,FLAGS.THM,PowerPoint Flags PP4013=-<DIRECTORY>,PLANTS.IDX,PLANTS.THM,PowerPoint Plants PP4014=-<DIRECTORY>,GESTURES.IDX,GESTURES.THM,PowerPoint Gestures PP4015=-<DIRECTORY>,HARDWARE.IDX,HARDWARE.THM,PowerPoint Hardware PP4016=-<DIRECTORY>,HOUSEHLD.IDX,HOUSEHLD.THM,PowerPoint Household PP4017=-<DIRECTORY>,INTLMAPS.IDX,INTLMAPS.THM,PowerPoint Maps - International PP4018=-<DIRECTORY>,LANDMARK.IDX,LANDMARK.THM,PowerPoint Landmarks PP4019=-<DIRECTORY>,PEOPLE.IDX,PEOPLE.THM,PowerPoint People PP4020=-<DIRECTORY>,SCIENCE.IDX,SCIENCE.THM,PowerPoint Science & Medicine PP4021=-<DIRECTORY>,SHAPES.IDX,SHAPES.THM,PowerPoint Shapes PP4022=-<DIRECTORY>,SIGNS.IDX,SIGNS.THM,PowerPoint Signs PP4023=-<DIRECTORY>,SPORTS.IDX,SPORTS.THM,PowerPoint Sports PP4024=-<DIRECTORY>,TECHNOL.IDX,TECHNOL.THM,PowerPoint Technology PP4025=-<DIRECTORY>,TRANSPRT.IDX,TRANSPRT.THM,PowerPoint Transportation PP4026=-<DIRECTORY>,USMAPS.IDX,USMAPS.THM,PowerPoint Maps - U.S.

https://www.betaarchive.com/wiki/index.php/Microsoft_KB_Archive/121511
