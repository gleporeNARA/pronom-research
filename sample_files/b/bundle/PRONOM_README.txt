Unity is a cross-platform game engine developed by Unity Technologies, first announced and released in June 2005 at Apple Inc.'s Worldwide Developers Conference as a Mac OS X-exclusive game engine. The engine has since been gradually extended to support a variety of desktop, mobile, console and virtual reality platforms. It is particularly popular for iOS and Android mobile game development and used for games such as Pokémon Go, Monument Valley, Call of Duty: Mobile, Beat Saber and Cuphead.[3] It is considered easy to use for beginner developers and is popular for indie game development.[4]

The engine can be used to create three-dimensional (3D) and two-dimensional (2D) games, as well as interactive simulations and other experiences.[5][6] The engine has been adopted by industries outside video gaming, such as film, automotive, architecture, engineering, construction, and the United States Armed Forces.[7]

https://en.wikipedia.org/wiki/Unity_(game_engine)

UnityFS
UnityFS was a new asset bundle format introduced in Unity 5. I am not a Unity3D developer, and I absolutely didn’t know why Unity introduce a new bundle format. But anyway, let’s analyze it.

Things you need to know
UnityFS is just bundle of several Unity assets. Each asset contains a collection of serialized Unity objects (e.g. 2D texture, text resources, scene objects, etc.).
UnityFS follows a standard Unity file header structure. Let’s call it AssetsBundleHeader06
You have to parse asset files in order to extract what you need. There’s bunch of documentation about this. Look into the old Disunity source code for some idea.
UnityFS Header Structure
UnityFS Header Structure

So the header goes like this. There’s a DWORD flags data that matters - it contains some critical information required for decompression and directory parsing. The rule goes like this:

(Flags & 0x3F) is compression mode. 0 means no compression, 1 means LZMA and 2/3 means LZ4/LZ4HC.
(Flags & 0x40) says whether the bundle has directory info.
(Flags & 0x80) says whether the block and directory list is at the end of this bundle file.

https://imbushuo.net/blog/archives/505
