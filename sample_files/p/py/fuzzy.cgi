#!/usr/bin/python -u 
import operator
import struct
import sys
import difflib
import re
import cgi
import urllib
import cgitb
cgitb.enable()
import csv
import codecs



form = cgi.FieldStorage() # instantiate only once!
print """\
Content-Type: text/html\n
<html><body>
<TEXTAREA NAME="name", ROWS=100, COLS=70> 
""" 
lncol = form.getfirst('lncol', 'empty')
fncol = form.getfirst('fncol', 'empty')
ccol = form.getfirst('ccol', 'empty')
delim = form.getfirst('delim', 'empty')
tcol = form.getfirst('tcol', 'empty')

lncol_val = cgi.escape(lncol)
lncol_val = int(lncol)

fncol = cgi.escape(fncol)

m_obj = re.search(r"(\d+)", fncol)
if m_obj:
    fncol_val = int(fncol)
    fncol_val2=fncol_val-1
else:
  fncol_val2=fncol

ccol = cgi.escape(ccol)
ccol_val = int(ccol)

delim = cgi.escape(delim)

tcol = cgi.escape(tcol)
tcol_val = int(tcol)


lncol_val2=lncol_val-1
ccol_val2=ccol_val-1
tcol_val2=tcol_val-1

memfile = open('../striders/members.csv', 'r').readlines() 
resfile = open('../striders/results.csv', 'r').readlines()
parfile = open('../striders/results_parsed.txt', 'w')

fncol = fncol_val2
lncol = lncol_val2
ccol = ccol_val2
tdir = 'r'
tcol = tcol_val2
rawfile = open('../striders/results_fuzzy.txt', 'w')
rawfile.write('Starting process.\r\n')
	
LNKEYS = []
FNKEYS = []
CITYKEYS = []

# build member lookup keys
for line in memfile:
	lname = line.split(',')[0]
	lname = lname.title()
	rawfile.write('lname is.\r\n')
	rawfile.write(lname)
	#print lname
	LNKEYS.append(lname)
	fname = line.split(',')[1]
	fname = fname.title()
	FNKEYS.append(fname)
	city = line.split(',')[2]
	#if city has more than one word, just keep the first word
	city = city.split(' ')[0]
	#if city is an abbreviation, lose the period
	city = city.split('.')[0]
	city = city.title()
	CITYKEYS.append(city)

for line in resfile:
	if fncol == ' ':
		fullname = line.split(delim)[lncol]
		#print fullname
		try:
			fname = fullname.split()[0]
			lname = fullname.split()[1]
		except:
			rawfile.write('---------------------------------------------------\r\n')
			rawfile.write('Skipping Line:\r\n')
			rawfile.write(line)
			rawfile.write('\r\n')
			continue

	elif fncol == ',':
		fullname = line.split(delim)[lncol]
		#print fullname
		try:
			fname = fullname.split(',')[1]
			lname = fullname.split(',')[0]
		except:
			rawfile.write('---------------------------------------------------\r\n')
			rawfile.write('Skipping Line:\r\n')
			rawfile.write(line)
			rawfile.write('\r\n')
			continue
	else:
		try:
			lname = line.split(delim)[lncol]
			fname = line.split(delim)[fncol]
			#print lname
		except:
			# probably a blank line, so don't write it out
			continue
	
	try:
		fname = fname.split()[0]
		lname = lname.split()[0]
	except:
		rawfile.write('---------------------------------------------------\r\n')
		rawfile.write('Skipping Line:\r\n')
		rawfile.write(line)
		rawfile.write('\r\n')
		continue

	fname = fname.split(',')[0]
	fname = fname.title()
	lname = lname.split(',')[0]
	lname = lname.title()

	chip = line.split(delim)[tcol]
	try:
		chip = chip.split()[0]
	except:
		chip = 'None'
		
	if ccol != -1:
		city = line.split(delim)[ccol]
		if len(city) == 1:
			#assume we've grabbed a middle initial and get the next field
			city = line.split(delim)[ccol+1]
		try:
			#if city has more than one word, just keep the first word
			city = city.split()[0]
			#if city is an abbreviation, lose the period
			city = city.split('.')[0]
			#if city has a comma and the file is space delimited, lose the comma
			city = city.split(',')[0]
			city = city.title()
		except:
			city = ''
	else:
		city = ''
	
	if lname in LNKEYS:
		lnstart = LNKEYS.index(lname)
		lnstop = lnstart + LNKEYS.count(lname)
		if fname in FNKEYS[lnstart:lnstop]:
			fnstart = lnstart + FNKEYS[lnstart:lnstop].index(fname)
			fnstop = fnstart + FNKEYS[lnstart:lnstop].count(fname)
			if (city in CITYKEYS[fnstart:fnstop]) or (len(city) == 0):
				if len(' '.join([fname, lname])) < 8:
					output = '\t\t\t'.join([' '.join([fname, lname]), chip])
				elif len(' '.join([fname, lname])) < 16:
					output = '\t\t'.join([' '.join([fname, lname]), chip])
				else:
					output = '\t'.join([' '.join([fname, lname]), chip])
				print output
				#print "<br>"
				parfile.write(output)
		else:
			fnclose = difflib.get_close_matches(fname, FNKEYS[lnstart:lnstop], 1, 0.80)
			if len(fnclose) > 0:
				fnclose = fnclose[0]
				fnstart = lnstart + FNKEYS[lnstart:lnstop].index(fnclose)
				fnstop = fnstart + FNKEYS[lnstart:lnstop].count(fnclose)
				if (city in CITYKEYS[fnstart:fnstop]) or (len(city) == 0):
					rawfile.write('---------------------------------------------------\r\n')
					rawfile.write('Potential Hit 100-60 Match:\r\n')
					rawfile.write(line)
					rawfile.write('\r\n')
					if len(' '.join([fnclose, lname])) < 8:
						output = '\t\t\t'.join([' '.join([fnclose, lname]), chip])
					elif len(' '.join([fnclose, lname])) < 16:
						output = '\t\t'.join([' '.join([fnclose, lname]), chip])
					else:
						output = '\t'.join([' '.join([fnclose, lname]), chip])
					print 'Potential hit 100-60 match ' + fname  + " " + lname
					print output
					#print "<br>"
					parfile.write(output)
					rawfile.write(output)
	
	else:
		lnclose = difflib.get_close_matches(lname, LNKEYS, 1, 0.8)
		if len(lnclose) > 0:
			lnclose = lnclose[0]
			lnstart = LNKEYS.index(lnclose)
			lnstop = lnstart + LNKEYS.count(lnclose)
			if fname in FNKEYS[lnstart:lnstop]:
				fnstart = lnstart + FNKEYS[lnstart:lnstop].index(fname)
				fnstop = fnstart + FNKEYS[lnstart:lnstop].count(fname)
				if (city in CITYKEYS[fnstart:fnstop]) or (len(city) == 0):
					rawfile.write('---------------------------------------------------\r\n')
					rawfile.write('Potential Hit 80-100 Match:\r\n')
					rawfile.write(line)
					rawfile.write('\r\n')
					if len(' '.join([fname, lnclose])) < 8:
						output = '\t\t\t'.join([' '.join([fname, lnclose]), chip])
					elif len(' '.join([fname, lname])) < 16:
						output = '\t\t'.join([' '.join([fname, lnclose]), chip])
					else:
						output = '\t'.join([' '.join([fname, lnclose]), chip])
					print 'Potential hit 80-100 match ' + fname  + " " + lname
					print output
					#print "<br>"
					parfile.write(output)
					rawfile.write(output)
			else:
				fnclose = difflib.get_close_matches(fname, FNKEYS[lnstart:lnstop], 1, 0.8)
				if len(fnclose) > 0:
					fnclose = fnclose[0]
					fnstart = lnstart + FNKEYS[lnstart:lnstop].index(fnclose)
					fnstop = fnstart + FNKEYS[lnstart:lnstop].count(fnclose)
					if (city in CITYKEYS[fnstart:fnstop]) or (len(city) == 0):
						rawfile.write('---------------------------------------------------\r\n')
						rawfile.write('Potential Hit 60-80 Match:\r\n')
						rawfile.write(line)
						rawfile.write('\r\n')
						if len(' '.join([fnclose, lnclose])) < 8:
							output = '\t\t\t'.join([' '.join([fnclose, lnclose]), chip])
						elif len(' '.join([fnclose, lname])) < 16:
							output = '\t\t'.join([' '.join([fnclose, lnclose]), chip])
						else:
							output = '\t'.join([' '.join([fnclose, lnclose]), chip])
						print 'Potential hit 60-80 match ' + fname + " " + lname
						print output
						
						parfile.write(output)
						rawfile.write(output)

parfile.close()
rawfile.close()	

print "</TEXTAREA>"
print "?>"
