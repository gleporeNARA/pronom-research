:userdoc.

.im src\common.ipf

.* There are some song titles and band names used in the examples in this
.* file. Please do not translate them.

.*-------------------------------------------------------------------------
.*fold00.*About the program

:h1 id=about res=1000.About this program
:fn id=mp3.
:p.MP3 is a format for encoding audio data (songs, pieces of music, etc.)
which allows much sound to be encoded in few bytes (i.e. very good
compression ratios).
:efn.

:fn id=tag.
:p.An MP3-file may have a so called "ID3 tag" appended, which is just a piece
of data at the end of the file, that includes additional information about
this piece of audio&colon. Title, Artist, Album, Year, a comment, the genre
(song type), track number (ID3 v1.1). This information is displayed by many
MP3 players.
:efn.

.*-------------------------------------------------------------------------

:artwork name='src/data/minta.bmp' align=center.
:p.This program will display information about :link refid=mp3
reftype=fn.MP3:elink. audio files and allow you to add an :link refid=tag
reftype=fn.ID3 information tag:elink. to them.


:p.As well as working with single files, &progname. allows you to edit the
tags for multiple files easily, either one after another or all at once.

:p.Additionaly you can remove the tag from one or more files and automatically
have files renamed.

:p.The program also can create a list of the MP3-files, with all or just
selected information for each file.


:p.:hp2.What's new?:ehp2.

:p.If you want to find out, what is new or was changed in this release, see
the :link refid=history reftype=hd.version history:elink.

:p.Please note that there are more things that could (and will) be included
into the program in future versions. Send me your comments about what you
would like to have ... (though I do not promise anything ;-).

:p.:hp2."Registering":ehp2.

:p.&progname. is mailware, so please write me a short mail (or a postcard
or something if you like) if you use &progname.! (see also :link
refid=register reftype=hd."The Top 10 reasons why not to register &progname."
:elink.;-)



.*-------------------------------------------------------------------------
.*fold00.*The windows

:h1 id=windows res=2000.The windows
:p.This section informs you about the various windows of &progname., what
functions they offer and how to use them.
:p.
:ul compact.
:li.:link refid=mainwindow reftype=hd.The main window:elink.
:li.:link refid=settingswindow reftype=hd.The settings window:elink.
:li.:link refid=listwindow reftype=hd.The list window:elink.
:li.:link refid=autoopenwindow reftype=hd.The autoopen window:elink.
:li.:link refid=renamewindow reftype=hd.The renaming window:elink.
:eul.

.*-------------------------------------------------------------------------
.*fold00.*The main window

:h2 id=mainwindow res=2100.The main window
:p.The main window is the window where you do most of the work. Here you can
edit the tags of files and get info about them.

:p.The main window has the following sections&colon.
:ul compact.
:li.:link refid=filelist reftype=hd.The selected files list:elink.
:li.:link refid=fileinfo reftype=hd.Fileinfo display:elink.
:li.:link refid=taginfo reftype=hd.Taginfo display:elink.
:li.:link refid=buttons reftype=hd.The pushbuttons and the menu:elink.
:eul.


.*-------------------------------------------------------------------------
.*fold00.*The selected files list

:h3 id=filelist res=2110.The selected files list
:p.This list holds the selected files, i.e. the files that you may work with.

:dl break=all tsize=5.

:dt.:hp2.Adding files to the list:ehp2.
:dd.There are several ways to add files to the list&colon.
:ul.

:li.You may use the file dialog that appears when you press the "Open" button
or select "Open..." from the "Files" menu.

:li.You may have &progname. :hp1.search directories for files to add:ehp1., by
choosing "Auto-open..." from the "Files" menu. A :link refid=autoopenwindow
reftype=hd.directory dialog:elink. will appear, in which you may select the
directory, that should be searched for MP3 files to add.

:p.:hp1.Note&colon.:ehp1. All subdirectories of the selected directory will
be searched too.

:li.You may drop files and/or directories onto the &progname. main window using
direct manipulation (drag'n'drop). The files will be added to the list,
directories will be search for files to add.
:eul.

:dt.:hp2.Removing files from the list:ehp2.
:dd.There are several ways to remove files to the list&colon.
:ul.
:li.To remove only the current file, press ALT+'d' or select "Remove current"
from the "Files" menu.
:li.To remove all files from the list select "Remove all" from the "Files"
menu.
:eul.

:edl.

:p.Global file operations like "Save all" or "Remove all" affect all the
files that are in the list.

:p.Single file operations like "Save" and "Remove" affect only the file that
is currently chosen from this list.

:p.The title of this section displays the number of files, that are currently
in the list.

:p.Pressing ALT+'n' (or selecting "Save &amp. next" in the "Tag" menu) will
automatically save the current tag and make the next file in the list the
current file. Pressing ALT+'p' (or selecting "Save &amp. previous" in the
"Tag" menu) will do the same, but make the previous file in the list the
current one. This way you can easily edit multiple files one by one.


.*-------------------------------------------------------------------------
.*fold00.*The file information display

:h3 id=fileinfo res=2120.The file information display
:p.This section of the window displays (technical) information about the
current MP3 file. This values are taken directly from the MP3 file header and
can not be modified.

:dl break=all tsize=5.

:dt.:hp2.Version:ehp2.
:dd.This field shows the :hp1.version:ehp1. of the MP3 file.

:dt.:hp2.Layer:ehp2.
:dd.This field shows the :hp1.layer:ehp1. (1, 2 or 3) of the MP3 file.

:dt.:hp2.Frequency:ehp2.
:dd.This field shows the :hp1.sampling frequency:ehp1. or :hp1.sampling
rate:ehp1. of the file.

:dt.:hp2.Bitrate:ehp2.
:dd.This field shows the :hp1.bitrate:ehp1. of the MP3 file. The bitrate
tells the MP3 player, how many bits should be decoded per second.

:dt.:hp2.Mode:ehp2.
:dd.May be stereo, joint stereo, dual channel or mono (single channel).
Please do not ask me, what exactly joint stereo or dual channel are &colon.-)

:dt.:hp2.Est. time:ehp2.
:dd.The estimated playtime of the MP3 file. It is calculated from the size of

the file and the bitrate.

:dt.:hp2.Emphasis:ehp2.
:dd.Rarely used today. Something for noise reduction ...

:dt.:hp2.Private:ehp2.
:dd.This tells, if the MP3 file is private or not - whatever that is supposed
to mean.

:dt.:hp2.Copyright:ehp2.
:dd.This tells, if the MP3 file is copyright(ed?).

:dt.:hp2.Original:ehp2.
:dd.This tells, if the MP3 file is an original or a copy. I do not now, what
exactly knowing this might be good for - or who adjusts it, by the way ...

:dt.:hp2.CRCs:ehp2.
:dd.This tells, if the MP3 file has some kind of error checking included.

:dt.:hp2.Padding:ehp2.
:dd.This tells, some technical stuff which is related to the format of the MP3
file.

:edl.


.*-------------------------------------------------------------------------
.*fold00.*The tag information display

:h3 id=taginfo res=2130.The tag information display
:fn id=boc.
:p.Residing on the album "Imaginos" from Blue &Oe.yster Cult.
:efn.
:fn id=sid.
:p.Taken from the lyrics of "Shut it down" from Mot&oe.rhead's album "Iron
fist".
:efn.
.*-------------------------------------------------------------------------
:p.This section of the window displays the information contained in the
ID3-tag of the file. You may happily modify this values (or enter new ones,
if the file did not have a tag attached before). Of course only if the file
is not read-only (e.g. has the read-only flag set or resides on a CDROM).

:p.:hp1.Note&colon.:ehp1. The length-limits are those of the ID3-tag
specification, so do not flame me, if you are not able to squeeze :link
refid=boc reftype=fn."The siege and investiture of Baron von Frankenstein's
castle at Weisseria":elink. into the title field ...

:dl break=all tsize=5.

:dt.:hp2.Title:ehp2.
:dd.The title of the song (or whatever piece of sound the file
contains).
May be up to 30 characters long.

:dt.:hp2.Artist:ehp2.
:dd.Mozart, Black Sabbath, Bananarama, a barking cat ... you get the thing.
May be up to 30 characters long.

:dt.:hp2.Album:ehp2.
:dd.What album this song (or whatever) is from. If it is not from any
album-related thing, you may leave this field empty if you like. Another
field that may contain up to 30 characters.

:dt.:hp2.Year:ehp2.
:dd.When the song was recorded, published, No.1 in the charts or
whatever you think might fit here - even letters, as there is no restriction
only to numbers. Who knows, what it might be good for ... Up to 4 charactes
will find space here.

:dt.:hp2.Genre:ehp2.
:dd.What kind of music it is. Select one from the extensive list. I do not
know, who "invents" this genres, but there seems to be common agreement about
them, so do not ask me, to add or remove any of them. If you like, you may
edit them yourself (see also :link refid=genresfile reftype=hd."The genres
file":elink.).

:dt.:hp2.Comment:ehp2.
:dd.Place a comment here. Not about the program of course, but about the MP3
file. 30 characters (only 28 if you do use "Track #"), the same old thing
(:link refid=sid reftype=fn.I just wanna shut it down:elink.).
:p.:hp1.Note&colon.:ehp1. You may use macros here, which will automatically be
replaced by the appropriate values when saving the tag (works as well for
"Save all")&colon.
:ul compact.
:li.$T - Title
:li.$A - Artist
:li.$a - Album
:li.$Y - Year
:li.$G - Genre
:li.$v - MPEG version number
:li.$l - Layer of the file
:li.$t - Estimated playing time
:li.$m - Mode
:li.$f - Frequency
:li.$b - Bitrate
:li.$r - Track
:eul.
:p.:hp1.Example&colon.:ehp1. If you entered "Playtime=$t, Mode=$m" here and
saved, the comment would read something like "Playtime=03&colon.14,
Mode=Stereo" then.

:dt.:hp2.Track #:ehp2.
:dd.Here you may enter or select what the track number of the song was (if it
came from a CD or something).
:p.:hp1.Note&colon.:ehp1. This field is an extension to ID3 v1.0 (it's v1.1).
If you set this to 0, the tag will be v1.0. If you set this to a value other
than 0, the tag will be v1.1&colon. The track number is stored in the last 2
Bytes of the comment, so the comment may then be only 28 chars long. If you
entered 29 or 30 already, it will be clipped to 28 when saving.
:edl.


.*-------------------------------------------------------------------------
.*fold00.*The push buttons + menu

:h3 id=buttons res=2140.The push buttons and the menu
:dl break=all tsize=5.
:dt.:hp2.Open...:ehp2.
:dd.This will pop up a file dialog, which will allow you to select the files
you want to add to the :link refid=filelist reftype=hd.selected files list
:elink..

:dt.:hp2.Auto-open...:ehp2. (menu only)
:dd.This will pop up a :link refid=autoopenwindow reftype=hd.directory
dialog:elink., which will allow you to select the directory that should be
search for files you want to add to the :link refid=filelist
reftype=hd.selected files list:elink.. Subdirectories will be searched too.

:dt.:hp2.Release current:ehp2. (menu only)
:dd.This will remove the currently selected file from the :link
refid=filelist reftype=hd.selected files list:elink..

:dt.:hp2.Release all:ehp2. (menu only)
:dd.This will remove all files from the :link
refid=filelist reftype=hd.selected files list:elink..

:dt.:hp2.Rename...:ehp2. (menu only)
:dd.This will open the :link refid=renamewindow reftype=hd.rename dialog
window:elink., which allows you to automatically have all files renamed,
using a template name (including macros) as a pattern for renaming.

:dt.:hp2.List...:ehp2.
:dd.This will open the :link refid=listwindow reftype=hd.list dialog
window:elink., which allows you to output a list of all the selected files to
disk. You may also choose what tag information should be included in the list
for each file.

:dt.:hp2.Exit:ehp2.
:dd.As you may have already guessed, this will cause the program to end. Save
what you do not want to lose, as there is no "Really quit?" ...

:dt.:hp2.Save (current):ehp2.
:dd.This will save the data in the :link refid=taginfo reftype=hd."tag
information" entry fields:elink. as the tag for the current file.

:dt.:hp2.Save &amp. next:ehp2. (menu only)
:dd.This will automatically save the current tag and make the next file in
the list the current file.

:dt.:hp2.Save &amp. previous:ehp2. (menu only)
:dd.This will automatically save the current tag and make the previous file
in the list the current file.

:dt.:hp2.Save all:ehp2.
:dd.This will save the data in the :link refid=taginfo reftype=hd."tag
information" entry fields:elink. as the tag for all files in the :link
refid=filelist reftype=hd.selected files list:elink..
:p.If you leave one or more of the entry fields empty (and that means
:hp1.empty:ehp1., no spaces, nothing!) the value of this field will not be
changed if a file already has a tag with information for this entry.
Selecting "(none)" for the genre gets you the same effect for that field.

:dt.:hp2.Remove (current):ehp2.
:dd.Using this will remove the tag from the current file - if it has
one (otherwise this will be unselectable). Not very useful for reducing
your allocated diskspace as it will only shorten the file for 128 bytes.

:dt.:hp2.Remove all:ehp2.
:dd.Using this will remove the tags from all files in :link refid=filelist
reftype=hd.selected files list:elink.. Handle with care!

:dt.:hp2.Play file:ehp2. (menu only)
:dd.Using this will launch an MP3 player of your choice using the current file.
See :link refid=playercmdfiles reftype=hd.The player CMD-files:elink. for more
info about this.

:dt.:hp2.Show buttons:ehp2. (menu only)
:dd.Using this will show (if hidden) or hide (if shown) the buttons on the
right side of the window.

:dt.:hp2.Show fileinfo:ehp2. (menu only)
:dd.Using this will show (if hidden) or hide (if shown) the :link
refid=fileinfo reftype=hd.fileinfo group:elink..

:dt.:hp2.Help contents:ehp2. (menu only)
:dd.This will show the contents of this online help.

:dt.:hp2.(General) Help:ehp2.
:dd.This will bring up this help. But I guess you found that out by yourself
already ;-)

:dt.:hp2.About / Product information:ehp2.
:dd.This will display a message box with information about the version
of &progname. you are using as well as how to reach the author and such things.

:edl.


.*-------------------------------------------------------------------------
.*fold00.*The settings window

:h2 id=settingswindow res=2200.The settings window
:p.The settings window allows you to modify and adjust various things like
if you want &progname. to notify you of certain events (e.g. when files have
been added to the :link refid=filelist reftype=hd.selected files list:elink.)
or what language you want to use.

:p.Selecting the "Ok" pushbutton at the bottom of the window will close the
settings and activate them. Selecting "Undo" will revert all your changes for
the currently selected page of the notebook. "Help" will display the help
screen for the current page.

:p.The settings notebook has the following pages&colon.
:ul compact.
:li.:link refid=notification reftype=hd.Notification:elink.
:li.:link refid=keepinfo reftype=hd.Keep info:elink.
:li.:link refid=misc reftype=hd.Misc:elink.
:li.:link refid=language reftype=hd.Language:elink.
:eul.


.*-------------------------------------------------------------------------
.*fold00.*Notification

:h3 id=notification res=2210.The Notification page
:p.On this page you can select, of what events &progname. shall notify you and how
to do it.

:dl break=all tsize=5.

:dt.:hp2.Notify me when ...:ehp2.
:dd.Here you can select of what events you want to be notified. This
section is pretty self-explaining I guess.

:dt.:hp2.Notification style:ehp2.

:dd.Here can you select how you want to be notified.
:ul.
:li."Click-away message box" will display a message window with an "Ok"
pushbutton, that you have to select to dismiss the window.
:li."Timer controlled auto notifier" will display a message window that will
automatically disappear after several seconds (you may also click it with the
mouse to dismiss it).
:li."Audio-acustic beeping device" will just output three beeps using the
speaker.
:eul.

:edl.


.*-------------------------------------------------------------------------
.*fold00.*Keep info

:h3 id=keepinfo res=2220.The Keep info page
:p.On this page you can select, if (some of) the tag information should be
kept in the fields for the new file when switching files with ALT+'n'
or ALT+'p' and what should be kept then.

:dl break=all tsize=5.

:dt.:hp2.Keep (some) tag info when switching files:ehp2.
:dd.Check this button, if you want to use the "Keep info"-feature. If you do
not check this button, when switching files the new file will only get the
information that is saved in its own tag.

:dt.:hp2.Keep ...:ehp2.
:dd.Here you can select what parts of the tag information should be kept.
Pretty self explaining, I guess.

:dt.:hp2.Options:ehp2.
:dd.Some options for the "Keep info" function.
:ul.
:li."Increase/decrease track number" - If you activate this, the track number
will be automatically increased when switching to the next or decreased
when switching to the previous file.
:li."Only keep if info not already present" - If you activate this,
information that you selected to be kept will only be kept, if the new file
not already has that info (i.e. entry field is empty, track is 0, genre is
"(none)"). If the new file has the info, this info will not be changed.
:eul.
:edl.
:p.:hp1.Example&colon.:ehp1. You selected "Title" and "Artist" in the
"Keep ..." group and "Only keep if info not already present" (and "Keep (some)
tag info when switching files" of course too) is activated. The current file's
Title is "I wish you were a beer" and the Artist "Cycle Sluts from Hell". You
press ALT+'n' (or select "Save &amp. Next" from the "Tag" menu). The new file
already has a Title (let's say "Dark Ships") but no Artist. The info in the
entry fields for the new file will now read&colon. "Dark Ships" in the Title
field and "Cycle Sluts from Hell" in the Artist field.
:p.If you had not selected "Only keep if ..." in the above example, the Title
field for the new file would read "I wish you were a beer".
:p.Hmm, I hope understanding it is far less complicated than programming it
was ;-)

:p.:hp1.Note&colon.:ehp1. When using "Keep info" and reaching a file that is
read-only or has info for a field and "Only keep if not already present" is
enabled, &progname. will not keep the info of the "original" file but use the
info of this file from now on. This will hopefully be fixed in a future
release.


.*-------------------------------------------------------------------------
.*fold00.*Misc

:h3 id=misc res=2230.The Misc page
:p.On this page you can adjust various miscellanious settings.

:dl break=all tsize=5.

:dt.:hp2.Read genres from file ...:ehp2.
:dd.Here you can enter the name of the (text-)file where &progname. shall read
the names for the genres from. For more information see :link
refid=genresfile reftype=hd."The genres file":elink..

:dt.:hp2.Player command:ehp2.
:dd.Here you can enter the command that shall be used to start an MP3 player
when you select "Play current" from the "Extras" :link refid=buttons
reftype=hd.menu:elink. of the :link refid=mainwindow reftype=hd.main window
:elink.. Enter $f on the place where the filename should be provided on the
command line.

:p.:hp1.Note&colon.:ehp1. For some technical reasons you must use a CMD-file
to start the player, directly calling the EXE-file may not work. I have
included :link refid=playercmdfiles reftype=hd.command files for most
of the wellknown MP3-players:elink. for OS/2 in the &progname. distribution,
please modify the one you want to use to reflect your configuration (can be
done with any texteditor).

:p.:hp1.Example&colon.:ehp1. Enter "goPM123 $f" here if you want to use PM123
to play your files.

:dt.:hp2.Other options:ehp2.
:dd.Here you may adjust various other settings&colon.
:ul.

:li."Use filename as Title when file has none" - If you enable this,
&progname. will automatically insert the file's filename in the Title field
in the :link refid=taginfo reftype=hd.tag info group:elink. when the file has
not got a Title by now.

:li."Use custom file dialog" - If you enable this, &progname. will use its own
custom file dialog (which looks IMHO a bit better than the default system
dialog).

:li."No warning about invalid files" - &progname. sometimes cannot decode the
header of an MP3 file (some files do have :hp1.really:ehp1. strange headers)
and will assume that the file is no valid MP3 file (this will happen too of
course if the file is :hp1.indeed:ehp1. no MP3 file!). If you have got many
such files you can disable the warning message that &progname. will show in
such a case here.

:li."Read-only&colon. entryfields only read-only" - Normally if the current
file is read-only, &progname. will disable all the fields in the :link
refid=taginfo reftype=hd.tag info group:elink.. As this makes them hard to
read sometimes, you may enable this option and &progname. will just make the
entryfields read-only, so you cannot modify them.

:eul.
:edl.


.*-------------------------------------------------------------------------
.*fold00.*Language

:h3 id=language res=2240.The Language page
:p.On this page you can select, what language &progname. shall use. You may
select any of the languages that are shown in the list.

:p.:hp1.Note&colon.:ehp1. If you select another language here, it will not
change until you restart the program.

:p.:hp1.Note&colon.:ehp1. If you want to translate &progname. to another
language, you are very welcome to do so! Please see :link refid=helpwanted
reftype=hd."Help wanted!":elink. for more info.


.*-------------------------------------------------------------------------
.*fold00.*The list window
:h2 id=listwindow res=2300.The list window
:p.This window allows you to output a list of all the selected files to disk.
The list will contain one line for each file.

:dl break=all tsize=5.

:dt.:hp2.Output file &amp. "Find..." button:ehp2.
:dd.Here you can enter the name of the file, where the list should be saved
to. Clicking the "Find..." button will open a file dialog, that allows you to
specify the file more easily.

:dt.:hp2.Information to include:ehp2.
:dd.Here you can select, what information from the tag should be included in
the list for every file. Please select at least one item. The order of the
fields can not be changed by now (maybe in a future version).

:dt.:hp2.Output list header:ehp2.
:dd.If you check this button, the list will contain a headline for the
information columns.

:dt.:hp2.Output total time:ehp2.
:dd.If you check this button, the playing time for all the files in the list
will be summed up and included at the end of the list.

:dt.:hp2.Autosize columns:ehp2.
:dd.If you check this button, the information columns in the list will be
sized using the longest occuring entry. If this button is not checked, the
maximum possible length of the columns info field will be used.
:p.:hp1.Note&colon.:ehp1. If you included File &amp. Path, this column will
always be autosized; I do not think it looks good to make the column's width
256 characters (the maximum size of a HPFS path) all the time. Please also
note, that using this feature will approximatly double the time for creating
the list, as &progname. first will have to check all files for the maximum lengths
of the fields (except for the filename/path field, where the maximum length
is calculated when adding the files to the :link refid=filelist
reftype=hd.selected files list:elink.).

:dt.:hp2.Only files with tag:ehp2.
:dd.If you check this button, only files that have an ID3 tag will be written
to the list, files without tag will be ignored.

:dt.:hp2.Ok:ehp2.
:dd.This pushbutton will save the list to the selected output file.

:dt.:hp2.Cancel:ehp2.
:dd.This pushbutton will close the window without taking any action.

:dt.:hp2.Help:ehp2.
:dd.This pushbutton shows this helpscreen.

:edl.

.*-------------------------------------------------------------------------
.*fold00.*The renaming window
:h2 id=renamewindow res=2500.The renaming window
:p.This window allows you to have all files in the list renamed using a
configurable template string.

:dl break=all tsize=5.

:dt.:hp2.Renaming template:ehp2.
:dd.This field holds the renaming template string. You may enter any
combination of text and macros. All files will be renamed using this template.
If a name already does exist, the file will be given the same name, but with
a unique number appended.
:p.The following macros are available and will automatically be replaced by
the appropriate values&colon.
:ul compact.
:li.$T - Title
:li.$A - Artist
:li.$a - Album
:li.$Y - Year
:li.$G - Genre
:li.$C - Comment
:li.$v - MPEG version number
:li.$l - Layer of the file
:li.$t - Estimated playing time
:li.$m - Mode
:li.$f - Frequency
:li.$b - Bitrate
:li.$r - Track (use $r2 or $r3 to get tracknumbers with fixed length of two or three, padded with '0')
:eul.
:p.:hp1.Example&colon.:ehp1. If you entered "($A)-$T" here and the Title of
the first file would be "Eat the Rich" by "Mot&oe.rhead" the new filename
would be "(Mot&oe.rhead)-Eat the Rich.mp3".
:p.:hp1.Note&colon.:ehp1. All characters, that are not allowed in (HPFS-)
filenames ("*", "?", etc.) will be converted to '_' before renaming.

:dt.:hp2.Limit length of names to not more than ...:ehp2.
:dd.Especially when making CDs where the filesystem may e.g. allow no names to
be longer than 31 characters, this feature comes in handy. The names will be
automatically limited to the given number of characters (this includes the
extension of the file!).

:dt.:hp2.Replace spaces with underscores:ehp2.
:dd.If you do not like spaces in the names of your files, check this button
and they will be replaced by '_'.

:dt.:hp2.Rename:ehp2.
:dd.Brings you wealth, fame and eternal youth.
Well no, of course not (If so &progname. surely wouldn't be free ;-). This
button starts the renaming process.

:dt.:hp2.Cancel:ehp2.
:dd.Will remove the curse from all items in your pack if you zap yourself
with it.
:p.No wait, wrong documentation! This button will close the window and do
nothing further.

:dt.:hp2.Help:ehp2.
:dd.This pushbutton will cause a choir of "Help! Help!" screams being
performed through any available audio device. Or something ...

:edl.
:p.:hp1.Note&colon.:ehp1. This function will horribly fail (i.e. show an
error message) if a file's name would be too long for the file system (e.g.
on a FAT drive where you can only have filenames up to 8 characters long).

.*-------------------------------------------------------------------------
.*fold00.*The autoopen window
:h2 id=autoopenwindow res=2400.The auto-open window
:p.This window allows you to select the directory that shall be searched for
MP3 files.

.*-------------------------------------------------------------------------
.*fold00.*Commandline arguments
:h1 id=cmdlineargs res=3000.Commandline arguments
:p.The first command line argument that &progname. accepts is a file- or
directory-name. This allows you to specify the file to be loaded or the
directory to be searched for files on the command line as well as associating
MP3 files with &progname. on the WPS.

:p.:hp1.Example:ehp1. If you type "minta c&colon.\mp3s" on the command line,
&progname. will search the directory "c&colon.\mp3s" (only if it is a
directory of course ;-) for MP3-files and the main window will pop up with
all the files found already being added to the :link refid=filelist
reftype=hd.selected files list:elink..

:p.The second argument you can use is "-f"&colon. For some reason WarpAMP
has problems displaying the information when the tag fields are padded with
zeros like normal and wants spaces instead, so if you give this argument,
&progname. will use spaces too.

:p.Another argument is "-t"&colon. which tells &progname. to output the
tracknumber with two digits (i.e. with leading zero if required) while
renaming files.

:p.Another argument is "-i<path>" which tells &progname. to look for the
INI file not in the starting directory but in the directory "path".

.*-------------------------------------------------------------------------
.*fold00.*Tips + tricks
:h1 id=tipstricks res=4000.Tips &amp. tricks
:p.Here you find some tips &amp. tricks that will save you work or make
things easier when using &progname..

:dl break=all tsize=5.

:dt.:hp2.Tagging whole albums - The "Save all" approach:ehp2.
:dd.One way to easily tag whole albums, without having to enter the same info
over and over again is by using the "Save all" function&colon.
:ol compact.
:li.Load all the MP3 files belonging to the album into the :link
refid=filelist reftype=hd.selected files list:elink.. If you keep them
together in one directory, you can use the :link refid=buttons
reftype=hd.auto-open function:elink.. (Make sure that these are the only
files in the list, if necessary by using "Release all" before!)
:li.Enter the Artist, Album, Year (and possibly Genre) info in the
appropriate fields of the :link refid=taginfo reftype=hd.tag info
display:elink.. Make sure, the other fields are empty (or 0, or "(none)").
:li.If you want stuff like playtime, etc. in the comment for each song, use
the appropriate :link refid=taginfo reftype=hd.macros in the comment
field:elink..
:li.Select the "Save all" button or "Save all" from the "Tag" menu. Click
"Ok" in the message box that appears. The info you entered will now be saved
for all the files.
:li.Select the first file from the :link refid=filelist reftype=hd.selected
files list:elink. and fill out the missing info (Title, Track #, etc.).
:li.When you're done, use ALT+'n' to proceed through the files and fill out
the missing stuff for all of them.
:eol.

:dt.:hp2.Tagging whole albums - The "Keep info" approach:ehp2.
:dd.The other way to easily tag whole albums is by using the "Keep info"
function&colon.
:ol compact.
:li.Open the :link refid=settingswindow reftype=hd.settings window:elink. (by
selecting "Settings..." from the "Files" menu) and turn to the "Keep info"
page.
:li.Activate (if not already activated) "Keep (some) tag info when switching
files". In the "Keep ..." group activate "Artist", "Album", "Year" and possibly
"Genre" and "Comment" too. If you want to save the Track # for each file,
activate "Increase/decrease track number".
Deactivate all other buttons on the page (if some of them are activated).
:li.Close the settings by using the "Ok" button.
:li.Load all the MP3 files belonging to the album into the :link
refid=filelist reftype=hd.selected files list:elink.. If you keep them
together in one directory, you can use the :link refid=buttons
reftype=hd.auto-open function:elink.. (Make sure that these are the only
files in the list, if necessary by using "Release all" before!)
:li.Enter the Title, Artist, Album, Year (and possibly Genre) info for the
first file in the appropriate fields of the :link refid=taginfo reftype=hd.tag
info display:elink..
:li.If you want stuff like playtime, etc. in the comment for each song, use
the appropriate :link refid=taginfo reftype=hd.macros in the comment
field:elink..
:li.If you want to save the Track # for each file, set Track # to 1.
:li.Use ALT+'n' (or "Save &amp. next" from the "Tag" menu) to switch to the
next file in the list. Fill out the missing
fields. Use ALT+'n' to proceed through all the files and fill out the
missing stuff for all of them.
:eol.
:edl.
:p.A useful feature, that can be used in the second approach, is to activate
"Use filename as Title if file has none" on the :link refid=misc
reftype=hd."Misc" page:elink. of the :link refid=settingswindow
reftype=hd.settings window:elink.. If your files already have filenames, that
resembles the Title of the song very much (e.g. like
"I_WISH_YOU_WERE_A_BEER.MP3"), all you have to do then is modifying the Title
for each file.


.*-------------------------------------------------------------------------
.*fold00.*Past, present + future
:h1 id=pastpresentfuture res=5000.Past, present &amp. future
:p.This section provides info about the history of &progname., some info
about (bugs in) the current release and things that may be added or changed
in the future.


.*-------------------------------------------------------------------------
.*fold00.*Version history
:h2 id=history.Version history :p.Here you can see what was added or changed
in the different versions of the program.

:dl break=all tsize=5.

:dt.:hp2.Version 2.52:ehp2.
:dd.A mini update because of a user's request for a small feature.
:ul compact.
:li.Tracknumber may now be given with a fixed length of two or three for renaming.
:li.Added a note about tracknumbers having to be <= 255 in the Bugs section.
:li.&progname. is now released under the GPL.
:eul.

:dt.:hp2.Version 2.50:ehp2.
:dd.No, that's still not the next big release &colon.-)
:ul compact.
:li.Italian translation of program and online help - many thanks
to Alberto Gabrielli!!
:li.Various small bugfixes and improvements - special thanks to 
Alberto Gabrielli again!
:eul.

:dt.:hp2.Version 2.45:ehp2.
:dd.As due to my limited time the next "big" release may still take a while,
I decided to do a small one that fixes some bugs and adds some tiny features.
:ul compact.
:li.Added :link refid=cmdlineargs reftype=hd.commandline argument:elink. to
tell &progname. to output the tracknumber with leading zero when renaming.
:li.Added :link refid=cmdlineargs reftype=hd.commandline argument:elink. to
tell &progname. where she shall look for the INI-file.
:li.Added :link refid=cmdlineargs reftype=hd.commandline argument:elink. to
tell &progname. to stop complaining if changing the LONGNAME extended attribute
failes while renaming (on some configurations, while renaming worked, this
function still reported an error).
:li.Renamed "Delete" to the less dangerous sounding "Release" in the 
menu &colon.-)
:li.Bugfix&colon. While renaming, if the new name is equal the old one
&progname. will not try to rename the file any more (resulted in the filename
having added an unnecessary number).
:li.Bugfix&colon. Associating MP3 files with &progname. on the WPS works again
(I had changed the commandline parsing and that caused the problem)
:li.If &progname. is started from an foreign directory, she will now try to load 
all files (*.dll, *.hlp, *.ini, genres, ...) from the dir where her
exe resides.
:eul.

:dt.:hp2.Version 2.41:ehp2.
:dd.More translations and other small stuff ...
:ul compact.
:li.French language support
:li.Norwegian language support (not totally complete yet)
:li.Russian language support (program only)
:li.When renaming files, now also the ".LONGNAME" extended attribute will
be adjusted.
:li.When renaming you now also can use the tracknumber.
:eul.

:dt.:hp2.Version 2.27:ehp2.
:dd.Two bugfixes - one for &progname. and one ... ;-)
:ul compact.
:li.MP3 technical informations are now displayed correct again.
:li.&progname. now can use spaces instead of zeros to padd the tag fields
which fixes a problem of WarpAMP (see :link refid=cmdlineargs
reftype=hd.commandline argument:elink.)
:eul.

:dt.:hp2.Version 2.25:ehp2.
:dd."It's about time the played something cool!" - Yes, and therefore here
is v2.25! New features include&colon.
:ul compact.
:li.Dutch language support.
:li.Advanced auto-rename feature (rename files using a template, macros,
limit length of generated names, select if spaces shall be replaced by
underscores).
:li.ID3v2.x tags are now detected and skipped properly (sorry,
viewing/editing them is still to come ...)
:li.Better looking file dialog with file type support.
:li.Some internal code changes.
:li.Some buglets (bugs that were so small nobody noticed or merely asthetic
stuff ;-) fixed.
:eul.

:dt.:hp2.Version 2.00:ehp2.
:dd.Due to the infinite creativity of the beta testers, suggestions from users
and wishes of my own, &progname. now includes the following new features&colon.
:ul compact.
:li.As I already promised for the previous version, &progname. now loads the
genres from a user-selectable and -editable file. &progname. accepts its own
format for the file or can load WarpAMP's "genres.txt". See :link
refid=genresfile reftype=hd."The genres file":elink. for more information
about this.
:li.If a file has no entry for the "Title" field, &progname. now can
automatically use the filename as the Title.
:li.&progname. can now take a filename (or directory) as a :link
refid=cmdlineargs reftype=hd.commandline argument:elink.,
allowing you to specify the file to be loaded or the directory to be searched
for files on the command line as well as associating MP3 files with &progname. on
the WPS.
:li.&progname. now supports other languages (well, english and german by now).
:li.You may now drag'n'drop files or directories on the &progname. window and
&progname. will add the files to the :link refid=filelist reftype=hd.selected
files list:elink./search the directories for MP3 files and add them to the
list.
:li.You can now easily launch an MP3 player of your choice with the currently
selected file from &progname..
:li.When switching files, you can now specify that certain information from
the file's tag will be kept for the file being switched to (handy e.g. for
tagging whole albums).
:li.When a file is read-only, &progname. now can make the :link refid=taginfo
reftype=hd.tag info fields:elink. just read-only instead of disabled ("greyed
out"), sometimes they were a little bit hard to read then.
:li.You can now choose between three different "styles" for the notification
windows.
:li.You can now disable the "Invalid MP3 file" warning.
:li.Auto-renaming now may limit the names to 31 characters max. (useful when
creating CDROMs that only support 31 characters in filenames).
:li.Improved and extended online help/documentation.
:li.Fixed some bugs (current file not being closed when "Delete all" used,
small bug in the "Select directory ..." dialog, &progname. crashing when
listing files with invalid genres, ...)
:eul.

:dt.:hp2.Version 1.67:ehp2.
:dd.The following things were changed/added&colon.
:ul compact.
:li.&progname. now supports ID3 v1.1 tags too.
:li.You can now output Version, Layer, Frequency, Bitrate and Mode too, when
listing files.
:li.Added the autorenaming function (allows to rename all files after their
Title).
:li.You can now use macros in the comment field to automatically insert
playing time etc. there.
:li.You may now hide (and re-show) the buttons and/or the fileinfo group as
you like.
:li.Settings window, where you can enable/disable the various notification
messages.
:li.Color and font of the main window may now be easily changed using
drag'n'drop from the appropriate palettes. This values will be saved to
&inifile. too.
:li.Modified &progname.'s icon to meet the standard MP3 file icon.
:li.Fixed a few small bugs.
:eul.

:dt.:hp2.Version 1.45:ehp2.
:dd.I can't believe it! Live at last! Finally it is done ...
First release to the public.

:dt.:hp2.Version 1.44:ehp2.
:dd.I just say "v2.0" ...
:ul compact.
:li.Window title now shows currently processed file/directory while
performing global operations (Save all, etc.).
:li.Added option for outputting only tagged files to list.
:li.Replaced my own (weird, incomplete, perhaps buggy) MP3 header
decoding routine with the one from the
:link refid=credits reftype=hd.mpg123/2:elink. sources (a little bit modified).
:li.Internal restructuring of some parts of the code.
:li.Fixed some bugs, added new ones, fixed those ...
:eul.

:dt.:hp2.Version 1.41:ehp2.
:dd.No comment. But they're gonna pay for this ... (Oh no! It's freeware! ;-)
:ul compact.
:li.Added possibility for automatic selection of files in (sub)directories.
:li.Added detection and handling of read only files.
:li.Added autosize option for the columns in the MP3 file lists.
:eul.

:dt.:hp2.Version 1.34:ehp2.
:dd.I think I've got to find myself some less demanding beta testers ...
:ul compact.
:li.Added selection for files in multiple directories.
:li.Added possibility of output of filenames to the list.
:li.Added menu bar (by now, there are enough user actions to justify one ...)
:li.Fixed a number of small bugs.
:li.Added an internal version number to &inifile. to prevent possible errors
when using an old file with new versions of &progname..
:eul.

:dt.:hp2.Version 1.29:ehp2.
:dd.Again the testers requested another function to be added, and so I did.
If this continues, perhaps &progname. will become the first program with its first
release being v2.0! ;-)
:ul compact.
:li.Added function for outputting the selected files to a list.
:li.The options for the list will be saved to &inifile. too.
:li.Removed a small bug concerning the main windows' push buttons
:eul.

:dt.:hp2.Version 1.16:ehp2.
:dd.Due to the wish for additional features from the testers and ideas of my
own, the following things were added&colon.
:ul compact.
:li.Selection of multiple files
:li.Removing of tags for multiple files at once
:li.Global adding of tags for multiple files at once
:li.Easy editing of multiple files one by one
:li.Last working directory (where you selected files from) and position of the
main window will be saved to &inifile. and restored the next time you start
the program
:li.Included an install script for creating a &progname. WPS object.
:eul.

:dt.:hp2.Version 1.00:ehp2.
:dd.This version was only a beta testers' release and never made it into the
public.

.*Added ... something (yes, it's a secret)
.*:li.When doing lengthly jobs (Save all, Rename all, etc.) &progname. now displays
.*a progress status window and those jobs now have their own thread.

:edl.


.*-------------------------------------------------------------------------
.*fold00.*Bugs

:h2 id=bugs.Known bugs
:p.No "real" bugs are known at the moment, the following are more or less only
inconveniences&colon.

:ul compact.
:li.When removing all files from the selected files list, the name of the
file, which was selected last will remain in the display. For some strange
reason clearing this field does not work (But it works somewhere else! Strange
as I said).
:li.I must admit, that like most of my programs, &progname. too will not work right
when very long pathnames (> 255 chars) would have to be used (while
autorenaming e.g.). But I never have seen such a "monster" appear by now ...
:li.When changing the Title for a file, autorenaming will not rename this
file, when the tag has not been saved before. But I don't know if we really
should call this a bug.
:li.When using "Keep info" and reaching a file that is read-only or has info
for a field and "Only keep if not already present" is enabled, &progname. will
not keep the info of the "original" file but use the info of this file from
now on.
:li.Notification windows sometimes do not "inherit" the color and font from
the main window.
:li.Drag'n'drop does only work if you move the object(s) to a space on the
main window, that is not occupied by a child window (button, entry field,
etc.).
:li."Play file" requires a CMD file to start the MP3 player.
:li.I was told that the following has been fixed in WarpAMP (it happened
because there were two slightly different ID3v1.1 specifications)&colon.
The playlist of WarpAMP sometimes does not show various taginfo fields.
But as other programs (PM123 to mention one) do show everything right and
I really have no idea what eventually could be wrong with the tags, I'll just
blame it on WarpAMP ;-)
:eul.

:p.The following is *not* a bug&colon. The tracknumber in the tag may only 
go from 0 up to 255; the reason for this is that, according to ID3 v1.1, the
tracknumber is saved in the last byte of the comment field (seperated from
the text of this field by a null byte) and one byte can only hold 256 
distinct values so values > 255 are not possible there.

.*-------------------------------------------------------------------------
.*fold00.*Future enhancements

:h2 id=future.Future enhancements
:p.This features will (hopefully) be included in &progname. someday&colon.
:p.:hp2."Small" stuff:ehp2.
:ul compact.
:li.Add buttons/keys for switching to the next/previous file in the list.
:li.Allow cut/copy/paste tags to/from clipboard.
:eul.
:p.:hp2."Medium" stuff:ehp2.
:ul compact.
:li.Allow different sorting of the files in the selected files list.
:li.Allow different order for the info fields when outputting lists.
:li."History" function for the tag entry fields (i.e. you'll get a drop-down
list for each field where you can choose from the last n entries).
:li.Add a (someday user configurable) toolbar to the main window.
:li.Add a statusbar to the main window (replacing the notification windows?)
:li.Lyrics3/Lyrics3 v2.00 support.
:li.Allow to read tags from a file and automatically attach them to the
files in the list.
:li.Auto-tagging function that tries to retrieve as much info as possible
from filenames, etc. and create a tag for the file out of this.
:eul.
:p.:hp2."Big" stuff:ehp2.
:ul compact.
:li.Add an MP3 database to &progname., that will allow you to to easily keep
trace of all your MP3 files, together with their info, search for files,
print lists of selected groups, export lists to other formats, and more.
:li.Allow viewing of ID3 v2.x tags.
:li.Allow editing of ID3 v2.x tags.
:li.Add feature to access (one or more of the) Internet CD database(s) through
&progname..
:eul.
:p.Tell me what feature(s) you think should have highest priority and what
feature(s) you can easily live without ...

.*:li.Add function for auto-renaming files (i.e. all files will get their
.*filename from the "Title" field for example).
.*:li.Possibility to keep (some of the) tag information when switching files
.*with ALT+N/ALT+P (may be useful for songs from one album, so you don't have to
.*enter Artist, Album, etc. everytime). Using the "Save all" function will allow
.*something like that already (i.e. insert album, artist and everything that
.*should stay the same, "Save all", then use ALT+N/ALT+P to insert the missing
.*fields).
.*:li.Allow macros in the "Comment" field, so things like playtime may be
.*inserted there automatically.
.*:li.Rename all, Save all, Remove all, Scanning/Writing the list and searching
.*for files would perhaps better have their own thread and I would like to have
.*a status window instead of displaying the stuff in the titlebar.
.*:li.Drag &amp. Drop support (add files to the selected files list by dropping
.*them on the window, adding a tag by dropping from window on the file icon,
.*etc.).
.*:li.Function for launching an MP3 player with the currently selected song.
.*:li.Settings dialog, where you can set various stuff (enable/disable the
.*various notification windows for example).
.*:li.Support other languages.
.*:li.Read genres from a user editable file (yes, yes, I promised it for this
.*release ...)
.*:li.Auto-tagging function.
.*:li.Remove the before mentioned "bugs".



.*-------------------------------------------------------------------------
.*fold00.*Files

:h1 id=files.Files
:p.This section informs you about some of the files that are supplied with
&progname.

.*-------------------------------------------------------------------------
.*fold00.*The genres file

:h2 id=genresfile.The genres file
:p.In this file, the names for the various genres are stored.
:p.Normally this file is called "genres.txt" but you can give any file you
like using the entryfield on the :link refid=misc reftype=hd.Misc page:elink.
in the :link refid=settingswindow reftype=hd.settings window:elink..
:p.You may edit this file with any common texteditor, but before you do this,
please think about the following&colon.
:ul.
:li.If you change the name of an "old" genre, all files with this genre will
now have the new name too.
:li.A second drawback of this is, that probably you are the only one who uses
this new genre definition. If anyone else gets an MP3 file set to this
genre, he/she will see the "old" genre name. Which may not be what you wanted.
:li.If you invent new genres (i.e. add some to the list) as well nobody else
will know about them. If anyone else gets an MP3 file set to one of this
genres this may result in an error or at least some confusion.
:eul.
:p.The default format for the genres file is &progname.'s own format&colon.
:xmp.
# &progname. genres file
# This and the line above are comments

Blues
Classic Rock
Country
Dance
 ...
:exmp.
:p.The file is interpreted line by line. Comments (lines starting with '#')
and empty lines are ignored. Other lines are taken to be the name for a genre.
The genres are numbered in the order they are found (i.e. in the above example
Blues would be 1, Classic Rock 2 and so on). Lines (and genre names) may be
up to 255 characters long.

:p.&progname. does also understand the format of WarpAMP's "genres.txt"
(where every line consists of "nn name" with "nn" being the number and "name"
the name for that genre). Actually you can even mix the two formats and
&progname. will still try to get the right things out of it, but this is
:hp1.not recommended:ehp1.!


.*-------------------------------------------------------------------------
.*fold00.*The player CMD-files

:h2 id=playercmdfiles.The player CMD-files
:p.This files are used to start an MP3 player of your choice directly out
of &progname. using the current MP3 file.
:p.For some technical reason, &progname. has to start the player by using a
CMD file, directly starting the EXE file may not work. I hope this will change
in some future release. You can give the name of the CMD file to use on the
:link refid=misc reftype=hd.Misc page:elink. of the :link refid=settingswindow
reftype=hd.settings window:elink..
:p.Please modify the file for the player of your choice to suit your needs
(basically this just means adjust installation drive and path).
:p.The following files are included&colon.
:ul.
:li.gowamp.cmd - for WarpAMP
:li.gopm123.cmd - for PM123
:li.gompg123.cmd - for mpg123
:eul.
:p.If you use some other player you should be able to easily modify one of the
files (actually they are all pretty much the same ;-) to use it with your
player.


.*-------------------------------------------------------------------------
.*fold00.*Disclaimer & legal stuff

:h1 id=disclaimer.Disclaimer &amp. legal stuff
:p.Following are the usual disclaimers. For those of you, who have read them
far too many times, here is just the short version&colon.

:p."I didn't do it! I didn't do it! Butthead did it!" ;-)

:p.Everyone else, please read this and keep in mind&colon.

:p.Though this program has been tested quite a lot, there may still be lots
of bugs in it (even serious ones - though I do not think so). Do not blame
me, if this program screws up your files or whatever.

:p.:hp2.YOU ARE USING THIS PROGRAM AT YOUR OWN RISK!:ehp2. I don't take any
responsibility for damages, problems, custodies, marital disputes,
etc. resulting from use, inability to use, misuse, possession or
non-possession of this program directly or indirectly.
I also don't give any warranty for bug-free operation, fitness
for
a particular purpose or the appropriate behaviour of the program
concerning animals, programers and little children.

:p.THE SOFTWARE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR
IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
PURPOSE. THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE
PROGRAM IS WITH YOU.  SHOULD THE PROGRAM PROVE DEFECTIVE, YOU
ASSUME THE COST OF ALL NECESSARY SERVICING, REPAIR OR CORRECTION.

:p.Or, in a few words&colon.
If its good, I am responsible.
If its bad, its all your fault. ;-)

:p.Permission is granted to redistribute this program free of charge,
provided it is distributed in the full archive with unmodified
contents and no profit beyond the price of the media on which it
is distributed is made. Exception to the last rule&colon. It may be
included on freeware/shareware collections on CD-ROM, as well as
on magazine cover CD-ROMs.

:p.All trademarks mentioned anywhere around here are property of their
owners and the like ...

:p.(Strange, this section is getting longer and longer with every
program ... &colon.-)

.*-------------------------------------------------------------------------
.*fold00.*GNU Public License

:h1 id=gpl.GNU GENERAL PUBLIC LICENSE

:lines.
                    GNU GENERAL PUBLIC LICENSE
                       Version 2, June 1991

 Copyright (C) 1989, 1991 Free Software Foundation, Inc.
     59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 Everyone is permitted to copy and distribute verbatim copies
 of this license document, but changing it is not allowed.

                            Preamble

  The licenses for most software are designed to take away your
freedom to share and change it.  By contrast, the GNU General Public
License is intended to guarantee your freedom to share and change free
software--to make sure the software is free for all its users.  This
General Public License applies to most of the Free Software
Foundation's software and to any other program whose authors commit to
using it.  (Some other Free Software Foundation software is covered by
the GNU Library General Public License instead.)  You can apply it to
your programs, too.

  When we speak of free software, we are referring to freedom, not
price.  Our General Public Licenses are designed to make sure that you
have the freedom to distribute copies of free software (and charge for
this service if you wish), that you receive source code or can get it
if you want it, that you can change the software or use pieces of it
in new free programs; and that you know you can do these things.

  To protect your rights, we need to make restrictions that forbid
anyone to deny you these rights or to ask you to surrender the rights.
These restrictions translate to certain responsibilities for you if you
distribute copies of the software, or if you modify it.

  For example, if you distribute copies of such a program, whether
gratis or for a fee, you must give the recipients all the rights that
you have.  You must make sure that they, too, receive or can get the
source code.  And you must show them these terms so they know their
rights.

  We protect your rights with two steps&colon. (1) copyright the software, and
(2) offer you this license which gives you legal permission to copy,
distribute and/or modify the software.

  Also, for each author's protection and ours, we want to make certain
that everyone understands that there is no warranty for this free
software.  If the software is modified by someone else and passed on, we
want its recipients to know that what they have is not the original, so
that any problems introduced by others will not reflect on the original
authors' reputations.

  Finally, any free program is threatened constantly by software
patents.  We wish to avoid the danger that redistributors of a free
program will individually obtain patent licenses, in effect making the
program proprietary.  To prevent this, we have made it clear that any
patent must be licensed for everyone's free use or not licensed at all.

  The precise terms and conditions for copying, distribution and
modification follow.
 
                    GNU GENERAL PUBLIC LICENSE
   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

  0. This License applies to any program or other work which contains
a notice placed by the copyright holder saying it may be distributed
under the terms of this General Public License.  The "Program", below,
refers to any such program or work, and a "work based on the Program"
means either the Program or any derivative work under copyright law&colon.
that is to say, a work containing the Program or a portion of it,
either verbatim or with modifications and/or translated into another
language.  (Hereinafter, translation is included without limitation in
the term "modification".)  Each licensee is addressed as "you".

Activities other than copying, distribution and modification are not
covered by this License; they are outside its scope.  The act of
running the Program is not restricted, and the output from the Program
is covered only if its contents constitute a work based on the
Program (independent of having been made by running the Program).
Whether that is true depends on what the Program does.

  1. You may copy and distribute verbatim copies of the Program's
source code as you receive it, in any medium, provided that you
conspicuously and appropriately publish on each copy an appropriate
copyright notice and disclaimer of warranty; keep intact all the
notices that refer to this License and to the absence of any warranty;
and give any other recipients of the Program a copy of this License
along with the Program.

You may charge a fee for the physical act of transferring a copy, and
you may at your option offer warranty protection in exchange for a fee.

  2. You may modify your copy or copies of the Program or any portion
of it, thus forming a work based on the Program, and copy and
distribute such modifications or work under the terms of Section 1
above, provided that you also meet all of these conditions&colon.

    a) You must cause the modified files to carry prominent notices
    stating that you changed the files and the date of any change.

    b) You must cause any work that you distribute or publish, that in
    whole or in part contains or is derived from the Program or any
    part thereof, to be licensed as a whole at no charge to all third
    parties under the terms of this License.

    c) If the modified program normally reads commands interactively
    when run, you must cause it, when started running for such
    interactive use in the most ordinary way, to print or display an
    announcement including an appropriate copyright notice and a
    notice that there is no warranty (or else, saying that you provide
    a warranty) and that users may redistribute the program under
    these conditions, and telling the user how to view a copy of this
    License.  (Exception&colon. if the Program itself is interactive but
    does not normally print such an announcement, your work based on
    the Program is not required to print an announcement.)
 
These requirements apply to the modified work as a whole.  If
identifiable sections of that work are not derived from the Program,
and can be reasonably considered independent and separate works in
themselves, then this License, and its terms, do not apply to those
sections when you distribute them as separate works.  But when you
distribute the same sections as part of a whole which is a work based
on the Program, the distribution of the whole must be on the terms of
this License, whose permissions for other licensees extend to the
entire whole, and thus to each and every part regardless of who wrote it.

Thus, it is not the intent of this section to claim rights or contest
your rights to work written entirely by you; rather, the intent is to
exercise the right to control the distribution of derivative or
collective works based on the Program.

In addition, mere aggregation of another work not based on the Program
with the Program (or with a work based on the Program) on a volume of
a storage or distribution medium does not bring the other work under
the scope of this License.

  3. You may copy and distribute the Program (or a work based on it,
under Section 2) in object code or executable form under the terms of
Sections 1 and 2 above provided that you also do one of the following&colon.

    a) Accompany it with the complete corresponding machine-readable
    source code, which must be distributed under the terms of Sections
    1 and 2 above on a medium customarily used for software interchange; or,

    b) Accompany it with a written offer, valid for at least three
    years, to give any third party, for a charge no more than your
    cost of physically performing source distribution, a complete
    machine-readable copy of the corresponding source code, to be
    distributed under the terms of Sections 1 and 2 above on a medium
    customarily used for software interchange; or,

    c) Accompany it with the information you received as to the offer
    to distribute corresponding source code.  (This alternative is
    allowed only for noncommercial distribution and only if you
    received the program in object code or executable form with such
    an offer, in accord with Subsection b above.)

The source code for a work means the preferred form of the work for
making modifications to it.  For an executable work, complete source
code means all the source code for all modules it contains, plus any
associated interface definition files, plus the scripts used to
control compilation and installation of the executable.  However, as a
special exception, the source code distributed need not include
anything that is normally distributed (in either source or binary
form) with the major components (compiler, kernel, and so on) of the
operating system on which the executable runs, unless that component
itself accompanies the executable.

If distribution of executable or object code is made by offering
access to copy from a designated place, then offering equivalent
access to copy the source code from the same place counts as
distribution of the source code, even though third parties are not
compelled to copy the source along with the object code.
 
  4. You may not copy, modify, sublicense, or distribute the Program
except as expressly provided under this License.  Any attempt
otherwise to copy, modify, sublicense or distribute the Program is
void, and will automatically terminate your rights under this License.
However, parties who have received copies, or rights, from you under
this License will not have their licenses terminated so long as such
parties remain in full compliance.

  5. You are not required to accept this License, since you have not
signed it.  However, nothing else grants you permission to modify or
distribute the Program or its derivative works.  These actions are
prohibited by law if you do not accept this License.  Therefore, by
modifying or distributing the Program (or any work based on the
Program), you indicate your acceptance of this License to do so, and
all its terms and conditions for copying, distributing or modifying
the Program or works based on it.

  6. Each time you redistribute the Program (or any work based on the
Program), the recipient automatically receives a license from the
original licensor to copy, distribute or modify the Program subject to
these terms and conditions.  You may not impose any further
restrictions on the recipients' exercise of the rights granted herein.
You are not responsible for enforcing compliance by third parties to
this License.

  7. If, as a consequence of a court judgment or allegation of patent
infringement or for any other reason (not limited to patent issues),
conditions are imposed on you (whether by court order, agreement or
otherwise) that contradict the conditions of this License, they do not
excuse you from the conditions of this License.  If you cannot
distribute so as to satisfy simultaneously your obligations under this
License and any other pertinent obligations, then as a consequence you
may not distribute the Program at all.  For example, if a patent
license would not permit royalty-free redistribution of the Program by
all those who receive copies directly or indirectly through you, then
the only way you could satisfy both it and this License would be to
refrain entirely from distribution of the Program.

If any portion of this section is held invalid or unenforceable under
any particular circumstance, the balance of the section is intended to
apply and the section as a whole is intended to apply in other
circumstances.

It is not the purpose of this section to induce you to infringe any
patents or other property right claims or to contest validity of any
such claims; this section has the sole purpose of protecting the
integrity of the free software distribution system, which is
implemented by public license practices.  Many people have made
generous contributions to the wide range of software distributed
through that system in reliance on consistent application of that
system; it is up to the author/donor to decide if he or she is willing
to distribute software through any other system and a licensee cannot
impose that choice.

This section is intended to make thoroughly clear what is believed to
be a consequence of the rest of this License.
 
  8. If the distribution and/or use of the Program is restricted in
certain countries either by patents or by copyrighted interfaces, the
original copyright holder who places the Program under this License
may add an explicit geographical distribution limitation excluding
those countries, so that distribution is permitted only in or among
countries not thus excluded.  In such case, this License incorporates
the limitation as if written in the body of this License.

  9. The Free Software Foundation may publish revised and/or new versions
of the General Public License from time to time.  Such new versions will
be similar in spirit to the present version, but may differ in detail to
address new problems or concerns.

Each version is given a distinguishing version number.  If the Program
specifies a version number of this License which applies to it and "any
later version", you have the option of following the terms and conditions
either of that version or of any later version published by the Free
Software Foundation.  If the Program does not specify a version number of
this License, you may choose any version ever published by the Free Software
Foundation.

  10. If you wish to incorporate parts of the Program into other free
programs whose distribution conditions are different, write to the author
to ask for permission.  For software which is copyrighted by the Free
Software Foundation, write to the Free Software Foundation; we sometimes
make exceptions for this.  Our decision will be guided by the two goals
of preserving the free status of all derivatives of our free software and
of promoting the sharing and reuse of software generally.

                            NO WARRANTY

  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED
OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS
TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE
PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,
REPAIR OR CORRECTION.

  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,
INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING
OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED
TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY
YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER
PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE
POSSIBILITY OF SUCH DAMAGES.

                     END OF TERMS AND CONDITIONS
 
            How to Apply These Terms to Your New Programs

  If you develop a new program, and you want it to be of the greatest
possible use to the public, the best way to achieve this is to make it
free software which everyone can redistribute and change under these terms.

  To do so, attach the following notices to the program.  It is safest
to attach them to the start of each source file to most effectively
convey the exclusion of warranty; and each file should have at least
the "copyright" line and a pointer to where the full notice is found.

    <one line to give the program's name and a brief idea of what it does.>
    Copyright (C) <year>  <name of author>

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA


Also add information on how to contact you by electronic and paper mail.

If the program is interactive, make it output a short notice like this
when it starts in an interactive mode&colon.

    Gnomovision version 69, Copyright (C) year  name of author
    Gnomovision comes with ABSOLUTELY NO WARRANTY; for details type `show w'.
    This is free software, and you are welcome to redistribute it
    under certain conditions; type `show c' for details.

The hypothetical commands `show w' and `show c' should show the appropriate
parts of the General Public License.  Of course, the commands you use may
be called something other than `show w' and `show c'; they could even be
mouse-clicks or menu items--whatever suits your program.

You should also get your employer (if you work as a programmer) or your
school, if any, to sign a "copyright disclaimer" for the program, if
necessary.  Here is a sample; alter the names&colon.

  Yoyodyne, Inc., hereby disclaims all copyright interest in the program
  `Gnomovision' (which makes passes at compilers) written by James Hacker.

  <signature of Ty Coon>, 1 April 1989
  Ty Coon, President of Vice

This General Public License does not permit incorporating your program into
proprietary programs.  If your program is a subroutine library, you may
consider it more useful to permit linking proprietary applications with the
library.  If this is what you want to do, use the GNU Library General
Public License instead of this License.

:elines.

.*-------------------------------------------------------------------------
.*fold00.*Author & Minta homepage

:h1 id=author.Author &amp. &progname. homepage
:p.:hp7.Author:ehp7.

:dl break=all tsize=5 compact.

:dt.:hp2.Snail mail:ehp2.
:dd.Thorsten Thielen c/o Sascha Weber, Postfach 3928, 54229 Trier, Germany

:dt.:hp2.e-Mail:ehp2.
:dd.&email1.

:dt.:hp2.WWW:ehp2.
:dd.&www.

:edl.

:artwork name='src/data/teamlogo.bmp' align=center.
:p.Proud member of Team OS/2 Region Trier (:hp1.www.teamos2.ipcon.de:ehp1.), 
the makers of the "Team Trier Collection"-CDROM.

:lm margin=1.
:p.
Suggestions and bug-reports are always welcome. Well ... bug-reports
are perhaps not :hp1.that:ehp1. welcome ... ;-)
:p.
.br
:hp7.&progname. homepage:ehp7.
:p.Visit the &progname. homepage for info and new versions&colon.
&www./minta



.*-------------------------------------------------------------------------
.*fold00.*Help wanted!
:h1 id=helpwanted.Help wanted!
:p.Now that &progname. supports other languages, I of course want to include
as many as possible. The problem is that I only speak english and german well
enough to do a translation &colon.-) So if anybody out there wants to
translate &progname. to a new language you are gladly welcome to do so!

:p.I have included the source for the helpfile and program ressources in a
seperate ZIP archive ('language.zip'). Just take the *.rc and *.hlp file of
your choice and go to work! &colon.-) If you have any questions, feel free to
:link refid=author reftype=hd.ask me:elink.!

:p.If you haven't got the time to do (or just don't feel like doing ;-) a
"full" translation (i.e. program and online help) you may only translate
the program ressources (dialogs, menus, some messages) as well of course!
That would be of much help already ...

.*-------------------------------------------------------------------------
.*fold00.*Credits

:h1 id=credits.Credits
:p.I wish to thank the following people, for their help and support with
&progname.&colon.

:ul.
:li.Thanks got to :hp1.Sascha Weber:ehp1. and :hp1.Dirk Riemekasten:ehp1. for
their excellent beta testing of &progname.
(And a kick in the *ss for forcing me to add new features all of the time ;-)
:li.Big thanks also go to the :hp1.mpg123 team:ehp1. for writing the mpg123
MP3 player and including the sources so that I could borrow their MP3 header
decoding routine! It is way better than the thing I wrote ... (You can find
out more about mpg123 at
http&colon.//www.sfs.nphil.uni-tuebingen.de/~hipp/mpg123.html).
:li.This program uses a few small pieces of code from :hp1.Richard Papo's:ehp1.
excellent "MemSize" system resources monitor (You can find out more about
MemSize at
http&colon.//www.msen.com/~rpapo).
:li.Extra specials thanks go to all the people, who translated &progname.
to other languages&colon.
:ul.
:li.Many thanks to :hp1.Luc Van Bogaert:ehp1. for the Dutch translation.
:li.Many thanks to :hp1.Guillaume Gay:ehp1. for the French translation.
:li.Many thanks to :hp1.Jostein Ullestad:ehp1. and :hp1.H†vard Mork:ehp1.
for the Norwegian translation.
:li.Many thanks to :hp1.Cyrill Vakhneyev:ehp1. for the Russian translation.
:li.Many thanks to :hp1.Michael Baryshnikov:ehp1. for finding lots of bugs!
:li.Special thanks to :hp1.Alberto Gabrielli:ehp1., not only for the
Italian translation of the program and the online help but also for finding
and notifying me of many, many bugs and inconsistencies!
:eul.
:li.Thanks also go to all the users who notified me of bugs, made suggestions
or just wrote me a mail about &progname.!
:eul.

.*-------------------------------------------------------------------------
.*fold00.*Registering
:h1 id=register."Registering"
.*:p. if you are satisfied with what &progname. 1.67 offers, you are free to keep
.*using this version ... but please keep in mind that it lacks many useful
.*functions that are present in newer versions and that it is not supported
.*any longer!
:p.You can become a registered user for &progname. (&version.) just by :link
refid=author reftype=hd.sending an e-mail (or postcard or whatever) to
me:elink.. Actually this is required, if you use &progname. (more than once a
year or so ;-). Just write something like "Hi, I use your program &progname.!"
and I'm satisfied. If you do :hp1.not:ehp1. want to be included in the mailing
list for news and infos about &progname. do not forget to tell me!

:p.But I guess there are a lot of people out there who have seen &progname.,
worked with it for a while but just don't want to register by writing me a
mail. Well, for you I've assembled this list of ...
:p.:hp2.The Top 10 reasons why not to register &progname.:ehp2.

:ul compact.

:li.In my opinion, &progname. is a pretty bad program. I don't like the color
or font of the windows (and far less I like the idea of being able to change
them!), I don't speak any of the languages it supports and I heard that there
once really was found a bug! Not to mention the crappy support; writing an
e-mail to get help is far too complicated.

:li.I'm totally satisfied with anything that &progname. 1.67 offers. I'll
find my own workarounds for this bugs that might be discovered! I'm never
going to use this drag'n'drop, this auto-tagging capabilities or this
database stuff! And ID3 v2.x is far beyond my needs anyway. So spare me by
your updates ...

:li.Who cares for info on new releases? Why should I get on yet another of
these mailing-lists? My mailbox is overflowing on a regular base and I'm
daily checking the "incoming" directory of Hobbes anyway!

:li.I just can't spare the time to write a mail to you! See, I've got a job,
a wife, 10 kids or so, a girlfriend, a car, a house, a swimming pool and
thousands of MP3 files that still need to be tagged, so I'm really busy night
and day! I really don't want to think of what I would miss in this lost five
minutes ...

.*:li.$10 is far too much money for this program! For this big amount I could,
.*well, buy half of an audio CD! I could go out to dinner with my friend (well,
.*at least if we have already eaten before). I could think of thousand things
.*more ...

:li.Why should I make you feel that it's a good thing to develop software for
OS/2? There are far to many programs for OS/2 already, we don't want to get
the market oversupplied, do we?

:li.There are lot's of other programs out there, that do the thing! Well ok,
maybe they don't have that nice PM interface, might be that they are lacking
a lot of the functionallity that &progname. offers and maybe actually there
are only one or two of them, but at least I don't have to spend hours and
hours writing longish mails to their authors!

:li.I don't find supporting the mailware concept of any use. Developers
giving away fully working programs and then hoping that someone actually will
write a mail when using them, when (s)he can get away without, are an all too
trustfull bunch of fools!

:li.Why should I try to support OS/2 software? OS/2 is dead, believe me!
"I'm Bill Gates of MicroBorg. This OS will be assimilated. Development is
futile."

:li.I've done a translation to another language and already sent a mail
together with the translated files &colon.-) 

:li.I can't write! I don't know how to send e-mail!! I don't even have an
account!!! And I'm using Windows!!!!

:eul.



.*-------------------------------------------------------------------------
.*fold00.*Dedication

.* I think we should keep "Hackers" and "The Plague" untranslated.

:h1 id=dedication.Dedication
:p.&progname. is dedicated to :hp1."Hackers":ehp1., probably the worst film
about computers, information technology and hackerdom that was ever made. A
really great comedy though, I nearly laughed my *ss off half the time (well,
actually only when I wasn't crying).

:p.BTW, I bet "da Vinci" would have brought down every system just by its
need for ressources ...
:p.BTW 2&colon. Perhaps they should have called :hp1.the film:ehp1.
"The Plague"?

:p.No, of course that is not the real dedication ...

:p.:artwork name='src/data/godzilla.bmp' align=center.
:hp2.
.ce This release of &progname. is dedicated to Godzilla.
:ehp2.

.*-------------------------------------------------------------------------
.*fold00.*There's more where that came from ...

:h1 id=moreprogs.There's more where that came from ...
:p.&progname. is by no means the only program for OS/2 that I have written.
Here is a little list of more :hp1.freely available:ehp1. programs out of
my editor&colon.

:dl break=all tsize=5.

:dt.:hp2.Gotcha!:ehp2. (Screencapture program)
:dd.Capture windows, window interiors, (parts of) the screen. Timer
controlled, automatic, repeated capturing. Saving to file or clipboard,
etc.

:dt.:hp2.Wanda:ehp2. ("Sticky notes" for the desktop)
:dd.Notes windows in all colors, sizes, etc. Large number of configuration
options. Printing, saving, etc.

:dt.:hp2.Carrie R. Lust:ehp2. (Phone costs/online time tracking)
:dd.11 available values (configurable). 4 warning modes (configurable).
Logging of all connections, etc.

:dt.:hp2.Xened:ehp2. ("Xenon II" editor)
:dd.Editing of weapon prices, editing of the maps, tips and tricks, etc.
Available also for DOS and Linux.

:dt.:hp2.CAD/Off:ehp2. ("Reboot disabler")
:dd.Deactivates the CTRL-ALT-DEL keycombination until system shutdown.

:dt.:hp2.Tomo:ehp2. (Tetris clone)
:dd.More "stones", configurable playground size, etc. Unfortunatly only for
DOS and only in german (I've lost the sources ...)

:edl.
:p.Apart from the programs listed here, there are others in developement
right now (even some games!). If you would like to get more information
just take a look at &www./projects.html !

.*-------------------------------------------------------------------------

:euserdoc.
