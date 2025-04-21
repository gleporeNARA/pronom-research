The TIKI Model System

Ahhhh, much better. So, what the heck is a tik file and where did that name come from? I can answer the first question but I have no clue on the second. The term TIKI refers to the game’s modeling system, of which tik files (such as bar.tik) are one part. The other parts are the models and their associated animations. The TIKI modeling system is hierarchical, which means it is made up of multiple pieces that can be used together in different combinations (as opposed to ‘monolithic’, where all the info for each model and animation is stored together and makes it difficult to re-use). 

https://manualzz.com/doc/o/qz7c0/how-to-write-a-mod-for-medal-of-honor-animations-part-ii--first-person#p9

Tiki Files

Continuing with the windmill example, we have the following tiki file. Each line is commented to indicate its necessity.


//token to identify the file as a TIKI
TIKI

//setup section of the tiki, where scale, baseframe, 
//path and materials are setup
Setup	
{
	//everything in the game world should be scaled to
	//0.54 for the cm conversion
	scale 0.54

	//path that points to where the models data files are located
	path models/animate/windmill
	
	//skelmodel allows you to specify what file is the model //baseframe
	skelmodel windmill.skd

	
http://homepage.eircom.net/~abyrne/sdk/tutorials/Exporting%20Animated%20Models.html

http://anubis.clan.free.fr/Tutorials/tut_bloodmod.htm
