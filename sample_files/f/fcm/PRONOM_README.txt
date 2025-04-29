Adobe Captivate is an authoring tool that is used for creating eLearning content such as software demonstrations, software simulations, branched scenarios, and randomized quizzes in Shockwave Flash (.swf, a.k.a. ‘Small Web Format’) and HTML5 formats.[1][2]

It can also convert Adobe Captivate-generated file formats (.swf) to digital MP4 (.mp4) formats which can be played with media players or uploaded to video hosting websites. For software simulations, Captivate can use left or right mouse clicks, key presses and rollover images.

It can also be used to create screencasts, and to convert Microsoft PowerPoint presentations to .swf and HTML5 formats.

https://en.wikipedia.org/wiki/Adobe_Captivate

Change text alignment on custom text captions
Sometimes text in custom text captions can appear out of alignment. To solve this problem, set the left, right, top, and bottom margins.

Each of the five text caption styles requires different margin settings because text appears in slightly different places in each text caption.

The margin settings are stored in a text file with the extension.fcm. You can use Notepad or WordPad to create or edit FCM files.

Using Windows Explorer, navigate to C:\Program Files\Adobe\Adobe Captivate <version_number>\Gallery\Captions (on Windows) or /Applications/Adobe Captivate <version_number>/Gallery/Captions (on Mac OS). All the text caption BMP and corresponding FCM files are located in this folder.

Right-click (Windows) or Control-click (Mac OS) the FCM file you want to edit, and select Open With.

Select a text editor.

Edit the following values as necessary:

 
Left Margin is the number of pixels from the left side of the bitmap to the text.

Right Margin is the number of pixels from the right side of the bitmap to the text.

Top Margin is the number of pixels from the top of the bitmap to the text.

Bottom Margin is the number of pixels from the bottom of the bitmap to the text.

(Optional) If necessary, you can edit the MarginX and MarginY settings. This can be important if you are adding captions automatically.

 
MarginX is the number of pixels horizontally from the nearest corner to the tip of the caption callout.

Margin Y is the number of pixels vertically from the nearest corner to the tip of the caption callout.

Note: The nearest corner is identified in the file open in a text editor under "Corner." For example, Corner=right, top.

https://helpx.adobe.com/se/captivate/using/text-captions.html
