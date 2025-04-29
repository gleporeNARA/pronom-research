#!/usr/bin/python

import pygame, os
from pygame.locals import *

#functions to create our resources
def load_image(name, colorkey=None):
    fullname = os.path.join('/home/knoppix/games/', name)
    try:
        image = pygame.image.load(fullname)
    except pygame.error, message:
        print 'Cannot load image:', fullname
        raise SystemExit, message
    image = image.convert()
    if colorkey is not None:
        if colorkey is -1:
            colorkey = image.get_at((0,0))
        image.set_colorkey(colorkey, RLEACCEL)
    return image, image.get_rect()

def load_sound(name):
    class NoneSound:
        def play(self): pass
    if not pygame.mixer or not pygame.mixer.get_init():
        return NoneSound()
    fullname = os.path.join('data', name)
    try:
        sound = pygame.mixer.Sound(fullname)
    except pygame.error, message:
        print 'Cannot load sound:', fullname
        raise SystemExit, message
    return sound
    
def main():
	# Initialise screen
	pygame.init()
	screen = pygame.display.set_mode((800, 600), FULLSCREEN)
	pygame.display.set_caption('Proteus')

	# Fill background
	background = pygame.Surface(screen.get_size())
	background = background.convert()
	background.fill((250, 250, 250))

	# Display some text
	font = pygame.font.Font(None, 36)
	text = font.render("Proteus", 1, (10, 10, 10))
	#text = font.set_italic(0)
	textpos = text.get_rect()
	textpos.centerx = background.get_rect().centerx
	background.blit(text, textpos)
	
	#Display image
	image = load_image('hawk.jpg')
	#imagerect = image.get_rect()
	#screen.blit(image, 1)
#class Chimp(pygame.sprite.Sprite):
 #   """moves a monkey critter across the screen. it can spin the
  #     monkey when it is punched."""
   # def __init__(self):
  #      pygame.sprite.Sprite.__init__(self) #call Sprite intializer
   #     self.image, self.rect = load_image('chimp.bmp', -1)
    #    screen = pygame.display.get_surface()
     #   self.area = screen.get_rect()
      #  self.rect.topleft = 10, 10
       # self.move = 9
        #self.dizzy = 0	
   	#background.blit(image, textpos)

	# Blit everything to the screen
	screen.blit(background, (0, 0))
	pygame.display.flip()

	# Event loop
	while 1:
		for event in pygame.event.get():
			if event.type == QUIT:
				return

		screen.blit(background, (0, 0))
		pygame.display.flip()


if __name__ == '__main__': main()