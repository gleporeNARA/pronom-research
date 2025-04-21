5.7 Introducing CDL (Common Data Language)
CDL (Common Data Language) is a human-readable notation for netCDF objects and data.
  netcdf example {   // example of CDL notation
  dimensions:
	  lon = 3 ;
	  lat = 8 ;
  variables:
	  float rh(lon, lat) ;
		  rh:units = "percent" ;
		  rh:long_name = "Relative humidity" ;
  // global attributes
	  :title = "Simple example, lacks some conventions" ;
  data:
   rh =
    2, 3, 5, 7, 11, 13, 17, 19,
    23, 29, 31, 37, 41, 43, 47, 53,
    59, 61, 67, 71, 73, 79, 83, 89 ;
  }
This example specifies a netCDF dataset with two dimensions (lon and lat), one variable (rh), two variable attributes (units and long_name), one global attribute (title), and some data values for the variable.
This example has only one variable, but multiple variables may be included in a netCDF file.
CDL comments follow "//" symbols. They are not part of netCDF data. To store comments about a variable or file, use a variable attribute or global attribute.
You can use the ncdump utility to get the CDL form of a binary netCDF file (more on this later).
You can use the ncgen utility to generate a binary netCDF file from CDL (more on this later).
This simple example neglects some recommended best practices for netCDF data.
NcML is an XML-based notation similar to CDL for netCDF data


https://www.unidata.ucar.edu/software/netcdf/workshops/most-recent/nc3model/Cdl.html#:~:text=CDL%20(Common%20Data%20Language)%20is,for%20netCDF%20objects%20and%20data.&text=This%20example%20specifies%20a%20netCDF,data%20values%20for%20the%20variable.
