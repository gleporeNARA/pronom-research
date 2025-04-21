#!BPY
"""
Name: 'BpyMan 0004'
Blender: 242
Group: 'System'
"""
bpyvers = 0004
print """
BpyMan %s
Originally by SamAdam
Modified for the BPyC by reD_Fox
Original GUI code by Theeth
""" % bpyvers


import urllib, os, Blender, xml.dom.minidom, tarfile
from Blender import sys

if not os.path.exists(sys.join(Blender.Get('scriptsdir'), ".bpyc_download")):
	os.mkdir(sys.join(Blender.Get('scriptsdir'), ".bpyc_download"))
if not os.path.exists(sys.join(Blender.Get('scriptsdir'), ".bpyc_xml")):
	os.mkdir(sys.join(Blender.Get('scriptsdir'), ".bpyc_xml"))


# Custom GUI vars
topheight = 600  
leftheight = 5
startlist = 0
endlist = 29
entryheight = 20
scrollvalue = 5

# creation vars
localarray = remotearray = {}
listoffset = lastdrawn = firstdrawn = 0
ObjectList = []

# gui events
refreshgui, updateall, updateselect, selectall, updatemanager, moveup, movedown = 1,2,3, 4, 5, 7, 8

def compact():
	dirname = sys.join(Blender.Get('scriptsdir'), ".bpyc_xml")
	if (len(os.listdir(dirname)) > 1 and os.path.exists(dirname + sys.sep + "local.xml")) \
		or (len(os.listdir(dirname)) > 0 and not os.path.exists(dirname + sys.sep + "local.xml")):
		filelist = os.listdir(dirname)
		for f in filelist:
			if f[-4:] == ".xml" and f[:-4] != "local":
				try:
					file = open(dirname + sys.sep + f, "r")
					scriptlist = xml.dom.minidom.parse(file)
					file.close()
					script = scriptlist.getElementsByTagName("script")[0]
					if os.path.exists(dirname + sys.sep + "local.xml"):
						scriptid = script.getAttribute("scriptid")
						file = open(sys.join(dirname, "local.xml"), "r")
						try:
							locallist = xml.dom.minidom.parse(file)
							file.close()
						except:
							file.close()
							os.remove(dirname + sys.sep + "local.xml")
						list = locallist.getElementsByTagName("script")
						for node in list:
							if node.getAttribute("scriptid") == scriptid:
								locallist.documentElement.replaceChild(script, node)
								os.remove(dirname + sys.sep + f)
								break
					else:
						file = open(sys.join(dirname, "local.xml"), "w")
						scriptlist.writexml(file)
						file.close()
						os.remove(dirname + sys.sep + f)
				except:
					pass

def getweb(URL):
	URLFile= urllib.urlopen(URL)
	HTML=URLFile.read()
	URLFile.close()
	return HTML
	
def makearrays():
	global localarray, remotearray
	remotearray = {}
	localarray = {}
	remotepage = getweb('http://www.hhofministries.org/bpyc/interface.php?action=getlist')
	scriptlist = xml.dom.minidom.parseString(remotepage)
	scripts = scriptlist.getElementsByTagName("script")
	
	for script in scripts:
		version = script.getElementsByTagName("version")[0]
		scriptname = script.getElementsByTagName("scriptname")[0].firstChild.data
		scriptid = script.getAttribute("scriptid")
		versionid = version.getAttribute("id")
		versionname = version.getElementsByTagName("versionname")[0].firstChild.data
		versionnum = version.getAttribute("number")
		remotearray[scriptid] = [scriptid, scriptname, versionid, versionname, versionnum]
	
	if Blender.Get('scriptsdir') and os.path.exists(sys.join(Blender.Get('scriptsdir'), ".bpyc_xml" + sys.sep + "local.xml")):
		file = open(sys.join(Blender.Get('scriptsdir'), ".bpyc_xml" + sys.sep + "local.xml"), "r")
		scriptlist = xml.dom.minidom.parse(file)
		file.close()
		scripts = scriptlist.getElementsByTagName("script")
		for script in scripts:
			version = script.getElementsByTagName("version")[0]
			version = script.getElementsByTagName("version")[0]
			scriptname = script.getElementsByTagName("scriptname")[0].firstChild.data
			scriptid = script.getAttribute("scriptid")
			versionid = version.getAttribute("id")
			versionname = version.getElementsByTagName("versionname")[0].firstChild.data
			versionnum = version.getAttribute("number")
			localarray[scriptid] = [scriptid, scriptname, versionid, versionname, versionnum]

def installscript(scriptid, versionid):
	if os.path.exists(sys.join(Blender.Get('scriptsdir'), ".bpyc_xml" + sys.sep + "local.xml")):
		localflag = 1
		# Load local XML file
		file = open(sys.join(Blender.Get('scriptsdir'), ".bpyc_xml" + sys.sep + "local.xml"), "r")
		scriptlist = xml.dom.minidom.parse(file)
		scripts = scriptlist.getElementsByTagName("script")
		file.close()
		
		# Remove old versions
		node = ""
		for script in scripts:
			if scriptid == script.getAttribute("scriptid"):
				node = script
				for version in script.getElementsByTagName("version"):
					for file in version.getElementsByTagName("file"):
						filename = sys.join(Blender.Get('scriptsdir'),file.firstChild.data)
						if os.path.exists(filename):
							os.remove(filename)
							dirname = os.path.dirname(filename)
						while (len(os.listdir(dirname)) == 0):
							rmdir(dirname)
							dirname=os.dirname(dirname)
				break
	else:
		localflag = 0
	
	# Extract archive
	filename = sys.join(Blender.Get('scriptsdir'), ".bpyc_download" + sys.sep + versionid + ".tar.gz")
	archive = tarfile.open(filename, "r:gz")
	for tarinfo in archive:
		archive.extract(tarinfo, Blender.Get('scriptsdir'))
	archive.close()
	
	file = open(sys.join(Blender.Get('scriptsdir'), ".bpyc_xml" + sys.sep + versionid + ".xml"), "r")
	newscript = xml.dom.minidom.parse(file)
	file.close()
	file = open(sys.join(Blender.Get('scriptsdir'), ".bpyc_xml" + sys.sep + "local.xml"), "w")
	if not localflag:
		newscript.writexml(file)
	else:
		if node == "":
			scriptlist.documentElement.appendChild(newscript.getElementsByTagName("script")[0])
		else:
			scriptlist.documentElement.replaceChild(newscript.getElementsByTagName("script")[0], node)
		scriptlist.writexml(file)
	file.close
	os.remove(sys.join(Blender.Get('scriptsdir'), ".bpyc_xml" + sys.sep + versionid + ".xml"))

def getscript(script, safe=1): # returns: 1: success 2: fail, no such script or version 3: version already current, won't overwrite
	scriptid = script[0]
	name = script[1]
	if safe and scriptid in localarray and localarray[scriptid][4] >= remotearray[scriptid][4]:
		print name, 'already current'
		return 3
	url = 'http://www.hhofministries.org/bpyc/interface.php?action=getscript&script=' + script[2]
	archive = getweb(url)
	if archive != "":
		print 'getting ' + name
		filename = sys.join(Blender.Get('scriptsdir'), ".bpyc_download" + sys.sep + script[2] + ".tar.gz")
		scriptfile = open(filename, 'wb')
		scriptfile.write(archive)
		scriptfile.close()
		installscript(script[0], script[2])
		return 1
	else:
		return 2
		
def addElement(elem, local, remote, name):
	global ObjectList
	ObjectList.append([elem, Blender.Draw.Create(False), local, remote, name, elem[3]])
		
def removeElement(elem):
	global ObjectList
	ObjectList = [x for x in ObjectList if x[0] != elem]

def checkedElements():
	global ObjectList
	return [x[0] for x in ObjectList if x[1].val]

##############################################

def draw():
	global ObjectList, localarray, remotearray, startlist, endlist, listoffset, scrollvalue, lastdrawn, firstdrawn, entryheight
	Blender.BGL.glClearColor(0.6, 0.6, 0.6, 0.0)
	Blender.BGL.glClear(Blender.BGL.GL_COLOR_BUFFER_BIT)
	Blender.BGL.glColor3f(0,0,0)
	
	y = topheight
	x = leftheight
	
	lastdrawn = firstdrawn = 0
	
	Blender.BGL.glRasterPos2i(x + 20, y+60)
	Blender.Draw.Text('BpyMan 000%s by SamAdam' % bpyvers)
	Blender.BGL.glRasterPos2i(x + 35, y)
	Blender.Draw.Text('Name                     Local  Remote  Status')
	
	Blender.Draw.Button("/\\", moveup, 0, 330, 13,280)
	Blender.Draw.Button("\\/", movedown, 0, 50, 13,280)
	
	Blender.Draw.Button("Update Selected", updateselect, x + 10, y + 20, 100, 20)
	Blender.Draw.Button("Un/Select All", selectall,x + 110, y + 20,80, 20)

	ObjectList.sort()
	listindex = 0
	for elem in ObjectList:
		listindex += 1
		Blender.BGL.glColor3f(0,0,0)
		y -= entryheight
		if listindex > startlist and listindex < endlist:
			if listindex == len(ObjectList):
				lastdrawn = 1
			elif listindex == 1:
				firstdrawn = 1
			elem[1] = Blender.Draw.Toggle("+", 0, x + 12, y + listoffset, 20, entryheight, elem[1].val, "")
			Blender.BGL.glRasterPos2i(x + 35, y + 5 + listoffset)
			Blender.Draw.Text(elem[0][1])
			Blender.BGL.glRasterPos2i(x + 153, y + 5 + listoffset)
			if elem[2] == 0000:
				Blender.Draw.Text('none')
			else:
				Blender.Draw.Text(elem[4])
			Blender.BGL.glRasterPos2i(x + 190, y + 5 + listoffset)
			Blender.Draw.Text(elem[5])
			if elem[3] > elem[2]:
				status = 'OLD'
				Blender.BGL.glColor3f(1,0,0)
			elif elem[3] == elem[2]:
				status = 'current'
				Blender.BGL.glColor3f(0,1,0)
			else:
				status = 'newer'
				Blender.BGL.glColor3f(1,1,0)
				
			Blender.BGL.glRasterPos2i(x + 235, y + 5 + listoffset)
			Blender.Draw.Text(status)
			
			Blender.BGL.glColor3f(0,0,0)
			Blender.BGL.glRasterPos2i(x + 280, y + 5 + listoffset)

def event(evt, val):
	if evt == Blender.Draw.ESCKEY:
		Blender.Draw.Exit()
	if evt in [Blender.Draw.DOWNARROWKEY, Blender.Draw.WHEELDOWNMOUSE]:
		bevent(movedown)
	if evt in [Blender.Draw.UPARROWKEY, Blender.Draw.WHEELUPMOUSE]:
		bevent(moveup)
def bevent(evt):
	global refreshgui, updateselect, ObjectList, selectall, updatemanager, remotearray, localarray, moveup, movedown, listoffset, startlist, endlist
	if evt == updateselect:
		for script in checkedElements():
			getscript(script,remotearray[script[0]])
		makearrays()
		makedrawlist()
		Blender.Draw.Register(draw, event, bevent)
	
	if evt == moveup:
		if not firstdrawn:
			listoffset -= entryheight * scrollvalue
			startlist -= scrollvalue
			endlist -= scrollvalue
			Blender.Draw.Register(draw, event, bevent)
		
	if evt == movedown:
		if not lastdrawn:
			listoffset += entryheight * scrollvalue
			startlist += scrollvalue
			endlist += scrollvalue
			Blender.Draw.Register(draw, event, bevent)
	
	if evt == selectall:
		numselected = 0
		changetoval = 1
		for check in ObjectList:
			if check[1].val:
				numselected +=1
		if numselected == len(ObjectList):
			changetoval = 0
		for script in ObjectList:
			script[1].val = changetoval
		Blender.Draw.Register(draw, event, bevent)
			
	if evt == refreshgui:
		Blender.Draw.Register(draw, event, bevent)


def makedrawlist():
	global localarray, remotearray, ObjectList, refreshgui, updateselect, selectall
	ObjectList = []
	for script in remotearray:
		if localarray.has_key(script[0]):
			local = localarray[script[0]][4]
			name = localarray[script[0]][3]
		else:
			local = 0000
			name = ""
		remote = remotearray[script[0]][4]
		addElement(remotearray[script[0]], local, remote, name)

##############################################

compact()
makearrays()
makedrawlist()
Blender.Draw.Register(draw, event, bevent)