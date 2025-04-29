#!/usr/bin/python

import pygame, os
from pygame.locals import *
def main():
	# Initialise screen
	pygame.init()
	screen = pygame.display.set_mode((800, 600))
	pygame.display.set_caption('Proteus')

	# Fill background
	background = pygame.Surface(screen.get_size())
	background = background.convert()
	background.fill((150, 250, 250))

	# Display some text
	font = pygame.font.Font(None, 36)
	text = font.render("Proteus", 1, (10, 10, 10))
	#text = font.set_italic(0)
	textpos = text.get_rect()
	textpos.centerx = background.get_rect().centerx
	background.blit(text, textpos)

#player = pygame.image.load('/home/knoppix/games/hawk.png')
if __name__ == '__main__': main()
