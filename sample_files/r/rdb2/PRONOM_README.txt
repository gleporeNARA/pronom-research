This document provides information about meaning and usage of UNO-registries within arbitrary UNO processes.

UNO-registries store binary data in a tree-like structure. It has nothing to do with the windows registry (except that they follow a similar concept). UNO-registries mainly store two types of data

Type-library
In order to be able to invoke UNO-calls from BASIC or invoke UNO-calls via a interprocess-connection, the core UNO bridges need information about the used datatypes.
UNO has chosen to store these information into a typelibrary, so that the same data is reusable from any bridge. This is in opposite to for instance the CORBA approach, where for every datatype C-code is generated which needs to be compiled and linked into huge libraries.

Information about registered components
One basic concept of UNO is to simply be able to create an instance of a service by name via a so called ServiceManager. The association between the service name and the shared-library (where the necessary compiled code is to be found) is stored into a UNO-registry.
Both types of data are absolutely necessary to run a UNO-C++ process. Lack of the one or the other information generally leads to fast termination or crash of the program, so please avoid this. UNO processes in general open there registries during startup and close them when the process terminates.

Both types of data are in general stored into a file with a .rdb-suffix ( registry database ).

This documents explains more details about the two types of data, explains the tools how to prepare a proper registry and the different possibilities about how to bootstrap a C++ process with a registry. Another chapter deals with the registries used in OpenOffice.org.



https://www.openoffice.org/udk/common/man/tutorial/uno_registries.html
