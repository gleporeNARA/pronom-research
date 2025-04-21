EDIF
From Wikipedia, the free encyclopedia
Jump to navigationJump to search
EDIF (Electronic Design Interchange Format) is a vendor-neutral format based on S-Expressions in which to store Electronic netlists and schematics. It was one of the first attempts to establish a neutral data exchange format for the electronic design automation (EDA) industry. The goal was to establish a common format from which the proprietary formats of the EDA systems could be derived. When customers needed to transfer data from one system to another, it was necessary to write translators from one format to other. As the number of formats (N) multiplied, the translator issue became an N-squared problem. The expectation was that with EDIF the number of translators could be reduced to the number of involved systems.

Representatives of the EDA companies Daisy Systems, Mentor Graphics, Motorola, National Semiconductor, Tektronix, Texas Instruments and the University of California, Berkeley established the EDIF Steering Committee in November 1983. Later Hilary Kahn, a computer science professor at the University of Manchester, joined the team and led the development from version EDIF 2 0 0 till the final version 4 0 0.


Contents
1	Syntax
2	Versions
2.1	EDIF 2 0 0
2.2	EDIF 3 0 0
2.3	EDIF 4 0 0
3	Evolution
3.1	Problems with 2 0 0
3.2	Solutions to EDIF 2 0 0 problems
3.3	EDIF Descendants
4	External links
Syntax
The general format of EDIF involves using parentheses to delimit data definitions, and in this way it superficially resembles Lisp. The basic tokens of EDIF 2.0.0 were keywords (like library, cell, instance, etc.), strings (delimited with double quotes), integer numbers, symbolic constants (e.g. GENERIC, TIE, RIPPER for cell types) and "Identifiers", which are reference labels formed from a very restricted set of characters. EDIF 3.0.0 and 4.0.0 dropped the symbolic constants entirely, using keywords instead. So, the syntax of EDIF has a fairly simple foundation. A typical EDIF file looks like this:

(edif fibex  (edifVersion 2 0 0)

https://en.wikipedia.org/wiki/EDIF
