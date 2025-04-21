NOTE: THE ONLY DIFFERENCE BETWEEN VERSIONS 1 AND 2 IS THE OPTIONAL SPACE AFTER THE INITAL SHEBANG (#!) I DONT KNOW HOW TO COMBINE THE TWO VERSIONS INTO ONE SIGNATURE. IT DOES NOT APPEAR THAT PRONOM HAS AN "OPTIONAL" VALUE.

Tcl (Tool Command Language) is a very powerful but easy to learn dynamic programming language, suitable for a very wide range of uses, including web and desktop applications, networking, administration, testing and many more. Open source and business-friendly, Tcl is a mature yet evolving language that is truly cross platform, easily deployed and highly extensible.

Tk is a graphical user interface toolkit that takes developing desktop applications to a higher level than conventional approaches. Tk is the standard GUI not only for Tcl, but for many other dynamic languages, and can produce rich, native applications that run unchanged across Windows, Mac OS X, Linux and more.

https://www.tcl.tk/

Wish is a simple program consisting of the Tcl command language, the Tk toolkit, and a main program that reads commands from standard input or from a file. It creates a main window and then processes Tcl commands. If wish is invoked with arguments, then the first few arguments, ?-encoding name? ?fileName? specify the name of a script file, and, optionally, the encoding of the text data stored in that script file. A value for fileName is recognized if the appropriate argument does not start with “-”.
If there are no arguments, or the arguments do not specify a fileName, then wish reads Tcl commands interactively from standard input. It will continue processing commands until all windows have been deleted or until end-of-file is reached on standard input. If there exists a file “.wishrc” in the home directory of the user, wish evaluates the file as a Tcl script just before reading the first command from standard input.

If arguments to wish do specify a fileName, then fileName is treated as the name of a script file. Wish will evaluate the script in fileName (which presumably creates a user interface), then it will respond to events until all windows have been deleted. Commands will not be read from standard input. There is no automatic evaluation of “.wishrc” when the name of a script file is presented on the wish command line, but the script file can always source it if desired.

Note that on Windows, the wishversion.exe program varies from the tclshversion.exe program in an additional important way: it does not connect to a standard Windows console and is instead a windowed program. Because of this, it additionally provides access to its own console command.

https://www.tcl.tk/man/tcl8.5/UserCmd/wish.html
