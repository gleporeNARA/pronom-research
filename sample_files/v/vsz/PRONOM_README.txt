Wizard (.Vsz) File

The integrated development environment (IDE) uses .vsz files to start wizards. These .vsz files contain information that the IDE uses to determine which wizard to call and what information to pass to the wizard.

A .vsz file is a version of an .ini-formatted text file that has no sections. Information known to the IDE is stored at the beginning of the file. This provides a link between the wizard that the IDE calls and the parameters that are in the .vsz file to be passed to the IDE. The rest of the file provides parameters that are specific to the wizard and that are to be collected by the IDE and passed to the specific wizard.

The following example shows the contents of a .vsz file.


Copy
VSWizard 8.0
Wizard=VsWizard.CBlankSiteWizard -or- {123-1234556-123334}
Param="WIZARDNAME = Wizard One"
Param="WIZARDUI = FALSE"
Following are the parts in the .vsz file.

TABLE 1
Part	Description
VSWizard	The first parameter in the file is the version number of the template file format. This version number must be 6.0, 7.0, 7.1, or 8.0. Other numbers cannot be started and cause an Invalid Format error.

https://docs.microsoft.com/en-us/visualstudio/extensibility/internals/wizard-dot-vsz-file?view=vs-2019
