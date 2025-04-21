The general algebraic modeling system (GAMS) is a high-level modeling system for mathematical optimization. GAMS is designed for modeling and solving linear, nonlinear, and mixed-integer optimization problems. The system is tailored for complex, large-scale modeling applications and allows the user to build large maintainable models that can be adapted to new situations. The system is available for use on various computer platforms. Models are portable from one platform to another.

GAMS was the first algebraic modeling language (AML)[2] and is formally similar to commonly used fourth-generation programming languages. GAMS contains an integrated development environment (IDE) and is connected to a group of third-party optimization solvers. Among these solvers are BARON, COIN-OR solvers, CONOPT, CPLEX, DICOPT, MOSEK, SNOPT, SULUM, and XPRESS.

GAMS allows the users to implement a sort of hybrid algorithm combining different solvers. Models are described in concise, human-readable algebraic statements. GAMS is among the most popular input formats for the NEOS Server.[citation needed] Although initially designed for applications related to economics and management science, it has a community of users from various backgrounds of engineering and science.


https://en.wikipedia.org/wiki/General_algebraic_modeling_system

GAMS Data eXchange (GDX)

This document describes the GDX (GAMS Data eXchange) facilities available in GAMS. The GDX facilities provide basic functionalities for exchanging GAMS data such as read and write. In addition to these facilities, there are a number of GDX Tools for exchanging data between GAMS and other data sources as well as for performing specific operations on a GDX file.

A GDX file is a file that stores the values of one or more GAMS symbols such as sets, parameters variables and equations. GDX files can be used to prepare data for a GAMS model, present results of a GAMS model, store results of the same model using different parameters etc. A GDX file does not store a model formulation or executable statements. Among other usages a GDX file can also be used to prepare data for a GAMS model, pass results of a GAMS model into different programs, and pass results into GAMS from different programs.

GDX files are binary files that are portable between different platforms. They are written using the byte ordering native to the hardware platform they are created on, but can be read on a platform using a different byte ordering. See also General notes on GDX files .

https://www.gams.com/latest/docs/UG_GDX.html
