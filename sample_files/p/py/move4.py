import os
import pygame
import pygame.image
from pygame.locals import *

screen = pygame.display.set_mode((800,600), HWSURFACE|DOUBLEBUF)
background = pygame.Surface(screen.get_size())
background.fill((255,255,255))
#define images
card1_sprite_file = os.path.join('', 'hawk.png')
card2_sprite_file = os.path.join('', 'tiger.png')
card3_sprite_file = os.path.join('', 'octopus.png')
card4_sprite_file = os.path.join('', 'resource.png')
card1 = pygame.image.load(card1_sprite_file)
card1_strength = 4
card2 = pygame.image.load(card2_sprite_file)	
card2_strength = 5
card3 = pygame.image.load(card3_sprite_file)
card4 = pygame.image.load(card4_sprite_file)	
card1_sprite_position = card1.get_rect()
card2_sprite_position = card2.get_rect()
card3_sprite_position = card3.get_rect()
card4_sprite_position = card4.get_rect()
card1_default_top = 375
card1_default_left = 5
card2_default_top = 375
card2_default_left = 155
card3_default_top = 375
card3_default_left = 305
card4_default_top = 375
card4_default_left = 455
card1_sprite_position.top = card1_default_top
card1_sprite_position.left = card1_default_left
card2_sprite_position.top = card2_default_top
card2_sprite_position.left = card2_default_left
card3_sprite_position.top = card3_default_top
card3_sprite_position.left = card3_default_left
card4_sprite_position.top = card4_default_top
card4_sprite_position.left = card4_default_left
global card1_moved, card2_moved, card3_moved, card4_moved
card1_moved = 0
card2_moved = 0
card3_moved = 0
card4_moved = 0

# Define battle structure
def battle(card1_moved, card2_moved):
	
	if (card1_moved == 1):
		attacker = card1_strength
		attacker_pos = card1_sprite_position
	if (card2_moved == 1):
		defender = card2_strength 
		defender_pos = card2_sprite_position
		
		if (attacker > defender):
			attacker_pos.left = 0
			attacker_pos.top = 0
			defender_pos.top = card2_default_top
			defender_pos.left = card2_default_left
			screen.blit(background, (0,0))
			pygame.display.flip() 
		else:
			defender_pos.left = 0
			defender_pos.top = 0
			attacker_pos.top = card1_default_top
			attacker_pos.left = card1_default_left
			screen.blit(background, (0,0))
			pygame.display.flip() 
			
def main():
	pygame.init()	

	
#Set it's initial position
	

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
			card1_moved = 1			
			card2_moved = 0
			
		if keyinput[K_2]:#play second card
			card2_sprite_position.left = 625
			card2_sprite_position.top = 30
			card2_moved = 0
			card2_moved = 1
		if keyinput[K_3]:#play third card
			card3_sprite_position.left = 625
			card3_sprite_position.top = 30	
			card3_moved = 1
			
		if keyinput[K_4]:#play fourth card
			card4_sprite_position.left = 625
			card4_sprite_position.top = 30		
			card4_moved = 1
			
		if keyinput[K_0]: #0 resets any move made
			card1_sprite_position.top = card1_default_top
			card1_sprite_position.left = card1_default_left
			card2_sprite_position.top = card2_default_top
			card2_sprite_position.left = card2_default_left
			card3_sprite_position.top = card3_default_top
			card3_sprite_position.left = card3_default_left
			card4_sprite_position.top = card4_default_top
			card4_sprite_position.left = card4_default_left
			card1_moved = 0
			card2_moved = 0
			card3_moved = 0
			card4_moved = 0
			
		if keyinput[K_6]: #6 monsters attack!
				
				battle (card1_moved, card2_moved)
		
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