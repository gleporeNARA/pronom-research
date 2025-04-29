import os
import pygame

from pygame.locals import *

	
screen = pygame.display.set_mode((800,600), HWSURFACE|DOUBLEBUF|FULLSCREEN)
background = pygame.Surface(screen.get_size())
background.fill((255,255,255))
image = pygame.image.load("background.png")
background.blit(image, (0,0))
pygame.display.flip()

            
while 1:
		pygame.event.pump()
		keyinput = pygame.key.get_pressed()
		if keyinput[K_ESCAPE] or pygame.event.peek(QUIT):
            		break