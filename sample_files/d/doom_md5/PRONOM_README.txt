Ideally this signature should be split into two signatures, one for the anim file and one for the mesh file, but I couldn't figure out the syntax to have the mesh file NOT match the hex values 6e756d4672616d6573 in the first 200 bytes. I think it should be [!6e756d4672616d6573] but I get an error for that. So, here's a signature that matches both 3dmesh and 3danim files.



MD5 is a proprietary but open format specific to Doom 3 and allows models to be animated by the use of an internal skeleton. Generally two files are needed to make a functional MD5 model; md5mesh and md5anim. The 3rd, md5camera, allows the creation and use of complex camera paths used during cut scenes. See the different pages for syntax explanation

. MD5MESH
Low resolution polygonal mesh exported from a 3D application.

. MD5ANIM
Contains animation sequence data, the positions of bones etc. during animation.

https://modwiki.dhewm3.org/MD5_(file_format)
