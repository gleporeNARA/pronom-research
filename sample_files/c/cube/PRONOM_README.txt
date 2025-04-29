Introduction
This section is entirely informative and does not form an integral part of the specification.
The Cube format was originally developed by IRIDAS in 2003. This specification is in response to growing adoption
and inquiries and is presented in an effort to insure broad interoperability. It captures previously undocumented
details of the Cube format that were evident only in implementations made by IRIDAS and Adobe.
This specification is primarily intended for developers of applications that use look-up tables for color conversions.
It includes detailed format requirements, three sample files, and a sample application.
Look-up tables (LUTs) are often used when converting an image from one color representation to another, for
example, when converting between log and gamma encodings, changing the color space, applying a color correction,
applying a look, changing the dynamic range, gamut mapping, exporting to an output device, or previewing how an
image will be reproduced.
A look-up table is a sampled representation of a mathematical function, with the samples stored in table form. The
table form provides a simple and universal representation of arbitrarily complex (or proprietary) functions, and
doing a table look-up is often faster than calculating the original function.
Each sample in the table holds the output value(s) for a specific input coordinate. When an output value is requested
for an input coordinate that falls between stored coordinates, the value is obtained by interpolating between adjacent
samples.
A Cube file is a text file that defines a look-up table in the Cube format.

5.6
 Common Keywords
The following keywords with associated parameters are common to all Cube files:
TITLE <sp> "<text>"
DOMAIN_MIN <sp> rl <sp> gl <sp> bl
DOMAIN_MAX <sp> rh <sp> gh <sp> bh

https://wwwimages2.adobe.com/content/dam/acom/en/products/speedgrade/cc/pdfs/cube-lut-specification-1.0.pdf
