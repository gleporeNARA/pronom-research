When you build an InstallScript installation, InstallShield may create an InstallScript cabinet file (.cab) called data1.cab, plus additional .cab files if necessary. InstallShield also creates an InstallScript header file called data1.hdr. Depending on your project’s release settings, these files may be left uncompressed, or they may be or streamed into the Setup.exe file.

An InstallScript .cab file is a compressed file that contains the files that your installation installs on an end user’s system. Cabinet files serve as a container for files that you directed your installation to install, either through InstallShield or through your script. Cabinet files also contain information and files about language and system dependencies. In addition, they store other files—such as the InstallScript engine—that InstallShield adds to your installation at build time.

The data1.hdr file is an InstallScript header file (.hdr) is a file that references the corresponding data1.cab file. It contains general information that you entered in your installation project. It also includes information about each of the files, components, features, and other data in your installation.

https://docs.revenera.com/installshield25helplib/helplibrary/IsCabViewOverview.htm
