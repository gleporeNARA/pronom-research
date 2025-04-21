XGL File Format Specification
The XGL file format is designed to represent 3D information for the purpose of visualization. It attempts to capture all of the 3D information that can be rendered by SGI's OpenGL rendering library. It uses XML 1.0 syntax, so it is easy to write and can be parsed by standard, freely available code. These features make XGL the ideal format to use when data must be exchanged between two graphics systems for the purposes of visualization.

The XGL format is intended to work well with systems that use OpenGL. It should be possible to take a program that renders 3D information using OpenGL and have that program export an XGL file. Then, an XGL viewer should be able to create OpenGL objects that are exactly the same as those rendered by the exporting program.

Because the XGL format uses XML syntax, it is easy to write applications that read and write XGL. To export XGL, an application needs only write out a text file using the XML syntax. XGL supports a variety of mechanisms for arranging and referencing data within the file, so it should be easy to find a method of exporting data that is easy to implement for any graphics system. There are a number of free XML parsers available, eliminating the need to implement a complex parser when building an XGL reader.

XML Syntax
The World Wide Web Consortium defines XML syntax. Detailed information about this syntax can be found at http://www.w3.org/TR/REC-xml. XGL uses a fairly basic subset of XML. In XGL, the order of tags within another tag is irrelevant. Any tags that are not defined are reserved for future versions of XGL except for those that begin with "EXT". Any application specific data should be enclosed with a tag that begins with "EXT".

Referencing
XGL supports the sharing of data between different parts of a file. For example, a vertex that is part of several faces can be defined once and can then be referenced by the faces that include that vertex. Referencing allows an XGL reader to recognize that two objects are the same. It also leads to a more compact file format.

Referencing is implemented by allowing certain XGL tags to contain an attribute named "ID" whose value is an integer. In other parts of the file another tag of the form <tagREF> can reference that value that is defined by the "ID" attribute. The places in a file where elements can be defined are indicated in the "Available Defines" sections of this documentation. A defined element can be referenced from anywhere within its parent or any of its parent's descendents.

Vectors
There are many places in XGL where vectors are used. A vector could be represented with a XML tag for each dimension of the vector, but this approach often leads to extremely large files because of the extra space used to store the tags. For this reason, XGL represents vectors as numbers delimited by commas. Specifically, XGL currently uses two, three, four and six dimensional floating-point vectors.


XGL Tag Definitions
Top-Level Tags
<WORLD>
The <WORLD> tag represents all of the viewer independent elements of a scene. This includes 3D objects, lights, and environment information.

Required Elements
Lighting
Exactly one element from the "Lighting Tags" section is required.

Background
Exactly one element from the "Background Tags" section is required.


https://people.math.sc.edu/Burkardt/data/xgl/xgl_spec.html
