�MKMSGF RCD     G          u�	m7ax��-HWeu����       R                              runeng.msg                                                                                                                                                                                                                                                           IRUNCMD_MESSAGEFILE_1.40 DEU JN 2
ITitle AppTitle AppHelp Halt ErrorSysFileSearch ErrorAlreadyIncluded ErrorCannotAdd InfoAdded InfoCreateObjects
IIconFolder IconProgram IconReadme IconSetBreak IconDelBreak IconEditExec IconHelp ExecFileComment
I
RUNCMD - V1.40 - Installation Program
von C.Langanke 1993,1995,1997,1998 - All Rights reserved.
National Language Support by Christian Langanke
I
RUNCMD V1.40 - C.Langanke 1993,1995,1997,1998

IRUNCMD [timeout [command] [parameter]] [/?|/H]

RUNCMD waits the specified amount of seconds, if
L-SHIFT, L-CONTROL and L-ALT are pressed simultaneously.
If that is the case, CMD.EXE (or %%COMSPEC%%) is started.
If ESCAPE is being pressed during the wait period, RUNCMD is
aborted without executing CDM.EXE.
If the file ?:\_RUNCMD.CMD exists, it is executed additionally.
If the file ?:\RUNCMD exists, RUNCMD will interrupt uncoditionally
and this file will be deleted.

   timeout             - specifies the time to wait in seconds. Default: 3.
   command [parameter] - OS/2 command with parameters, that is to be executed.
                         Default: empty, %%COMSPEC%% is being executed with
                         no parameters

Syntax for CONFIG.SYS:
  CALL=d:\path\RUNCMD.EXE
IInterrupted by user.
IError in SysFileSearch(), rc=%1.
IWarning: RUNCMD is already included in %1.
IWarning: RUNCMD cannot be added to %1.
Add the following line manually:
IRUNCMD was added to %1.
ICreating program objects
IRUNCMD V1.40
ITest RUNCMD
IRUNCMD Readme
ICreate RUNCMD Stopfile
IDelete RUNCMD Stopfile
IEdit _RUNCMD.CMD
IRUNCMD Help
IAdd OS/2 commands for RUNCMD here
