A script that converts braille data in bes format to unicode braille text data
 2018-07-16  kzakza
　@brlat has published a script that converts BES format braille data to Unicode Braille text data or Markdown notation text data.

Script for conversion from BES format to Unicode Braille plain text data
GitHub – brlat/Japanese-braille-misc-tools: Perl script for Japanese Braille data, especially 8-dot Kanji Braille data, etc.
Script to convert BES format to markdown text data
GitHub – brlat/bes-to-markdown: Convert .bes format braille data to Unicode braille markdown file
The IBM-derived BES format is also adopted by IBM's Tenyaku Hiroba-derived Sapie Library, so it is widely used as Braille 　data in Japan . If Unicode Braille is used, I believe that it will be possible to use it in a much wider range of environments than BES format Braille data.

https://code.kzakza.com/2018/07/bes_utf8_scirpt/

Braille data
After decompressing content files which had been compressed in ZIP format, the directory structure is as follows. The following is an example in BES format, but the same applies to BSE format.

XXXXXXX/(The Japanese title of the original book is used as the folder name.)
    ├─abcdefg01.bes (The file is named arbitrarily by the producer with alphanumeric characters only.)
    ├─abcdefg02.bes (The file is named arbitrarily by the producer with alphanumeric characters only.)
    ├─abcdefg03.bes (The file is named arbitrarily by the producer with alphanumeric characters only.)
                ︙
                

                https://www.ndl.go.jp/en/support/send_dev.html
