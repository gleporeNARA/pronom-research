TexturePacker

Kodi uses a tool named TexturePacker to compile all images used in a skin into a single file. The benefit of it is that images inside the Textures.xbt will load faster in the skin. This is done by converting all images into a format that take less processing by Kodi when they need to be rendered onto the screen.

A common misconception is that TexturPacker will just compress the images into a single file. This if far from the truth, so don't be surprised if the Textures.xbt file is much larger than the total size of all the individual images.


https://kodi.wiki/view/TexturePacker


static const std::string XBTF_MAGIC = "XBTF";

