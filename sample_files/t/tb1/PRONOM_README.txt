Paintpro
A graphical RLE file format I invented back in 1992 before I had access to the internet. I had no access to open graphics formats, but managed to come up with something very similar to PCX. It has been through many revisions, starting as a text, 16 color format for BASIC, and now a complex 24bit packed format for C, pascal, java and others. I still use it for various things, but almost no one else does.

http://www.deater.net/weave/vmwprod/

SPECIFICATION


The Paintpro format (.ppp) was developed by me, Vince Weaver. Over time is has developed from text into packed hex. Although platform independant, all of my current utilities are for the IBM PC in mode 13h (320x200 256 colors)


Paramaters:  A graphics file, semi-compressed.
             Maximum Dimensions : 4096x4096
             Maximum Colors:      2048
             24 bit color

Encoding:  Integer to 3 bytes
         
           Many of the paramaters are stored this way to save room.
           Basically an integer is 2 bytes long (16 bits).
           so the integer 266 is $010A hex or 0000 0001 0000 1010 binary.

           What integer to 3 bytes does is strip the top 4 bits off
           of two integers (limiting the size of each to 4096, hence 
           the maximum values of the file) and runs them together
           two 12 bit intgers together is 24 bits, or 3 bytes.

           So these two stripped integers are saved as 3 bytes.

           e.g  say the integers 320 and 200 are to be stored this way.

                      320 = $0140 hex           200 = $00C8 
                             |                       |
                    0000|0001 0010 0000     0000|0000 1100 1000
                             !                       !
First 4 bits stripped  0001 0010|0000         0000|1100 1000
                         !             !            !
                     0001 0010     0000 0000    1100 1000

                         $14          $00         $C8  

                    
                so the leading 0 is stripped off of each, and
                the three bytes $14 $00 $c8


      This is a little confusing, but this is the method I chose
      and it works pretty well.


The Format:

Header:
  PAINTPRO     8 bytes,file type
  
  http://www.deater.net/weave/vmwprod/paintpro.html
