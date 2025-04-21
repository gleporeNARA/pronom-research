Inter-Quake Model (IQM) Format
The Inter-Quake Model (IQM) format is a binary skeletal-animation format designed for extensibility, efficiency, and ease of loading. It is intended to serve as a replacement for the aging and ill-maintained MD5 and SMD skeletal-animation formats used in Quake-derived and Quake-like 3D engines. It has a companion export-only format, Inter-Quake Export (IQE), which is an extremely easy to export ASCII format that compiles to IQM, while supporting all IQM features, and is inspired by the OBJ format.

https://web.archive.org/web/20120315045245/http://lee.fov120.com/iqm/

Dev-Corner: Inter Quake Model Format and Open Source Gamedev Collaboration
The following is a guest post by Lee Salzman, a contributor to several open source game projects and the lead developer of such projects as the ENet networking library and Sauerbraten, introducing IQM (the Inter-Quake Model format), a simple model format designed to meet the practical challenge of animated content for Quake(-like) 3D engines and allow more sharing of modeling tools across various engines

As much as players or fans of various open source FPS games might view all these projects as competing, isolated islands, the surprising and hopeful truth is, we developers actually get together and talk about development challenges a lot. And in past discussions, one of those issues that stuck out like a sore thumb was content, especially animated content such as player models. We were all using our own various custom model formats or cast-off commercial formats (like id's MD5 or Valve's SMD formats) with related third-party export or conversion tools, with varying degrees of (dis)satisfaction.

Yet, what we all needed in this case was so eerily similar: we all just wanted a no-fuss, binary, skeletal animation format that was quick to load, had relatively small file sizes, and provided the commonly needed mesh data for Quake(-like) player models - not bloated with unnecessary "but what if..." features while remaining just flexible enough to fulfill the artists' needs. Existing formats like MD5, SMD, Collada, and others had complex textual representations that make them painful to load and often require significant internal conversions of the loaded data to get useful, renderable animation data out of them, often with frustrating omissions such as no ability to directly export vertex normals. Engine specific formats worked around these issues to some extent, but often suffered from poorly supported tooling due to the difficulty of keeping it up-to-date with various modeling tools and artist requirements.

IQM Demo Model, Mr Fixit
Given those frustations, why did we not just throw our lots in together and make one format that could handle our needs well enough, so we all benefit from common efforts on reliable, shared tools? Sanity prevailed, and not much later, after input wrangling from various developers within the community, we hammered out a simple specification for a pair of formats that did just that: IQM, a binary skeletal animation format that provides easy integration into a game engine, and IQE, a textual format that makes it easy to quickly write exporter scripts and easily converts to IQM if one does not wish to write an exporter for it directly.

And what good is a specification without support? So again not much later, we went through the grunt-work of actually making sure the format was well-supported in the key tools our artists used and, of course, the engines we all developed. At the time of this writing, all commonly used versions of Blender have direct exporter and importer support via the IQM development kit, the model viewer and conversion tool Noesis can easily convert from and to the format, and the format has out-of-the-box support in various engines, including but not limited to, DarkPlaces (used in Xonotic, Steel Storm, and more), CRX (used in Alien Arena), Qfusion (used in Warsow), ioquake 3 (used in Open Arena and many more), Remake Quake along with its sibling engine DirectQ, and Cube 2 (used in Sauerbraten, Red Eclipse, and more). To ensure continued and future support by other game engines, the IQM development kit also provides example demos of how to easily load and animate the format, both on the CPU and also using shaders to animate the format on the GPU, for developers that are unsure of how to utilize skeletal animation or just want to see the nitty-gritty details of how the format operates.

Despite the format getting off to a great start thanks to the support of various developers within the gaming community, we still need your help and support to help this format be even more useful. If you happen to use some modeling tools other than Blender (as awesome as it is, people have their preferences) and wouldn't mind writing a simple IQE exporter script for your modeling tool of choice, or even more sophisticated IQM direct export support, we would greatly appreciate your contribution!

To get started with the format, please check out the IQM development kit and other IQM/IQE format resources at: http://lee.fov120.com/iqm

https://freegamer.blogspot.com/2012/07/dev-corner-inter-quake-model-format-and.html

IQM Developer Kit 2021-06-13

*** Format information ***

"iqm.txt" contains a description of the Inter-Quake Model (IQM) format.
"iqe.txt" contains a description of the Inter-Quake Export (IQE) format.

https://github.com/lsalzman/iqm

// IQM: Inter-Quake Model format
// version 1: April 20, 2010
// version 2: May 31, 2011
//    * explicitly store quaternion w to minimize animation jitter
//      modified joint and pose struct to explicitly store quaternion w in new channel 6 (with 10 total channels)

// all data is little endian

struct iqmheader
{
    char magic[16]; // the string "INTERQUAKEMODEL\0", 0 terminated
    
https://github.com/lsalzman/iqm/blob/master/iqm.txt
