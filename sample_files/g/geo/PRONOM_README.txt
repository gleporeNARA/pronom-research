PROGRAM GEOGRD

***********************************************************************
*                                                                     *
* PURPOSES: 1) To extract a GEOID subgrid from a larger GEOID grid.   *
*                                                                     *
*           2) To translate a GEOID grid file to binary from the      *
*              ASCII transfer format and visa versa.                  *
*                                                                     *
*           3) To translate a GEOID grid file from binary or the      *
*              ASCII transfer format to the ASCII graphics format.    *
*                                                                     *
*           4) To print information about a GEOID grid to a file.     *
*                                                                     *
*              The program GEOID reads a binary grid of geoid heights.*
*              The first record in a grid file consists of header     *
*              information.  All the other records consist of REAL*4  *
*              grid numbers.  The grid files are unformatted and      *
*              direct access.                                         *
*                                                                     *
*              The GEOID grid consist of geoid heights in meters.     *
*              The geoid heights were obtained from a complete        *
*              expansion of the spherical harmonic coefficients       *
*              from the Ohio State University model known as OUS89B.  *
*              The names of the grids are consist of the location of  *
*              the grid (e.g. 'conus' or 'alaska') plus an extension. *
*              The extension for the GEOID grids of geoid height is   *
*              '.geo'.                                                *
*                                                                     *
*              The ASCII transfer file is used for porability.        *
*              The first two records in the ASCII file contain the    *
*              header information.  The rest of the records are       *
*              formatted as 6F12.6.                                   *
*                                                                     *
*              This program is intended to be used with GEOID         *
*              development.                                           *
*                                                                     *
*              All grids start and finish at even degrees.            *
*              NOTE that there must be minimum number of degrees      *
*              between the minimum and maximum longitude.  This is    *
*              explained further in subroutine NLON.                  *

https://geodesy.noaa.gov/PC_PROD/MEXICO97/geogrd.for
