That is exactly the problem, isn't it, early pcd subtype recognition? I
know overview pcd's can be recognized because they always start with
'PCD_OPA'. Pcd's containing only the three lower resolutions can be
recognized by their fixed length (assuming you're not reading from a
socket or something similar). That leaves me with destinguishing the pro
from the normal pcd, preferably from the header (although I can of
course already read all but the highest pro resolution from them), and
finding a good and early way to filter out all those {*word*99}py non-image
wannabee-pcd's squashed on every photo-cd disc...

http://www.delphigroups.info/2/d0/202951.html

MATCH string(0,7) == "PCD_OPA";
# Kodak Photo CD overview pack

http://retrogeeks.org/user/files/sgi/Text/biology.ncsa.uiuc.edu/library/SGI_bookshelves/SGI_Developer/books/IIDsktp_IG/sgi_html/ape.html
