Ocean Data View (ODV) is a proprietary, freely available, software package for the analysis and visualization of oceanographic and meteorological data sets.[1][2][3]

ODV is used by a large number of oceanographers. The UNESCO Ocean Teacher project employs ODV as one of its main analysis and display tools.[4] ODV is used to display and analyze data from several oceanographic projects such as Argo, World Ocean Circulation Experiment, World Ocean Database Project, SeaDataNet, World Ocean Atlas, and Medar/Medatlas projects.[5] Ocean Data View includes also options that permit to perform objective analysis thanks to the add-on DIVA software.


https://en.wikipedia.org/wiki/Ocean_Data_View


17.7 o4x Exchange Format
The o4x exchange format is supported for backwards compatibility; it is no longer recommended as data exchange format. New users should use the generic spreadsheet
format instead.
ODV .o4x exchange files contain information on the type of the data, the number and 
ODV User’s Guide
 141
labels of variables, the actual data values and the data quality flags in a single ASCII file
with extension .o4x. Typically, .o4x files contain three sections: (1) a (possibly missing)
comment section consisting of an arbitrary number of free-format lines of at most 200
characters each (this part may be missing), (2) a variables section that describes the
type of the data and the number and labels of variables in the file, and (3) the data section that contains the actual data values and data quality flags. Data quality flags may be
missing; if they appear they must be single digit ODV quality flags. For a sample .o4x file
see the samples directory of your ODV installation.
The .o4x variables section begins with the keyword ODV4.0 Listing and should be formatted as shown in the sample below. Any records before the ODV4.0 Listing line are treated
as comments and will be added to the collection .info file during import.
Sample .o4x variables section
(Note that the "....+." lines at the top and bottom only serve as rulers and are not part of
the file.)
....+....1....+....2....+....3....+....4....+....5....+....6....
ODV4.0 Listing
File Name: import4.o4x
 Type: HYD
 Nstat: 12
Variables: 8
Depth [m] 6.0
Temperature [°C] 8.2
Salinity [psu] 8.3
Oxygen [~$m~#mol/kg] 6.0
Phosphate [~$m~#mol/kg] 8.2
Silicate [~$m~#mol/kg] 8.1
Nitrate [~$m~#mol/kg] 7.1

http://acces.ens-lyon.fr/acces/thematiques/paleo/systemclim/global/odv/data/odv4Guide.pdf
