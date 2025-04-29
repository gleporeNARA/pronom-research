How do I save my audio for use in other applications? Does saving a project (AUP file) do that?
An AUP file can only be saved and used in Audacity. It is just a small text file that tells Audacity how to work with the audio you see in the project window. It lets you resume working on that audio in Audacity at a later time if you need to.

https://manual.audacityteam.org/man/faq_opening_and_saving_files.html

Audacity Project Format
File Format
Name	Audacity Project Format
Ontology	
Electronic File Formats
Audio and Music
Audacity Project Format
Extension(s)	.aup
Description
The Audacity Project Format is used by Audacity to store all the data related to an Audacity project - tracks, clips, envelope points, etc. As well as the .aup file, Audacity also stores a number of .au (lossless, uncompressed, PCM audio data) files in a folder entitled $PROJECT_data (e.g. if the project file is called "first_project", the sub-folder will be called "first_project_data").

The format appears to have gone through at least three iterations. The first is created by Audacity v1.1.x or earlier and is no longer supported - the official manual suggests exporting each track as a WAV file using the appropriate legacy version. The second is created by Audacity v1.2.x and can be opened by recent versions of Audacity, but if saved will no longer be openable by v1.2. Finally, the third version of the format is created by versions of Audacity from v1.3 to current.

http://fileformats.archiveteam.org/wiki/Audacity_Project_Format
