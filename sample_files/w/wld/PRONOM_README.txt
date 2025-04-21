WLD - WorldBuilder file format



Overview:

Morfit’s .wld format can describe any kind of world, and can also describe movement within the world, by:

having objects follow a certain path in the world
giving the camera a path to follow
having one object follow another object
having the camera follow an object
You can also give physical properties to objects in the world (speed, force,etc.). Everything else must be done through programming.

Introduction:

The basic building blocks used to build a Morfit world file are:

Module: Think of this as a ‘model’. A Module defines a shape.

Polygon: That’s just it;a Polygon.

Object: An Object is one instance of a predefined shape (model). For example, if you have a module called tree, you can have 100 Objects, placing an instance of a tree in 100 different locations. You can change an Object’s proportions, rotate it, change its location, etc., but the basic shape does not change.

Track: A Track defines a path in the world that a Dynamic Object or a Camera can follow.

Dynamic Object: Make your Objects dynamic only if you want them to be able to move. A Dynamic Object can be moved either by putting it on a track in the world, or by making it move in a program (using Morfit functions in your code). If you know the object will be stationary, make it a regular Object.

Camera: The Camera represents the view from which the world is seen.

Animation: Animation is a sequence of bitmaps that replace one another.

Background: A Background is a bitmap spread over the background of the world

Atmosphere: This sets the atmospheric effects in the world, including light and fog.

Test the sample .wld files given , using ‘World Text Editor’ for a better understanding of the Morfit’s world file format.

Coordinate System:

Morfit .wld coordinate system:

positive x = moves out of the screen (away from the world)

negative x = moves into the screen (further into the world)

positive y = moves to the right in the world

negative y = moves to the left in the world

positive z = moves up in the world (height)

negative z = moves down in the world (height)

Example: For an object placed at the origin (0, 0, 0), it's best to place the camera at a positive x location (ex. 500, 0, 0) and give the camera a negative x direction so that it can see the object (ex. —1, 0, 0).

Starting Out:

Sample: Skeleton.wld

Every Morfit ‘.wld’ file must begin with ‘BEGIN DESIGN:’ and end with ‘END DESIGN:’.

http://paulbourke.net/dataformats/wld/
