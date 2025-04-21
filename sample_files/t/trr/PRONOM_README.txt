GROMACS TRR Format

Description
Files with the trr file extension contain the trajectory of a simulation. In this file all the coordinates, velocities, forces and energies are printed as you told GROMACS in your mdp file. This file is in portable binary format an can be read with gmx dump.
% gmx dump -f traj.trr
or if you're not such a fast reader:
% gmxdump -f traj.trr | more
You can also get a quick look in the contents of the file (number of frames etc.) using:

% gmx check -f traj.trr


https://web.archive.org/web/20181108142609/http://manual.gromacs.org:80/online/trr.html

https://web.archive.org/web/20181107112023/http://manual.gromacs.org/online/files.html
