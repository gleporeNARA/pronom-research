
An alternative binary encoded vector graphics format.

Why another format?
SVG is a horribly complex format and an overkill for most projects. The specification includes way too many edge cases so implementing a new SVG renderer will always have drawbacks or missing pieces.

TinyVG tries to be simpler. Fewer features, but powerful enough to cover 90% of use cases.

Features
Compact binary encoding (39% size of a comparable SVG file on average)
Cover 90% of typically used SVG features files while only having a tiny fraction of complexity
Common 2D primitives are supported (paths, lines, rectangles, polygons)
Linear and radial two-point gradient support.
Configurable precision for smaller files.

https://tinyvg.tech/

TINY VECTOR GRAPHICS(SPECIFICATION)


Introduction

Why a new format

SVG is the status quo widespread vector format. Every program can kinda
use it and can probably render it right to some extend. The problem is
that SVG is a horribly large specification, it is based on XML and
provides not only vector graphics, but also a full suite for animation
and JavaScript scripting. Implementing a new SVG renderer from scratch
is a tremendous amount of work, and it is hard to get it done right.

Quoting the german Wikipedia:

  Praktisch alle relevanten Webbrowser kÃ¶nnen einen GroÃŸteil des
  Sprachumfangs darstellen.
  Virtually all relevant web browsers can display a large part of the
  language range.

The use of XML bloats the files by a huge magnitude and doesnâ€™t provide
a efficient encoding, thus a lot of websites and applications ship files
that are not encoded optimally. Also SVG allows several ways of
achieving the same thing, and can be seen more as a intermediate format
for editing as for final encoding.

TinyVG was created to adress most of these problems, trying to achieve a
balance between flexibility and file size, while keeping file size as
the more important priority.


 Field              Type             Description
  ------------------ ---------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  magic              [2]u8            Must be {Â 0x72,Â 0x56Â }
  
  https://tinyvg.tech/download/specification.txt
