import os
import pygame
import pygame.image
from pygame.locals import *

#define images
card1_sprite_file = os.path.join('c:\\temp\\games\\', 'hawk.png')
card2_sprite_file = os.path.join('c:\\temp\\games\\', 'tiger.png')
card3_sprite_file = os.path.join('c:\\temp\\games\\', 'octopus.png')
card4_sprite_file = os.path.join('c:\\temp\\games\\', 'resource.png')

# Open up a display, draw our loaded image onto it -- check for ESC; if pressed, exit...

def main():
#Initialise SDL environment
	pygame.init()	

#Setup a 640x480 screen...
	screen = pygame.display.set_mode((800,600), HWSURFACE|DOUBLEBUF)
	
#Make a "surface" which is the same size as our screen...
	background = pygame.Surface(screen.get_size())

#Make this background surface a white colour (note: R,G,B tuple):
	background.fill((255,255,255))

#Load our sprite:
	card1 = pygame.image.load(card1_sprite_file)
	card2 = pygame.image.load(card2_sprite_file)	
	card3 = pygame.image.load(card3_sprite_file)
	card4 = pygame.image.load(card4_sprite_file)	
	
#Get the initial position of the sprite, 
	card1_sprite_position = card1.get_rect()
	card2_sprite_position = card2.get_rect()
	card3_sprite_position = card3.get_rect()
	card4_sprite_position = card4.get_rect()
	
#default locations
	card1_default_top = 375
	card1_default_left = 5
	card2_default_top = 375
	card2_default_left = 155
	card3_default_top = 375
	card3_default_left = 305
	card4_default_top = 375
	card4_default_left = 455
	
#Set it's position to the middle of our display...
	
	card1_sprite_position.top = card1_default_top
	card1_sprite_position.left = card1_default_left
	card2_sprite_position.top = card2_default_top
	card2_sprite_position.left = card2_default_left
	card3_sprite_position.top = card3_default_top
	card3_sprite_position.left = card3_default_left
	card4_sprite_position.top = card4_default_top
	card4_sprite_position.left = card4_default_left

#Now "blit" the background and our sprite onto the screen...
	screen.blit(background, (0,0))
	screen.blit(card1, card1_sprite_position)
	screen.blit(card2, card2_sprite_position)
	screen.blit(card3, card3_sprite_position)
	screen.blit(card4, card4_sprite_position)
	
#Now display the screen buffer we've been blitting things to...
	pygame.display.flip()
	

#Infinite loop to keep the window open until ESC or "Close Window" widget is pressed...
	while 1:
	
#Get all "Events" that have occurred.
		pygame.event.pump()
	
#Check for keyboard input...
		keyinput = pygame.key.get_pressed()
		
#If ESC or "QUIT" events ocurred, exit...
		if keyinput[K_ESCAPE] or pygame.event.peek(QUIT):
            		break	

#Ok, ESC not pressed, check for cursor keys...
		if keyinput[K_1]:#play first card
			card1_sprite_position.left = 625
			card1_sprite_position.top = 30

		if keyinput[K_2]:#play second card
			card2_sprite_position.left = 625
			card2_sprite_position.top = 30
		
		if keyinput[K_3]:#play third card
			card3_sprite_position.left = 625
			card3_sprite_position.top = 30	

		if keyinput[K_4]:#play fourth card
			card4_sprite_position.left = 625
			card4_sprite_position.top = 30		
			
		if keyinput[K_0]: #0 resets any move made
			card1_sprite_position.top = card1_default_top
			card1_sprite_position.left = card1_default_left
			card2_sprite_position.top = card2_default_top
			card2_sprite_position.left = card2_default_left
			card3_sprite_position.top = card3_default_top
			card3_sprite_position.left = card3_default_left
			card4_sprite_position.top = card4_default_top
			card4_sprite_position.left = card4_default_left
		

# In case changes were made to the position, redraw everything in it's new position...
		screen.blit(background, (0,0))
		screen.blit(card1, card1_sprite_position)
		screen.blit(card2, card2_sprite_position)
		screen.blit(card3, card3_sprite_position)
		screen.blit(card4, card4_sprite_position)
		pygame.display.flip() 

# So we can run straight from the CLI...
if __name__ == '__main__':
    main()