A normal (non-silent) installation receives the necessary input from end users in the form of responses to dialogs. However, a silent installation does not prompt the end user for input. A silent installation must get its end-user input from a different source. That source is the InstallShield Silent response file (.iss file).

A response file contains information similar to that which an end user would enter as responses to dialogs when running a normal installation. InstallShield Silent reads the necessary input from the response file at run time.

The format of response files resembles that of an .ini file, but response files have .iss extensions. A response file is a plain text file consisting of sections containing data entries.

There are two ways in which you can create an InstallShield Silent response file: you can run the installation and have InstallShield record and create the response file for you, or you can write the response file directly.

Recording a Response File

You have the option of letting InstallShield create the response file for you. Simply run your installation with the Setup.exe -r command-line parameter. InstallShield will record all your installation choices in Setup.iss and place the file in the Windows folder.

All InstallShield built-in and Sd dialog functions are designed to write values into the Setup.iss file when InstallShield runs in record mode (Setup -r). If you are creating custom dialogs, you will need to call SdMakeName and SilentWriteData to add sections and dialog data to the response file when the installation runs in record mode. Refer to the Sd dialogs’ source code in the <InstallShield location>\Include folder for examples of using these functions to write to Setup.iss. Read the following section for more information about what data to add to Setup.iss when calling SdMakeName and SilentWriteData.

Manually Creating a Response File

You can also create the response file completely by hand. As mentioned, the Setup.iss file is similar to an .ini file. The sections of an InstallShield response file must be in the following order:

1.	Silent Header Section
2.	Application Header Section
3.	Dialog Sequence Section
4.	Dialog Data Sections (one per dialog)
Section names are contained in square brackets, as in [InstallShield Silent].

All response files begin with a response file silent header. The response file silent header enables InstallShield to identify the file as a legitimate InstallShield response file. It also helps to verify that the response file corresponds to an installation created with the proper version of InstallShield.

The format of the silent header is shown below. Enter the following lines at the beginning of your Setup.iss file:

[InstallShield Silent]

https://docs.revenera.com/installshield22helplib/helplibrary/CreatetheResponseFile.htm
