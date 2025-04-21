
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

# TVG Text Format

This document is an auxiliary document side-by-side to the TVG specification to allow a non-binary represenation of TVG files.

This format is meant for debugging/development and is not required to be implemented by conforming implementations.

## Structure

lisp
(tvg 1
