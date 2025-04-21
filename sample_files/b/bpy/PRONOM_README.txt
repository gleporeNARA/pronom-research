Module API_related
Blender Python related features
Back to Main Page
Introduction:
This page describes special features available to BPython scripts:
Command line mode is accessible with the '-P' and '-b' Blender options.
Registration allows scripts to become available from some pre-defined menus in Blender, like Import, Export, Wizards and so on.
Script links are Blender Texts (scripts) executed when a particular event (redraws, .blend file loading, saving, frame changed, etc.) occurs. Now there are also "Space Handlers" to draw onto or get events from a given space (only 3D View now) in some window.
Proper documentation data is used by the 'Scripts Help Browser' script to show help information for any registered script. Your own GUI can use this facility with the Blender.ShowHelp function.
Configuration is for data in your script that can be tweaked according to user taste or needs. Like documentation, this is another helper functionality -- you don't need to provide a GUI yourself to edit config data.
Command line usage:


The header should be like this one (all double and single apostrophes below are required):
#!BPY

# """
# Name: 'Script Name'
# Blender: 233
# Group: 'Export'
# Submenu: 'All' all
# Submenu: 'Selected' sel
# Submenu: 'Configure (gui)' gui
# Tooltip: 'Export to some format.'
# """

https://docs.blender.org/api/237PythonDoc/API_related-module.html
