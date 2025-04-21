Spline Font Database
Warning
This page is often out of date. I thought it was a correct on 16 Feb 2011. A changelog file is available. Even if out of date it should be helpful, but if you really need to know the current format look at fontforge/sfd.c and see what it parses. Some descriptions of esoteric features are not complete, but I hope they give you enough hints that you can figure the format out (especially after looking it up in sfd.c)

TYSON:
What is the meaning of this?

THOMAS
That’s the most relevant
Question in the world.
—The Lady’s not for Burning – Christopher Fry

The sfd 1 format evolves over time. I hope the current parser can handle old sfd formats. Most changes have been small, but in Feb 2008 I allowed multiple layers in fonts and this turned out to be an incompatible change and I raised the sfd version number to 3, and in March of 2007 the way fontforge handled lookups and features changed radically (and I bumped the SFD file version number for the first time) and sfd files created before then are better understood if you look at an older version of this document.

FontForge’s sfd files are ASCII files (so they can be copied easily across the internet and so that diffs are somewhat meaningful). They contain a full description of your font. As of 14 May 2008 there is a registered (with IANA) MIME type for them application/vnd.font-fontforge-sfd.

They are vaguely modeled on bdf files. The first few lines contain general font properties, then there’s a section for each character, then a section for each bitmap font.

Contents

Spline Font Database

Font Header

Outline Character Data

Bitmap Fonts

SplineFont Directories

Autosave Format

Warning
It is tempting to cut and paste information from one sfd file to another. This is usually ok, but there are a couple of cases than need to be avoided:

If you copy a glyph with truetype instructions, those instructions may call subroutines defined in the old font but not the new. Unexpected things may happen when the glyph is grid fit (including system crashes)

If you copy a substitution (ligature, kern, contextual chaining, …) item from one font to another, the substitution contains the name of a lookup-subtable. Bad things will probably happen if the lookup subtable isn’t in the font.

If you copy a glyph containing references – these are done by glyph index (which is probably different from font to font). You may end up referring to the wrong glyph.

Font Header
Here is an example of what the first few lines look like:

SplineFontDB: 3.0

https://fontforge.org/docs/techref/sfdformat.html
