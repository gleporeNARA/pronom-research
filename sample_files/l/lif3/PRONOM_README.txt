Proprietary format used in Lucid Builder software (https://www.lucidcentral.org/lucid-builder/)

LIF3 (Lucid Interchange Format version 3) Files
LIF3 files are xml documents containing all the data (feature and entity lists, item properties, score data and media attachments) for a key. LIF3 files can be used to back up keys, and for easily transferring keys from one computer to another.

Note: The LIF3 file for a key does not contain the key’s media, only references to where the media can be found. Therefore if you need to transfer a LIF3 file to another computer you should also copy the key’s media directories

You can do this by opening the LIF3 file in a standard text editor, searching "for media base_path", and editing the path name of the Media directory. For example:

<media base_path="C:\program files\Lucid3\my key\Media">

should be changed to:

<media base_path="{new_computer’s_path}\Media">

where new_computer’s_path is the full path name including drive letter of the Media directory on the new computer.

 
 https://www.lucidcentral.org/help/lucid/3.6/builder/help/lif3.htm
