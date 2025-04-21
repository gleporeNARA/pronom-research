The SeaBASS Data File Format
3.1 Overview
The design of a SeaBASS data file was conceived based on a need for effortless data access, including online access, while accommodating a variety of computer operating systems. The objective was a simple and logical format that was easily expandable, portable across all computer platforms, web accessible, and manageable using a RDBMS. Accordingly, all SeaBASS data files are currently flat, two dimensional text files that adhere to the basic  American Standard Code for Information Interchange (ASCII) format. The SPO believes that the basic ASCII format most readily satisfies the prerequisite conditions, while also  being the most approachable format by the widest user audience.  The format was further designed to be self describing. Each file is comprised of two parts,  a header block followed by a data block (Figure 3.1). The former consists of a series of  keywords and values intended to provide descriptive information about the data in the  file, for example, the source of the data and its  spatial and temporal limits. The latter contains a matrix of data values, similar to the  organization of a spreadsheet. File names are not required to  follow any specific naming  convention, rather, they are left the discretion of the data contributors  


3.2 The header block The keyword-based approach was  implemented to enhance automated  processing,  as the standard vocabulary permits data files to  be easily parsed. Each keyword and its  argument in the header block occupy one line in  the block. The format is:  /keyword=value,  where keyword is  an approved, case-insensitive  keyword (Table 3.1) that must begin with a  slash (/) and value is a string or number which  assigns value to the keyword. The exceptions  are /begin_header and   end_header, which  do not have input arguments.

Every data file opens with /begin_header.

https://oceancolor.sci.gsfc.nasa.gov/docs/technical/seabass_tm_211617.pdf
