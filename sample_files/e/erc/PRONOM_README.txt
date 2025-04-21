EAGLE is a scriptable electronic design automation (EDA) application with schematic capture, printed circuit board (PCB) layout, auto-router and computer-aided manufacturing (CAM) features. EAGLE stands for Easily Applicable Graphical Layout Editor (German: Einfach Anzuwendender Grafischer Layout-Editor) and is developed by CadSoft Computer GmbH. The company was acquired by Autodesk Inc. in 2016.[2]

https://en.wikipedia.org/wiki/EAGLE_(program)

Schematic Basics Part 3:
Checking Connectivity Errors with an ERC in Autodesk EAGLE
Greetings and welcome back to Schematic Basics Part 3! If you have been following along on our journey so far, then you know that we are closing in on the end of the road for your schematic journey. There’s one last step before you can check off on your schematic design and move onto your PCB layout – checking for connectivity with an Electrical Rule Check, or ERC. Let’s do it.

What is ERC?
If this is your first time designing a schematic then the term Electrical Rule Check might be a bit new. This is a handy little tool that you’ll always want to keep in your engineering toolbox, as it helps to point out common errors in your schematic. An ERC will check for the following issues:

Are all of your nets properly connected and labeled on your schematic?
Do you have any conflicting outputs/inputs on your schematic?
Are there any open or overlapping pins and ports on your schematic?
You can think of an ERC as a second pair of eyes; it will always be there to help you find the missing details that you may have overlooked! Of course, an ERC is not meant to be a replacement for reviewing your schematic manually, so don’t rely on it as your first level of defense.

Types of ERC Errors
When you run an ERC for the first time, you’ll be presented with several error categories, including:

Consistency Errors: consistency-error This error means that something isn’t right between your schematic and PCB layout, and your changes likely aren’t in sync between both files. If you get one of these errors, consider it a major red flag to compare both versions of your design before moving ahead.

Errors: error Errors are the red stoplights. You need to step on the breaks and check these out before proceeding. Errors can be pretty significant, like having an unconnected pin that will throw your whole circuit out of whack.

Warnings: warning Warnings are the yellow stoplights. While these types of errors might not mess up your design if you move forward without fixing them, it’s good practice to slow down and review them one by one. These guys are minor compared to Errors, and n include many non-design breaking issues like missing net values.

With those details out of the way, let’s jump into your schematic and get started!

Note – If this is your first time joining us on our Schematic Basic Series, then welcome! We’re working on a simple LED Flasher that includes a 555 timer and some basic components. Here’s our schematic in its current shape. Go ahead and replicate it on your end so you can follow along with us.

https://www.autodesk.com/products/eagle/blog/schematic-basics-part-3-erc/
