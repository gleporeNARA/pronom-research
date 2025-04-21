Mitsuba is a research-oriented rendering system in the style of PBRT, from which it derives much inspiration. It is written in portable C++, implements unbiased as well as biased techniques, and contains heavy optimizations targeted towards current CPU architectures. Mitsuba is extremely modular: it consists of a small set of core libraries and over 100 different plugins that implement functionality ranging from materials and light sources to complete rendering algorithms.

In comparison to other open source renderers, Mitsuba places a strong emphasis on experimental rendering techniques, such as path-based formulations of Metropolis Light Transport and volumetric modeling approaches. Thus, it may be of genuine interest to those who would like to experiment with such techniques that haven't yet found their way into mainstream renderers, and it also provides a solid foundation for research in this domain.

The renderer currently runs on Linux, MacOS X and Microsoft Windows and makes use of SSE2 optimizations on x86 and x86_64 platforms. So far, its main use has been as a testbed for algorithm development in computer graphics, but there are many other interesting applications.

Mitsuba comes with a command-line interface as well as a graphical frontend to interactively explore scenes. While navigating, a rough preview is shown that becomes increasingly accurate as soon as all movements are stopped. Once a viewpoint has been chosen, a wide range of rendering techniques can be used to generate images, and their parameters can be tuned from within the program.



https://github.com/mitsuba-renderer/mitsuba

The serialized mesh format represents the most space and time-efficient way of getting geometry
information into Mitsuba. It stores indexed triangle meshes in a lossless gzip-based encoding that
(after decompression) nicely matches up with the internally used data structures. Loading such files
is considerably faster than the ply plugin and orders of magnitude faster than the obj plugin.
Format description: The serialized file format uses the little endian encoding, hence all fields
below should be interpreted accordingly. The contents are structured as follows:
Type Content
uint16 File format identifier: 0x041C
uint16 File version identifier. Currently set to 0x0004

http://mitsuba-renderer.org/releases/current/documentation_lowres.pdf
