TeX (/tɛx/, see below), stylized within the system as TEX, is a typesetting system which was designed and written by Donald Knuth[1] and first released in 1978. TeX is a popular means of typesetting complex mathematical formulae; it has been noted as one of the most sophisticated digital typographical systems.[2]

TeX is widely used in academia, especially in mathematics, computer science, economics, political science, engineering, linguistics, physics, statistics, and quantitative psychology. It has long since displaced Unix troff,[b] the previously favored formatting system, in most Unix installations. It is also used for many other typesetting tasks, especially in the form of LaTeX, ConTeXt, and other macro packages.

TeX was designed with two main goals in mind: to allow anybody to produce high-quality books with minimal effort, and to provide a system that would give exactly the same results on all computers, at any point in time (together with the Metafont language for font description and the Computer Modern family of typefaces).[3] TeX is free software, which made it accessible to a wide range of users.

https://en.wikipedia.org/wiki/TeX

What is an appropriate /etc/magic entry for DVI?


I distillated the following lines from the appropriate
*type documentation files etc.:
0       string          \367\203        GF (generic TeX font) file
0       string          \367\131        PK (packed TeX font) file
0       string          \367\312        VF (virtual TeX font) file
0       string          \367\002        DVI (TeX output) file
0       string          \\documentstyle*document
0       string          FLIB            FLI (TeX) font library file

http://www.verycomputer.com/18_5d1a60d97ebbeb1d_1.htm
