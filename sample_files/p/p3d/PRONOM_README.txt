1. Introduction
  The  Pittsburgh  Supercomputing Center 3D Metafile (P3D) is intended to serve
as a storage format for three dimensional models.  The goal of the  project  is
to  develop  a representation that will be compact, portable, and flexible, and
can be created and examined or modified by a variety of software packages on  a
variety   of   platforms.    Although  P3D  is  extensible  to  allow  all  the
functionality of model languages intended for  photorealistic  rendering  (e.g.
Pixar's  proposed Renderman standard), it is not intended for the production of
photorealistic images, or even to insure that different renderers will  produce
identical  images  from a given P3D model.  Rather, it is designed to provide a
format for the storage and transport of models which can be viewed on a variety
of platforms with a variety of rendering capabilities.

3. Syntax Rules and Special Conventions
  The syntax of P3D is exactly that of Lisp.  Each P3D  metafile  should  begin
with the Lisp comment:

    ;P3D nnn

left  justified

https://people.math.sc.edu/Burkardt/data/p3d/p3d_format.txt
