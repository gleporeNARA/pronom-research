The Psion 5(MX) has several built-in applications. They use their own file formats to save data files. Psion has written file conversion utilities for Windows 95, in the form of their PsiWin program. But there are no conversion utilities for other operating systems. Also, Psion is not able to or does not want to release enough data for others to write their own conversion programs. At least, that is what I have gathered through the newsgroups and from other sources.


On creation of an application, a folder specifically for the application is also created. For example, if the OPA
has the name AppXxx the folder created will be \System\Apps\AppXxx\. The APP file itself (the
translated OPL module) and the application information file (AIF) which contains three icon and mask pairs and
the application caption and flags, are created in this folder. For example, the AIF for AppXxx.app would be
\System\Apps\AppXxx\AppXxx.aif. The AIF file will be generated based on all the information
contained in the APP…ENDA construct, but if any information is missing defaults will be used. These are:
• for ICON: the default (question mark) icons
• for CAPTION: the caption specified in the APP declaration
• for FLAGS: the default value of 0.
The arguments to any of the keywords between APP and ENDA must be constants and not expressions.



http://basic.hopto.org/basic/manual/PSION%203c%20Series5%20y%20Siena%20Programming%20Ref.pdf
