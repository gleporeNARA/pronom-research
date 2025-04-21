Teeworlds (formerly TeeWars) is a free, open-source sidescrolling multiplayer shooting game originally created by Swedish developer Magnus Auvinen and now maintained by the community. It features simple cartoon-themed graphics and physics and relies heavily on classic shooter weaponry and gameplay. Currently there are official versions for Microsoft Windows, Linux, macOS and it has been available via digital distributor Steam since 2015.[1] The source code is publicly available.

https://en.wikipedia.org/wiki/Teeworlds

Excursion: The Teeworlds map format
In this chapter you will learn how a teeworlds map is structured. This knowledge is not necessary for using tml, but it can be helpfull if you are interested in understanding what is going on under the hood or just want to hack a map yourself.

Header
The first bytes just contain the word “DATA” or “ATAD” (little oder big endian), it is the “signature” of a teeworlds map. After that there is an int which contains the version of the mapformat, teeworlds 0.5 uses version 4 but also supports 3, this libary only supports 4.

DATA\\x04\\x00\\x00\\x00
Then there are four more ints which can be read straight from the file. These are “size”, “swaplen”, “num_item_types”, “num_items”, “num_raw_data”, “item_size” and “data_size”.

Now the offsets can be calculated. This is important to seek directly to the items or datas which contain the actual data. The item offset is the sum of the following:

num_item_types * 12 (one item type is composed of three int, one int is four bytes)
num_items * 4
num_raw_data * 2 * 4
To access the data an additional value gets added to the item offset

item_size

https://sushitee.github.io/tml/mapformat.html
