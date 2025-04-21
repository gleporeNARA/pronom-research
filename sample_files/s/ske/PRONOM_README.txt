Has anyone tried editing .ske files through developer tools in SolidWorks 2012? Back in 2008 I made changes to several hole sketches and I don't recall any issues. But I can't even open those files in 2012, I just get an error message, "An Invalid Argument Was Encountered". Any suggestions?

https://forum.solidworks.com/thread/59172

Does any one know anything about the files with the extention .ske
in the solidworks directory? Is there a way to open these files? is
there a way to create these files? how does the program use them?Just
interested and thought I'd ask.
 
 
 
Top
.ske file extension
Post by dzambo » Fri, 05 Oct 2001 08:17:02


These are the sketch files SolidWorks uses for the hole wizard. To edit them
you need to start SolidWorks with a "/d"  as a command line argument. When
you open a part you should see an additional menu named "Developer Tools".
The "Read Section" and "Make Section" menu picks open and save the sketches.

http://www.verycomputer.com/9_18463ebe88b1d120_1.htm
