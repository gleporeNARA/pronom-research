SIMPLIS (SIMulation of Piecewise LInear Systems) is a circuit simulator specifically designed to handle the simulation challenges of switching power systems. Like SPICE, SIMPLIS works at the component level but typically can perform a transient analysis of a switching circuit 10 to 50 times faster. For switching power systems, the piecewise linear (PWL) modeling and simulation techniques employed by SIMPLIS result in qualitatively superior convergence behavior compared to SPICE.

SIMPLIS achieves its speed by modeling devices using a series of PWL straight-line segments rather than by using the SPICE technique of solving nonlinearities such as exponential expressions. By modeling devices in this way, SIMPLIS can characterize a complete, nonlinear system as a cyclical sequence of piecewise linear circuit topologies. This method generates an accurate representation of a typical switching power system where the semiconductor devices function as high frequency switches.

https://help.simetrix.co.uk/8.1/simplis/what_is_simplis/topics/what_is_simplis.htm

File Extensions
Defines extensions used for the various files used by SIMetrix. These setting control what file extensions are listed for editors of the various file types and, where relevant, what action will be taken if a file of that type is dragged and dropped into the SIMetrix environment.

Many SIMetrix file types use five letter extensions beginning with .sx. This is to help prevent clashes with other applications.

For each setting, the supported extensions are separated by a semi-colon. The first in the list is the default. So, for example, the default schematic extension is sxsch so when you save a schematic without giving an extension, it will automatically be given the extension sxsch.

https://help.simetrix.co.uk/8.1/simplis/user_manual/topics/sundrytopics_options.htm
