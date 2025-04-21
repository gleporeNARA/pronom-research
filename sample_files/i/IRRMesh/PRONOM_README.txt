The files come in both Little-endian and UTF versions, the signature is supposed to match both, but the UTF version is still coming up with XML, even though I have the HasPriority flag set. No idea what's goind on there.


Since version 1.1, Irrlicht is able to save and load the full scene graph into an .irr file, an xml based format. There is an editor available to edit those files, named irrEdit (http://www.ambiera.com/irredit) which can also be used as world and particle editor. This tutorial shows how to use .irr files.

Now load our .irr file. .irr files can store the whole scene graph including animators, materials and particle systems. And there is also the possibility to store arbitrary user data for every scene node in that file. To keep this example simple, we are simply loading the scene here. 

http://irrlicht.sourceforge.net/docu/example015.html


Introducing the .irrmesh 3D file format  
During the last days, I checked in some new features into the Irrlicht svn: A loader for a new file format with the extension .irrmesh and mesh writers: Irrlicht will now be able to write out every mesh again if wanted. I implemented and checked in writers for the COLLADA as well as the .irrmesh file format.

So, what's .irrmesh now? Basically, it's Irrlichts built-in file format for static meshes. That's right: Irrlicht now has it's own file format. Finally. Irrmesh is xml based and quite lean: Single vertices and indices don't have their own tags, similar to how the COLLADA format works. An .irrmesh file simply is a dump of the contents of the IMesh interface: A list of mesh buffers, one material per buffer, and a list of vertices and indices. In this way, .irrmesh is the best supported file format and if people start writing exporters for .irrmesh, they can be sure these files will be always displayed 100% correctly in Irrlicht. 

http://www.irrlicht3d.org/pivot/entry.php?id=592#:~:text=An%20.,people%20start%20writing%20exporters%20for%20.
