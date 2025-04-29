NOTE:The attached signature will only capture certain LP formatted problems. There are just too many variables to attempt a signature to capture more varieties of the format.



LP format
The LP format captures an optimization model in a way that is easier for humans to read than MPS format, and can often be more natural to produce. One limitation of the LP format is that it doesn't preserve several model properties. In particular, LP files do not preserve column order when read, and they typically don't preserve the exact numerical values of the coefficients (although this isn't inherent to the format).

Unlike MPS files, LP files do not rely on fixed field widths. Line breaks and whitespace characters are used to separate objects. Here is a simple example:

\ LP format example


https://www.gurobi.com/documentation/9.1/refman/lp_format.html
