#!/usr/bin/env python2

#--------------------------------------------------------------------------
# TrIDScan/Py
# Copyright (C) 2015-2016 Marco Pontello - http://mark0.net
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#--------------------------------------------------------------------------


import re
import string
import os
import sys
import glob
import fnmatch
from time import clock
from time import localtime
import xml.etree.ElementTree as XML
import argparse

PROGRAM_VER = "2.02"
HEADER_FRONT_SIZE = 2048
MAX_FILE_SIZE = 1024 * 1024 * 10
MAX_STRING_SIZE = 256


class TrIDDef(object):
    """
    TrID definition.
    """
    def __init__(self):
        self.filetype = ""
        self.ext = []
        self.mime = ""
        self.tag = 0
        self.rem = ""
        self.refurl = ""
        self.user = ""
        self.email = ""
        self.home = ""
        self.filenum = 0
        self.checkstrings = True
        self.refine = ""
        self.patterns = []
        self.strings = []
    def __str__(self):
        return "FileType: '%s', Ext: '%s', Patterns: %d, Strings: %d" % \
               (self.filetype, self.ext,
               len(self.patterns), len(self.strings))


def header_intro():
  """
  Display the usual presentation, version, (C) notices, etc.
  """
  print
  print "TrIDScan/Py v%s - (C) 2015-2016 By M.Pontello" % \
        (PROGRAM_VER)
  print


def GStringsFromBlock(data):
    """
    Given a block of binary data, return a list with all the valid GlobalStrings
    """
    charsok = " abcdefghijklmnopqrstuvwxyz" + \
              "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890-+_.$(){}~*%"
    chardelim = ""
    for i in range(1,256):
        if not chr(i) in charsok:
            chardelim += chr(i)

    tfrom = "\00" + chardelim
    tto =  "'" + "/" * len(chardelim)
    transtable = string.maketrans(tfrom, tto)

    data = data.translate(transtable)
    tokens = re.findall("[^/]+", data)
    print "  Raw strings: %dK" % (len(tokens)/1000)
    tokens = [token.strip("' ") for token in tokens]
    return list(set(filter(fTokenisvalid, tokens)))


def fTokenisvalid(x):
    """
    Used when filtering substrings
    """
    return 3 < len(x)


def fToksortkey(x):
    """
    Used to sort tokens by size & alpha. Need to be unuglyfied!
    """
    return str(999999-len(x)).rjust(6,"0") + x


def LoadDataFromFile(filename):
    """
    Load the relevant parts of a (big) file for analysis
    """
    filesize = os.path.getsize(filename)
    f = open(filename, "rb")
    if filesize <= MAX_FILE_SIZE:
        data = f.read()
    else:
        part_size = MAX_FILE_SIZE / 2
        data = f.read(part_size)
        f.seek(filesize - part_size)
        data += "|" + f.read()
    f.close
    return data.upper()


def LoadHeaderFromFile(filename):
    """
    Return the header part as a string
    """
    try:
        filesize = os.path.getsize(filename)
        datasize = min(filesize, HEADER_FRONT_SIZE)
        f = open(filename, "rb")
        data = f.read(datasize)
        f.close
    except:
        data = ""
    return data


def GStringsFind(small, big):
    """
    Find the common strings between two lists. If a token don't match, it start
    looking for the longest common substrings.
    The search spaces is divided depending on the string size, to
    speed up certain searches. Not pretty but it's a bit faster.
    """

    tokdic = {} # this will hold all the valid (sub)tokens found

    bigblockto256 = "/".join([tok for tok in big if len(tok) >= 128])
    bigblockto128 = "/".join([tok for tok in big if len(tok) >=  64 and len(tok) < 128])
    bigblockto064 = "/".join([tok for tok in big if len(tok) >=  32 and len(tok) <  64])
    bigblockto032 = "/".join([tok for tok in big if len(tok) >=  16 and len(tok) <  32])
    bigblockto016 = "/".join([tok for tok in big if len(tok) >=   8 and len(tok) <  16])
    bigblockto008 = "/".join([tok for tok in big if len(tok) >=   6 and len(tok) <  8])
    bigblockto006 = "/".join([tok for tok in big if len(tok) <    6])

    cc = len(small)
    lastsub = ""
    for token in small:
        print "\r  %d:%d  " % (cc, len(token)), 
        cc -= 1
        if (token in bigblockto006 or
            token in bigblockto008 or
            token in bigblockto016 or
            token in bigblockto032 or
            token in bigblockto064 or
            token in bigblockto128 or
            token in bigblockto256):
            # If the token in present in all, it's OK!
            tokdic[token] = 1
        else:
            # Try all the valid subtoken...
            cc2 = 0
            for st in xrange(len(token) - 3):
                cc2 += 1
                if cc2 == 37:
                    cc2 = 0
                    print "\r  %d:%d  " % (cc, len(token) - st), 
                    
                # This hold a temporary dic of all the subtoken already tried
                btoken = token[st:]
                for en in xrange(min(MAX_STRING_SIZE, len(btoken)), 3, -1):
                    subtoken = btoken[:en]
                    if not subtoken in lastsub:
                        # Check if a subtoken is in the big list/block
                        stlen = len(subtoken)
                        if stlen < 6:
                            if subtoken in bigblockto006:
                                tokdic[subtoken] = 1
                                lastsub = subtoken
                                break # exit last for to skip smaller subtokens
                        if stlen < 8:
                            if subtoken in bigblockto008:
                                tokdic[subtoken] = 1
                                lastsub = subtoken
                                break # exit last for to skip smaller subtokens
                        if stlen < 16:
                            if subtoken in bigblockto016:
                                tokdic[subtoken] = 1
                                lastsub = subtoken
                                break # exit last for to skip smaller subtokens
                        if stlen < 32:
                            if subtoken in bigblockto032:
                                tokdic[subtoken] = 1
                                lastsub = subtoken
                                break # exit last for to skip smaller subtokens
                        if stlen < 64:
                            if subtoken in bigblockto064:
                                tokdic[subtoken] = 1
                                lastsub = subtoken
                                break # exit last for to skip smaller subtokens
                        if stlen < 128:
                            if subtoken in bigblockto128:
                                tokdic[subtoken] = 1
                                lastsub = subtoken
                                break # exit last for to skip smaller subtokens
                        if subtoken in bigblockto256:
                            tokdic[subtoken] = 1
                            lastsub = subtoken
                            break # exit last for to skip smaller subtokens
    print "\r",
    tokens = GStringsFilter(tokdic.keys())
    return tokens


def GStringsFilter(tokens):
    """
    Scan a list of GStrings and remove trailing zeros & spaces, duplicates, etc.
    """
    print "  Filtering strings..."
    # Remove trailing zeros & spaces, and duplicates
    for i in range(len(tokens)):
        tokens[i] = tokens[i].strip("' ")
    tokens = list(set(filter(fTokenisvalid, tokens)))
    # Remove subtokens (ex. RNEL32.DLL if there's KERNEL32.DLL)
    tokensnum = len(tokens)
    # Sort from the smallest to largest
    tokens = sorted(tokens, key=fToksortkey, reverse=True)
    # searching on a big string instead of looping trough n elements is faster
    tokblocks = "/".join(tokens)
    st = 0
    cc = 0
    for i in range(tokensnum - 1):
        cc += 1
        if cc == 137:
            cc = 0
            print "\r  " + str(i * 100 / (tokensnum - 1)) + "%",
        # adjust to search only on the remaining tokens
        st += len(tokens[i]) +1
        if tokens[i] in tokblocks[st:]:
            tokens[i] = ""
    print "\r",
    # Remove empty & duplicates strings
    return list(set(filter(fTokenisvalid, tokens)))


def PatternsFinder(block1, block2, mask):
    """
    Return a list of pos/bytes tuples, given two blocks
    (the header of two files) and a mask (handy for
    refining def: only some patterns are loaded, so
    only those positions should be analyzed).
    """

    #identify all the matching bytes in the two blocks
    #(analyzing only the ones flagged in the mask)
    mask = mask[:min(len(block1), len(block2))]
    matches = [False for c in mask]
    for i in range(len(mask)):
        if mask[i] == True:
            if block1[i] == block2[i]:
                matches[i] = True

    #scan the match list to create the patterns
    patterns = []
    inpat = False
    for i in range(len(matches)):
        if inpat == True: #inside a pattern
            if matches[i] == True:
                pattern += block1[i]
            if matches[i] == False or i == len(matches) - 1:
                inpat = False
                patterns.append( (patpos, pattern) )
        else: #outside a pattern
            if matches[i] == True:
                patpos = i
                pattern = block1[i]
                inpat = True
                if i == len(matches) - 1:
                    patterns.append( (patpos, pattern) )
    return patterns


def Patterns2MaskBlock(patterns):
    """
    Given a list of pos/pattern tuples, return a mask and data block
    """
    mask = [False] * HEADER_FRONT_SIZE
    block = ["*"] * HEADER_FRONT_SIZE
    for pat in patterns:
        pos = pat[0]
        bytes = pat[1]
        mask = mask[:pos] + [True] * len(bytes) + mask[pos + len(bytes):]
        block = block[:pos] + [b for b in bytes] + block[pos + len(bytes):]
    return mask, "".join(block)


def scanfiles_for_patterns(filenames, oldpatlist):
    """
    Scan a list of filenames and return a list of patterns' tubples (pos/pat).
    """
    #when refining a def...
    if len(oldpatlist):
        mask, lastheader = Patterns2MaskBlock(oldpatlist)
    else:
        lastheader = ""
    patlist = oldpatlist
    print "Scanning for patterns..."
    for i in range(len(filenames)):
        filename = filenames[i]
        print "Checking file %d/%d '%s'" % (i + 1, len(filenames),
               filename.encode(errors="replace"))
        header = LoadHeaderFromFile(filename)
        if len(patlist):
            mask, lastheader = Patterns2MaskBlock(patlist)
            patlist = PatternsFinder(header, lastheader, mask)
            if len(patlist) == 0:
                break
        else:
            mask = [True] * min(len(header), len(lastheader))
            if lastheader <> "":
                patlist = PatternsFinder(header, lastheader, mask)
        lastheader = header
        if len(patlist):
            print "  Pattern(s) found: %d" % (len(patlist))
    return patlist


def scanfiles_for_strings(filenames, oldtokens):
    """
    Scan a list of filenames and return a list of unique strings.
    """
    tokens = []
    print "Scanning for strings..."
    for i in range(len(filenames)):
        filename = filenames[i]
        print "Analyzing file %d/%d '%s'" % (i + 1, len(filenames),
              filename.encode(errors="replace"))
        data = LoadDataFromFile(filename)
        if i > 0:
            #take a shortcut if there are few tokens to check
            subcheck = False
            if len(tokens) < 200:
                for token in tokens:
                    if not token.replace("'", "\00") in data:
                        subcheck = True
                        break
            else:
                subcheck = True
            #check all the tokens & subtokens
            if subcheck:
                print "Parsing..."
                big = GStringsFromBlock(data)
                print "  Checking strings..."
                tokens = GStringsFind(tokens, big)
        else:
            big = GStringsFromBlock(data)
            if len(oldtokens):
                tokens = GStringsFind(oldtokens, big)
            else:
                #if not refining, start with the 1st file's tokens
                tokens = big
        #stop if there are no more strings
        print "  String(s) found:", len(tokens), "    "
        if len(tokens) == 0:
            break
    return tokens


def ascii_dump(data):
    dump = []
    for b in data:
        if 31 < ord(b) < 127 and not b in "&<>":
            dump.append(b)
        else:
            dump.append(".")
    dump = " " + " ".join(dump)
    return dump.rstrip(". ")


class SimpleXML():
    """
    Provide a simple way to build an indented XML file sequentially.
    """
    def __init__(self):
        self.level = 0
        self.lines = []
    def add(self, tag, content=None):
        if content <> None:
            self.lines += ["%s<%s>%s</%s>" % (
                          "\t" * self.level, tag, content, tag.split()[0])]
        else:
            if tag[0] == "/":
                preinc = -1
                postinc = 0
            else:
                preinc = 0
                postinc = 1
            self.level += preinc
            self.lines += ["%s<%s>" % ("\t" * self.level, tag)]
            self.level += postinc
    def get(self):
        return self.lines


def write_triddef(triddef, filename, backup=True):
    """
    Write a TrID's definition to a newtype.trid.xml file
    """
    now = localtime()

    sx = SimpleXML()
    sx.add('TrID ver="2.00"')

    sx.add("Info")
    if triddef.filetype:
        sx.add("FileType", triddef.filetype)
    else:
        sx.add("FileType", "Enter a useful filetype description")
    sx.add("Ext", "/".join(triddef.ext).strip("/"))
    sx.add("Mime", triddef.mime)
    sx.add("ExtraInfo")
    sx.add("Rem", triddef.rem)
    sx.add("RefURL", triddef.refurl)
    if triddef.tag:
        sx.add("Tag", str(triddef.tag))
    sx.add("/ExtraInfo")
    sx.add("User", triddef.user)
    sx.add("E-Mail", triddef.email)
    sx.add("Home", triddef.home)
    sx.add("/Info")

    sx.add("General")
    sx.add("FileNum", str(triddef.filenum))
    if triddef.refine:
        sx.add("Refine", triddef.refine)
    if triddef.checkstrings:
        sx.add("CheckStrings", "True")
    sx.add("Date")
    sx.add("Year", str(now[0]))
    sx.add("Month", str(now[1]))
    sx.add("Day", str(now[2]))
    sx.add("/Date")
    sx.add("Time")
    sx.add("Hour", str(now[3]))
    sx.add("Min", str(now[4]))
    sx.add("Sec", str(now[5]))
    sx.add("/Time")
    sx.add("Creator", "TrIDScan/Py v" + PROGRAM_VER)
    sx.add("/General")

    sx.add("FrontBlock")
    for pat in triddef.patterns:
        hexdump = "".join([ hex(ord(b) + 0x100)[3:] for b in pat[1] ])
        sx.add("Pattern")
        sx.add("Bytes", hexdump.upper())
        dump = ascii_dump(pat[1])
        if dump:
            sx.add("ASCII", dump)
        sx.add("Pos", str(pat[0]))
        sx.add("/Pattern")
    sx.add("/FrontBlock")

    if len(triddef.strings):
        sx.add("GlobalStrings")
        for string in triddef.strings:
            sx.add("String", string.replace("\00", "'"))
        sx.add("/GlobalStrings")

    sx.add("/TrID")

    #Backup and write
    if backup:
        try:
            if os.path.exists(filename):
                backup_filename = "newtype.trid.xml.bak"
                if os.path.exists(backup_filename):
                    os.remove(backup_filename)
                os.rename(filename, backup_filename)
                print "Existing '%s' back up as '%s'" % (filename, backup_filename)
        except (IOError, OSError, WindowsError), v:
            errprint("I/O Error: %s" % str(v.strerror), v.filename)
            sys.exit(1)
    try:
        f = open(filename, 'w')
        f.write("\n".join(sx.get()))
        f.close()
    except (IOError, OSError, WindowsError), v:
        errprint("I/O Error: %s" % str(v.strerror), v.filename)
        sys.exit(1)
    print "New TrID's definition written as '%s'." % (filename)


def read_cfg():
    """
    Read default data/field from tridscan.cfg.xml.
    Return a dictionary.
    """
    cfgfile = "tridscan.cfg.xml"
    cfg = {"user":"", "email":"", "home":""}
    if os.path.exists(cfgfile):
        tscfg = XML.parse(cfgfile).getroot()
        cfg["user"] = tscfg.findtext("User", default = "")
        cfg["email"] = tscfg.findtext("E-Mail", default="")
        cfg["home"] = tscfg.findtext("Home", default="")
    return cfg


def hex2bytes(string):
    """
    Convert a list of HEX values to a bytes sequence
    """
    bytes = []
    for i in range(0, len(string), 2):
        bytes.append(chr(int(string[i:i+2], 16)))
    return "".join(bytes)


def load_trid_def(filename):
    """
    Parse a TrID's XML definition and return a TrIDDef object
    """

    triddef = TrIDDef()

    trid = XML.parse(filename).getroot()

    triddef.filetype = trid.findtext("Info/FileType")
    triddef.ext = trid.findtext("Info/Ext", default="").split("/")
    triddef.mime = trid.findtext("Info/Mime", default="")
    triddef.user = trid.findtext("Info/User", default="")
    triddef.email = trid.findtext("Info/E-Mail", default="")
    triddef.home = trid.findtext("Info/Home", default="")
    data = trid.findtext("General/FileNum")
    if data.isdigit():
        triddef.filenum = int(data)
    else:
        triddef.filenum = 0
    triddef.checkstrings = trid.findtext("General/CheckStrings",
                           default="False").strip() == "True"

    triddef.refine = trid.findtext("General/Refine", default="")

    tridx = trid.find("Info/ExtraInfo")
    if tridx is not None:
        triddef.rem = tridx.findtext("Rem", default="")
        triddef.refurl = tridx.findtext("RefURL", default="")
        data = tridx.findtext("Tag", default="")
        if data.isdigit():
            triddef.tag = int(data)
        else:
            triddef.tag = 0

    elist = trid.findall("FrontBlock/Pattern")
    for pat in elist:
        for patdata in pat.getchildren():
            ppos = 0
            bytes = ""
            if patdata.tag == "Pos":
                ppos = int(patdata.text)
            elif patdata.tag == "Bytes":
                pbytes = hex2bytes(patdata.text)
        triddef.patterns.append( (ppos, pbytes) )

    elist = trid.findall("GlobalStrings/String")
    for ele in elist:
        # decodes the zeros-bytes
        triddef.strings.append(ele.text.replace("'", "\x00").upper())

    return triddef


def get_cmdline():
    """
    Evaluate command line parameters, usage & help.
    Set a global dictionary with meaningful names.
    """
    parser = argparse.ArgumentParser(
             description="Scan a number a number of files \
             and create a new TrID's definition.",
             prefix_chars='-/+',
             version = "TrIDScan/Python v" + PROGRAM_VER)
    parser.add_argument("filenames", action="store", nargs="+",
                        help="files to scan (can include path & wildcards)")
    parser.add_argument("-r", "--recurse", action="store_true", default=False,
                        help="recurse subdirs")
    parser.add_argument("-fs", "--forcestrings", action="store_true", default=False,
                        help="force strings scanning")
    parser.add_argument("-ns", "--nostrings", action="store_true", default=False,
                        help="disable strings scanning")
    parser.add_argument("-d", "--definition", action="store", dest="trid_def",
                        metavar="filename", help="TrID's definition to refine")
    res = parser.parse_args()

    param = {}

    param["files"] = res.filenames
    param["forcess"] = res.forcestrings
    param["noss"] = res.nostrings
    param["recurse"] = res.recurse
    param["refine"] = res.trid_def

    return param


def errprint(msg, filename=os.path.basename(sys.argv[0])):
    txt = "%s: %s\n" % (filename, msg)
    print >>sys.stderr, txt


def main():
    header_intro()
    params = get_cmdline()

    if params["refine"]:
        refine = True
        olddeffilename = params["refine"]
    else:
        refine = False

    filenames = []
    for filespec in params["files"]:
        filepath, filename = os.path.split(filespec)
        if not filepath:
            filepath = "."
        if not filename:
            filename = "*"
        for wroot, wdirs, wfiles in os.walk(filepath):
            if not params["recurse"]:
                wdirs[:] = []
            for fn in fnmatch.filter(wfiles, filename):
                filenames.append(os.path.join(wroot, fn))
    filenames = sorted(set(filenames), key=os.path.getsize)

    if refine and not os.path.exists(olddeffilename):
        errprint("I/O Error: definition '%s' not found." % (olddeffilename))
        sys.exit(1)

    #need at least 2 files, or 1 when refining a def
    print "File(s) to scan found:", len(filenames)
    minfiles = {False:2, True:1}
    if len(filenames) < minfiles[refine]:
        errprint("Error: at least %d files needed!" % (minfiles[refine]))
        sys.exit(1)

    defdata = read_cfg()
    if refine:
        #load the old definition to refine
        try:
            triddef = load_trid_def(olddeffilename)
        except XML.ParseError, v:
            errprint("XML Error: %s" % (str(v.message)), olddeffilename)
            sys.exit(1)
        except (IOError, OSError, WindowsError), v:
            errprint("I/O Error: %s" % str(v.strerror), v.filename)
            sys.exit(1)

        if triddef.refine:
            triddef.refine += " - "
        triddef.refine += str(len(filenames)) + " by " + defdata["user"]

        CheckForStrings = False
        if triddef.checkstrings == True:
            if len(triddef.strings):
                CheckForStrings = True
    else:
        #create a new def and fill it with default data
        triddef = TrIDDef()
        triddef.user = defdata["user"]
        triddef.email = defdata["email"]
        triddef.home = defdata["home"]
        triddef.mime = "application/octet-stream" # temporary addition!
        CheckForStrings = True

    #check command line overrides
    if params["forcess"]:
        CheckForStrings = True
    if params["noss"]:
        CheckForStrings = False

    #determine the files extensions
    exts = [os.path.splitext(f)[1].lstrip(".").upper() for f in filenames]
    exts = sorted(filter(None, list(set(exts))))
    if refine:
        #append every file extension not already present
        for ext in exts:
            if not ext in triddef.ext:
                triddef.ext.append(ext)
    else:
        triddef.ext = exts

    #scan files for patterns
    tstart = clock()
    patterns = scanfiles_for_patterns(filenames, triddef.patterns)
    if len(patterns) == 0:
        errprint("Error: no patterns found!")
        sys.exit(1)
    print "Last pattern end at offset: %d" % \
          (patterns[-1][0] + len(patterns[-1][1]) - 1)

    #scan files for strings
    if CheckForStrings:
        oldtokens = [token.replace("\00","'") for token in triddef.strings]
        tokens = scanfiles_for_strings(filenames, oldtokens)
        tokens = sorted(tokens, key=fToksortkey)
    else:
        tokens = []
    tend = clock()

    #complete the def & write the new definition
    triddef.filenum += len(filenames)
    triddef.patterns = patterns
    triddef.strings = tokens
    if len(triddef.strings) > 0:
        triddef.checkstrings = True
    else:
        triddef.checkstrings = False

    #write the def - finally!
    if refine:
        def_filename = olddeffilename
    else:
        def_filename = "newtype.trid.xml"
    write_triddef(triddef, def_filename)



if __name__ == "__main__":
    main()
