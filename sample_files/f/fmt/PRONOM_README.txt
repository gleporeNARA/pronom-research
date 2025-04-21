Web2C
Web2C (sometimes spelled Web2c; kpathsea on CTAN) is support software for TeX and friends which translates the Pascal of the original WEB sources of the TeX system written by Donald Knuth into C, so they can be readily compiled on modern systems. It is the basis for the TeX Live distribution.

Read the Web2C manual, which includes some information on the implementation-specific features of TeX Live.
Join the mailing list and/or browse/search the mailing list archives.
Peruse the sources. Web2C is maintained as part of the TeX Live distribution and is not useful as a standalone program.
Related (local) links: Kpathsea, TeX Live.


https://tug.org/web2c/


print(format_ident);
    /*tex
        Dump constants for consistency check. The next few sections of the
        program should make it clear how we use the dump/undump macros. First
        comes Web2C \TeX's magic constant: "W2TX"
    */
    dump_int(0x57325458);
    dump_int(FORMAT_ID);
    
https://github.com/TeX-Live/luatex-old/blob/d168c3163335cce9e68c9f6bf32f9705da76db72/source/texk/web2c/luatexdir/tex/dumpdata.c
