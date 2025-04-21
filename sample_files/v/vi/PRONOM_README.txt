Laboratory Virtual Instrument Engineering Workbench (LabVIEW)[1]: 3  is a system-design platform and development environment for a visual programming language from National Instruments.

The graphical language is named "G"; not to be confused with G-code. The G dataflow language was originally developed by LabVIEW,[2] LabVIEW is commonly used for data acquisition, instrument control, and industrial automation on a variety of operating systems (OSs), including Microsoft Windows as well as various versions of Unix, Linux, and macOS.

The latest versions of LabVIEW are LabVIEW 2021 SP1 (released in February 2022) and LabVIEW NXG 5.1 (released in January 2021).[3] NI released the free for non-commercial use LabVIEW and LabVIEW NXG Community editions on April 28th, 2020.[4]

https://en.wikipedia.org/wiki/LabVIEW


Virtual Instrument
(Redirected from VI)
The VI, or Virtual Instrument, is the basic building block of programs written in the G Language. It is similar to a function or subroutine in other programming languages. It includes the Front Panel (containing Controls and Indicators), the Block Diagram (containing Control Terminals, Wires, and Structures and various other GObject nodes), the VI's Icon and its Connector Pane (as well as compiled executable code which is hidden behind the scenes).

The term Virtual Instrument is a play off of the fact that LabVIEW applications are designed for writing software that simulates the functionality of instruments -- rather than being a physical instrument on a laboratory bench, they are virtual and exist in software.

Content of a VI file
By default, a VI contains two kinds of code: the graphical source code that you edit and a compiled version of this code that LabVIEW uses to run the VI.

The graphical source code includes the:

Front Panel
Block Diagram
Data Space
Connector Pane
Icon
The compiled version includes the:

Compiled Code
Inplaceness Information
When you edit the source code of the VI, LabVIEW automatically recompiles the VI to reflect your changes in the compiled version of the code. LabVIEW also automatically recompiles all VIs that call the changed VI, resulting in unsaved changes to the calling VIs. If the calling VIs are stored in source code control, these pending unsaved changes force you to check out the VIs when you update their subVIs.

To avoid this problem, Starting in LabVIEW 2010, LabVIEW allows you to separate compiled code from the graphical source code of a VI, thereby creating source-only VIs. After you separate the compiled code from a VI, LabVIEW still compiles the VI when you modify subVIs. However, LabVIEW stores the recompiled version of the code in a compiled object cache rather than in the VI in source code control. Because the VI in source code control does not change, you no longer have to check the VI out of source control when you change subVIs.

The VI File Format
VIs are saved as *.vi files, in a proprietary binary Resource Container format, defined by National Instruments - the makers of LabVIEW. The format is a container, storing a group of Resources with 4-character identifiers.

A big change in VI format happened in LV version 8.0 - the place where Type descriptors are defined was changed. Before, TDs were defined in-place where they were needed; with 8.0, a new resource VCTP (VI Consolidated Types) was introduced, and all TDs were moved there. Outside VCTP, TDs are now identified by TypeID - index within the consolidated types table.

https://labviewwiki.org/wiki/Virtual_Instrument
