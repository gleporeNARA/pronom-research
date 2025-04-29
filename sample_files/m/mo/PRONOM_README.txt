10.3 The Format of GNU MO Files
The format of the generated MO files is best described by a picture, which appears below.

The first two words serve the identification of the file. The magic number will always signal GNU MO files. The number is stored in the byte order used when the MO file was generated, so the magic number really is two numbers: 0x950412de and 0xde120495.

The second word describes the current revision of the file format, composed of a major and a minor revision number. The revision numbers ensure that the readers of MO files can distinguish new formats from old ones and handle their contents, as far as possible. For now the major revision is 0 or 1, and the minor revision is also 0 or 1. More revisions might be added in the future. A program seeing an unexpected major revision number should stop reading the MO file entirely; whereas an unexpected minor revision number means that the file can be read but will not reveal its full contents, when parsed by a program that supports only smaller minor revision numbers.

The version is kept separate from the magic number, instead of using different magic numbers for different formats, mainly because /etc/magic is not updated often.

https://www.gnu.org/software/gettext/manual/html_node/MO-Files.html
