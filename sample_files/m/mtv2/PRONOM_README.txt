MTV Plot Data Format
Version 1.4
Rev. 0
January, 1994
Kenny Toh




1 INTRODUCTION
The MTV plot data format, or MTVDAT format, is used to specify data to be plotted in the PLOTMTV
visualization program. The most important feature of this format is that multiple types of data may be specified
in a single file or data-stream, thus avoiding the proliferation of data-files of various formats. As of this date,
the MTVDAT format includes the following types of data:
• 2D Curves
Connected sets of (x, y) points in 2D space
• 3D Curves
Connected sets of (x, y, z) points in 3D space
• 3D Contour Curves
3D Triangles/rectangles to be contoured
• 3D rectangular mesh data
Z-values on a rectangular x-y grid, used primarily for contours
• 4D volumetric data
T-values on a rectangular x-y-z grid
• 2D/3D Vector data
Vectors in 2D/3D space
• Probability Graph
2D (x, y) data plotted on a probability grid
• Histogram
Frequency of occurrence of data plotted as 2D bars
• Bar Charts
Data-points represented by 2D bars
