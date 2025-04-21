Add a color library for use in FrameMaker
You can add any library file formatted in the ASCII Color Format (.acf), version 2.1 or earlier, or in the Binary Color Format (.bcf), version 2.0. You can’t use FrameMaker to save a .bcf library file.

1)Place the library file into the Fminit\Color folder and restart FrameMaker.

https://help.adobe.com/en_US/framemaker/2015/using/using-framemaker-2015/frm_graphics_gr/Manage_color_libraries-.htm

Binary Color File (.bcf)
Most of this was found by comparing with the little documented ACF format.


Byte order is big-endian. Strings are NUL padded. Except for the Lab values, all shorts are unsigned. Character encoding is Mac Roman.


Version: 8bytes string (ACF 1.0/ACF 2.1/BCF 2.0)

https://wiki.scribus.net/canvas/Talk:New_Colours_Format
