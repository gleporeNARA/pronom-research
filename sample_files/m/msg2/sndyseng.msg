�MKMSGF SNY'     m          ���);Yo����1Fj���W�����������tgT	A
       �                              sndyseng.msg                                                                                                                                                                                                                                                         ISENDYES_MESSAGEFILE 1 30 38 YNE english ENG
IProgram aborted.
ESendYes! is active - use /UNLOAD first to close it.
IInterrupted by user.
I1.  show readme
I2.  (re)install WPS objects
I3.  select language
Ie.  exit installation program
IOk.
Ierror
IAre you sure you want to install
the SendYes! package in directory
IInstalling SendYes! package in directory
Idirectory or file exists already
Iinvalid paramater.
Ispecified location does not exist
EAn error occured while copying SendYes! package files
IDo you want to deactivate SendYes! in order to (re)install
ISendYes! was deactivated.
ICreating
Iis being destoyed
IThe WPS folder for SendYes! is being deinstalled.
Proceed
EWPS folder for SendYes! is not installed.
IInstallation complete.
IDeinstallation complete.   
?
?
?
?
?
?
I"WPFolder"    "<WP_DESKTOP>"       "<SENDYES_FOLDER>"             "SendYes! V2.0"                                 "U"  ""                       "" "ICONFILE=@1\INSTALL\FOLDER.ICO;ICONNFILE=1,@1\INSTALL\FOLDER2.ICO;ALWAYSSORT=YES;DEFAULTSORT=TYPE;CCVIEW=NO;"
I"WPProgram"   "<SENDYES_FOLDER>"   "<SENDYES_INITIALIZE>"         "Initialize SendYes!"                           "R"  "SENDYES.EXE"            "/INITIALIZE"       "HELPLIBRARY=@3;HELPPANEL=132;PROGTYPE=PM;"
I"WPProgram"   "<SENDYES_FOLDER>"   "<SENDYES>"                    "SendYes!"                                      "R"  "SENDYES.EXE"            ""                  "HELPLIBRARY=@3;HELPPANEL=133;PROGTYPE=PM;"
I"WPProgram"   "<SENDYES_FOLDER>"   "<SENDYES_HELP>"               "SendYes! V2.0 Help"                            "R"  "VIEW.EXE"               "@2 SendYes! *"     "HELPLIBRARY=@3;HELPPANEL=134;PROGTYPE=PM;ICONFILE=@1\INSTALL\SNDYSHLP.ICO;"
I"WPProgram"   "<SENDYES_FOLDER>"   "<SENDYES_INSTALL>"            "SendYes! WPS^installation program"             "R"  "INSTALL\INSTALL.CMD"    ""                  "HELPLIBRARY=@3;HELPPANEL=135;PROGTYPE=WINDOWABLEVIO;NOAUTOCLOSE=YES;"
I"WPProgram"   "<SENDYES_FOLDER>"   "<SENDYES_DEINSTALL>"          "SendYes! WPS^deinstallation program"           "R"  "INSTALL\REMOVE.CMD"     ""                  "HELPLIBRARY=@3;HELPPANEL=136;PROGTYPE=WINDOWABLEVIO;NOAUTOCLOSE=YES;"
I"WPShadow"    "<WP_START>"         "<SENDYES_SHADOW_WPSTART>"     "Shadow of initialize SendYes! in Startup"      "R"  ""                       ""                  "SHADOWID=<SENDYES_INITIALIZE>;"
I"WPShadow"    "<WP_CONFIG>"        "<SENDYES_SHADOW_WPCONFIG>"    "Shadow of SendYes! in System Setup"            "R"  ""                       ""                  "HELPLIBRARY=@3;HELPPANEL=133;SHADOWID=<SENDYES>;NOVOVE=YES;NOCOPY=YES;NODELETE=YES;"
I"WPShadow"    "<SENDYES_FOLDER>"   "<SENDYES_WPSTART_SHADOW>"     "Shadow of startup folder"                      "R"  ""                       ""                  "SHADOWID=<WP_START>;"
