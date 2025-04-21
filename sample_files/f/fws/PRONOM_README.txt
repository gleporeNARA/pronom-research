Workspace definition
Workspaces are defined in files xxx.cfws (current) and xxx.fws
(last saved). In most cases we need not create or modify
(besides line 2) such a file.
Modify or create
workspace
Menus and toolbars appear in a view due to the file location
of them. Multiple workspaces can be defined for a particular
view. Activating a newly introduced toolbar (docked or
undocked) modifies the current workspace, which can be
saved to a new name.
workspace file The following is the definition found in Custom.cfws of the
example download (long lines are truncated to display the
structure):
Key in the workspace file are the palette and control-bar
statements, which hold various information about the panels
and toolbars.
Note: For customisation we are normally only dealing with the second line which defines the menu set and the toolbar set.
Be aware that xml comments are removed from workspace
files!
Size of toolbar Only if a drop down box appears in the toolbar you may need
to adjust the size parameters in the control-bar statement.
You do this after the workspace file has been created. Normally you adjust the parameters size = preferred-size and
then minimum and maximum.
<control-bar id="004C0966" origin="874 31" size="255 34" is-closed="false" app-
<FrameUI version="1">
<data type="all" menuFile="custom_menus.cfg" toolbarFile="custom_toolset.xml"/>
<fm-workspace>

https://www.frameusers.com/uploads/2016/02/etb-customising-fm12.pdf
