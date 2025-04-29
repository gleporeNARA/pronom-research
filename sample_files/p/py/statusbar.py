#!/usr/bin/env python
"""
This is a status bar class for things like health, time, progress, etc.

Example usage:
	player1Status = StatusBar( player1, (100,500,200,50) )
	GuiSpriteGroup.add( player1Status )
"""
__author__ = "Shandy Brown (shandy at geeky dizzle net)"
__copyright__ = "Copyright Shandy Brown"
__version__ = "1.6"
__license__ = "Public Domain"

#Import Modules
import pygame

red = (220,0,0)
black = (0,0,0)

#-----------------------------------------------------------------------------
def load_png(name):
	"""Handy function to load a PNG.  Stolen from Chimp Tutorial.
	Expects PNG files to be in a subdirectory named data/"""

	import os
	fullname = os.path.join('data', name)
	try:
		image = pygame.image.load(fullname)
		if image.get_alpha is None:
			image = image.convert()
		else:
			image = image.convert_alpha()
	except pygame.error, message:
		print 'Cannot load image:', fullname
		raise SystemExit, message
	return image, image.get_rect()

#-----------------------------------------------------------------------------
class StatusBar(pygame.sprite.Sprite):
	"""status bar to track health, or some other attribute"""
	def __init__(self, object, rect, 
	             outlineImg=None, insideImg=None,
	             attrName='health', fullAmt=100,
	             outerColor=black, innerColor=red ):
		"""pass in a rectstyle to tell the statusbar where to appear
		   and pass in an object with a health attribute"""
		pygame.sprite.Sprite.__init__(self) #call Sprite initializer
		rect = pygame.Rect( rect )

		self.outerColor = outerColor
		self.innerColor = innerColor
		self.innerOffset = (5,5)

		#The outer image is usually something like a black outline
		# but it could be more complex, maybe with text or something
		if outlineImg is not None:
			self.backImg, self.rect = load_png(outlineImg)
			self.rect.move_ip( rect.topleft )
		else:
			self.rect = pygame.Rect(rect)
			self.backImg = pygame.Surface( (self.rect.width,
			                              self.rect.height) )
			self.backImg.fill( self.outerColor )

		#The inside image defaults to a red rectangle if no image
		# is given.
		if insideImg is not None:
			self.innerImg, self.innerRect = load_png(insideImg)
			self.innerRect.move_ip( rect.topleft )
			self.innerOffset = (0,0)
		else:
			self.innerRect = self.rect.inflate( -10, -10 )
			self.innerImg = pygame.Surface( (self.innerRect.width,
			                                 self.innerRect.height))
			self.innerImg.fill( self.innerColor )

		self.object= object
		self.attrName = attrName
		self.fullAmt = fullAmt
		self.amt = getattr(self.object, self.attrName)

		#For efficiency, the object can update its status bar ONLY
		# when its health is changed, instead of every tick.
		self.onlyUpdateOnExplicitRequest = 0

		#If the object has an attribute SetStatusBar, assume the object
		#will explicitly call self.UpdateImg()
		#NOTE: this could be made more correct (check interface, 
		#      callable, etc)
		if( hasattr(object, "SetStatusBar") ):
			self.object.SetStatusBar( self )
			self.onlyUpdateOnExplicitRequest = 1

		self.UpdateImg()

	#----------------------------------------------------------------------
	def update(self):
		if self.onlyUpdateOnExplicitRequest :
			return
		self.UpdateImg()

	#----------------------------------------------------------------------
	def UpdateImg(self):
		"""Do all the calculations for how big the bar should be 
		and draw it onto self.image.  This is slightly expensive, so 
		you might want to use self.onlyUpdateOnExplicitRequest"""

		height = self.innerRect.height
		fullWidth  = self.innerRect.width

		#figure out how big the inner bar should be
		amt = getattr(self.object,self.attrName) / float(self.fullAmt)
		width = fullWidth * amt
		if width < 0:
			width = 0

		#convert_alpha() is a quick way to get a copy of the background
		self.image = self.backImg.convert_alpha()

		#blit it to self.image
		self.image.blit( self.innerImg, self.innerOffset,
		                 pygame.Rect( [0,0,width,height] ) )


if __name__ == '__main__': 
	import sys
	from pygame.locals import *

	print "Running statusbar example..."

	#Initialize Everything
	pygame.init()
	screen = pygame.display.set_mode((400, 400))

	#Create The Backgound
	bgsurface = pygame.Surface( (400,400) )
	bgsurface.fill( (150,150,150) )

	#Display The Background
	screen.blit(bgsurface, (0, 0))
	pygame.display.flip()

	#the sprite group for all sprites
	allsprites = pygame.sprite.RenderUpdates()

	#create a couple status bars to track the health of DummyObjs
	class DummyObj: 
		def __init__(self):
			self.health = 100

	thing1 = DummyObj()
	thing2 = DummyObj()

	t1Status = StatusBar( thing1, (10,80,380,50) )
	t2Status = StatusBar( thing2, (10,260,380,50), outerColor=(0,100,0) )

	allsprites.add( [t1Status, t2Status] )

	#Main Loop
	while 1:
		#Handle Input Events
		for event in pygame.event.get():
			if event.type == QUIT:
				sys.exit()
			elif event.type == KEYDOWN and event.key == K_ESCAPE:
				sys.exit()

			elif event.type == KEYDOWN:
				thing1.health -= 1

			elif event.type == MOUSEBUTTONDOWN:
				thing2.health -= 1
			elif event.type == MOUSEMOTION:
				thing2.health -= 1

		#Clear the sprite group
		allsprites.clear( screen, bgsurface )

		#Update all the sprites
		allsprites.update()

		#Draw Everything
		changedRects = allsprites.draw(screen)
		pygame.display.update( changedRects )

