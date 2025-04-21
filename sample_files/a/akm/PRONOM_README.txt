Conversion Process
The native format of an Operations Manager 2005 management pack is a binary file in an AKM format. This is the only format that Operations Manager 2005 Management Servers accept as valid management packs. Operations Manager 2007 does not use the AKM format; instead, it uses XML as the format for management packs.

http://download.microsoft.com/download/B/F/D/BFDD0F66-1637-4EA3-8E6E-8D03001E5E66/OM2007R2_OperationsUsersGuide.docx


5. — Click Next on the initial welcome screen. On the following screen, ensure that Import Management
Packs and/or reports is selected, and then click Next. You will then be asked to specify a location
to search for Management Packs (. akm files). You should browse or enter the location of the
ManagementPacks folder on your installation media. (If you do not have this, you will need to
download them from the Management Pack Catalog.) The next screen asks you to specify which
management packs you would like to import. It is suggested that you import the following:

MicrosoftBaselineSecurityAnalyzer.akm
MicrosoftOperationsManager2005.akm (Management Pack for MOM itself)
MicrosoftActiveDirectory.akm
MicrosoftBaseOperatingSystem.akm
MicrosoftWindowsDNS.akm
MicrosoftWindowsIIS.akm
MicrosoftWindowsServerClusters.akm (if you use this)

These are typically the main components involved in a BizTalk application, and they should be
monitored as well to provide complete coverage. Note that if you wish to use MOM to monitor
SQL Server 2005, you have to download the SQL 2005 Management Pack from the Management
Pack Catalog. Hold down the Control key while selecting the Management Packs, to select more
than one at a time. The screen should look similar to Figure 11-41.

6. Once you have selected the Management Packs, complete the wizard by clicking Next on the
remaining screens.

7. Repeat steps 4-6, only this time install the BizTalk and ESSO Management Packs that are in the
directory where you extracted them earlier.

After completing these steps, if you expand the Management Packs node of the Administrator Console
and then the Rule Groups node, you should see a selection of rules grouped into different categories,
including Microsoft BizTalk Server 2006 and Microsoft Enterprise Single Sign-On.

https://www.google.com/books/edition/Professional_BizTalk_Server_2006/qr3i1qiMwJ8C?hl=en&gbpv=1&dq=MicrosoftOperationsManager2005+akm&pg=PA567&printsec=frontcover
