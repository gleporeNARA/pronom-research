3.4.3. The Bare Essentials
Every Script-Fu script defines at least one function, which is the script's main function. This is where you do the work.

Every script must also register with the procedural database, so you can access it within GIMP.

We'll define the main function first:

        (define (script-fu-text-box inText inFont inFontSize inTextColor))
        
https://docs.gimp.org/2.10/en/gimp-using-script-fu-tutorial-first-script.html
