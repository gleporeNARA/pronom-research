�MKMSGF SNY'     m          ���$>V~����	>i���0NYi���
 ����	�
XT       �                              sndysger.msg                                                                                                                                                                                                                                                         ISENDYES_MESSAGEFILE 1 30 38 JNB deutsch GER
IProgramm abgebrochen.
ESendYes! ist aktiv und mu� zuvor mit /UNLOAD deaktiviert werden.
IAbbruch durch Benutzer.
I1.  "readme" anzeigen
I2.  WPS Objekte (erneut) installieren
I3.  Sprache ausw�hlen
Ib.  Beenden des Installationsprogramms
IOk.
IFehler
ISoll das SendYes! Paket installiert werden - Verzeichnis
IDas SendYes! Paket wird installiert im Verzeichnis
IVerzeichnis oder Datei existiert bereits
IUng�ltiger Parameter
IDas angegebene Zielobjekt existiert nicht
EBei der �bertragung der SendYes! Dateien trat ein Fehler auf.
ISoll SendYes! deinstalliert werden, um (re)installieren zu k�nnen
ISendYes! wurde deaktiviert.
IErstelle
Iwird gel�scht
IDer WPS Ordner f�r SendYes! wird deinstalliert.
Fortfahren
EWPS Ordner f�r SendYes! ist nicht installiert.
IInstallation beendet.
IDeinstallation beendet.
?
?
?
?
?
?
I"WPFolder"    "<WP_DESKTOP>"       "<SENDYES_FOLDER>"             "SendYes! V2.0"                                 "U"  ""                       "" "ICONFILE=@1\INSTALL\FOLDER.ICO;ICONNFILE=1,@1\INSTALL\FOLDER2.ICO;ALWAYSSORT=YES;DEFAULTSORT=TYPE;CCVIEW=NO;"
I"WPProgram"   "<SENDYES_FOLDER>"   "<SENDYES_INITIALIZE>"         "SendYes! initialisieren"                       "R"  "SENDYES.EXE"            "/INITIALIZE"       "HELPLIBRARY=@3;HELPPANEL=132;PROGTYPE=PM;"
I"WPProgram"   "<SENDYES_FOLDER>"   "<SENDYES>"                    "SendYes!"                                      "R"  "SENDYES.EXE"            ""                  "HELPLIBRARY=@3;HELPPANEL=133;PROGTYPE=PM;"
I"WPProgram"   "<SENDYES_FOLDER>"   "<SENDYES_HELP>"               "SendYes! V2.0 Hilfe"                           "R"  "VIEW.EXE"               "@2 SendYes! *"     "HELPLIBRARY=@3;HELPPANEL=134;PROGTYPE=PM;ICONFILE=@1\INSTALL\SNDYSHLP.ICO;"
I"WPProgram"   "<SENDYES_FOLDER>"   "<SENDYES_INSTALL>"            "SendYes! WPS^Installationsprogramm"            "R"  "INSTALL\INSTALL.CMD"    ""                  "HELPLIBRARY=@3;HELPPANEL=135;PROGTYPE=WINDOWABLEVIO;NOAUTOCLOSE=YES;"
I"WPProgram"   "<SENDYES_FOLDER>"   "<SENDYES_DEINSTALL>"          "SendYes! WPS^Deinstallationsprogramm"          "R"  "INSTALL\REMOVE.CMD"     ""                  "HELPLIBRARY=@3;HELPPANEL=136;PROGTYPE=WINDOWABLEVIO;NOAUTOCLOSE=YES;"
I"WPShadow"    "<WP_START>"         "<SENDYES_SHADOW_WPSTART>"     "Referenz von SendYes! initialisieren in Systemstart" "R"  ""                 ""                  "SHADOWID=<SENDYES_INITIALIZE>;"
I"WPShadow"    "<WP_CONFIG>"        "<SENDYES_SHADOW_WPCONFIG>"    "Referenz von SendYes! in Systemkonfiguration"  "R"  ""                       ""                  "HELPLIBRARY=@3;HELPPANEL=133;SHADOWID=<SENDYES>;NOVOVE=YES;NOCOPY=YES;NODELETE=YES;"
I"WPShadow"    "<SENDYES_FOLDER>"   "<SENDYES_WPSTART_SHADOW>"     "Referenz vom Startordner"                      "R"  ""                       ""                  "SHADOWID=<WP_START>;"
