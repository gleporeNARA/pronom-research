A solution is a structure for organizing projects in Visual Studio. The solution maintains the state information for projects in two files:

.sln file (text-based, shared)

.suo file (binary, user-specific solution options)

For more information about .suo files, see Solution User Options (.Suo) File.

If your VSPackage is loaded as a result of being referenced in the .sln file, the environment calls ReadSolutionProps to read in the .sln file.

The .sln file contains text-based information the environment uses to find and load the name-value parameters for the persisted data and the project VSPackages it references. When a user opens a solution, the environment cycles through the preSolution, Project, and postSolution information in the .sln file to load the solution, projects within the solution, and any persisted information attached to the solution.

Each project's file contains additional information read by the environment to populate the hierarchy with that project's items. The hierarchy data persistence is controlled by the project. The data is not normally stored in the .sln file, although you can intentionally write project information to the .sln file if you choose to do so. For more information about persistence, see Project Persistence and Opening and Saving Project Items.

https://docs.microsoft.com/en-us/visualstudio/extensibility/internals/solution-dot-sln-file?view=vs-2019
