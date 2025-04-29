import os
import pygame
import pygame.image
from pygame.locals import *
	
screen = pygame.display.set_mode((800,600), HWSURFACE|DOUBLEBUF|FULLSCREEN)
background = pygame.Surface(screen.get_size())
background.fill((255,255,255))
#define images
card1_sprite_file = os.path.join('', 'hawk.png')
card2_sprite_file = os.path.join('', 'tiger.png')
card3_sprite_file = os.path.join('', 'octopus.png')
card4_sprite_file = os.path.join('', 'resource.png')
card1 = pygame.image.load(card1_sprite_file)
global card1_strength, card2_strength, card3_strength, card4_strength
card1_strength = "1"
card1_name = "Hawk"
card2_name = "Tiger"
card3_name = "Octopus"
card2 = pygame.image.load(card2_sprite_file)	
card2_strength = "2"
card3 = pygame.image.load(card3_sprite_file)
card3_strength = "3"
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
card1_moved = 0
card2_moved = 0
card3_moved = 0
card4_moved = 0
global start_time
start_time = 0
start_materials = 0
start_comp = 0
start_device = 0

def counters():
	font = pygame.font.Font(None, 24)
	text = font.render("Time Remaining", 1, (0, 0, 0))
	#screen.fill ((250, 250, 250), (0, 300, 300, 25))
	background.blit(text, (640, 10))
	pygame.display.flip()

# Define battle structure
def battle(card1_moved, card2_moved, card3_moved):
	
	global battle_array, text, cardname_array
	battle_array = []
	cardname_array=[]
	if (card1_moved == 1):
		battle_array.append((card1_strength))
		cardname_array.append((card1_name))
	if (card2_moved == 1):
		battle_array.append (card2_strength)
		cardname_array.append((card2_name))
	if (card3_moved == 1):
		battle_array.append (card3_strength) 
		cardname_array.append((card3_name))
	high_strength = max (battle_array)
	#print "high strength is " 
	#print high_strength
	if (high_strength == "3"):
		message = "Octopus wins"
		font = pygame.font.Font(None, 24)
		text = font.render(message, 1, (0, 0, 0))
		screen.fill ((250, 250, 250), (0, 300, 300, 25))
		background.blit(text, (10, 300))
		pygame.display.flip()
	else:
		message = "Octopus loses!"
		font = pygame.font.Font(None, 24)
		text = font.render(message, 1, (0, 0, 0))
		screen.fill ((250, 250, 250), (0, 300, 300, 25))
		background.blit(text, (10, 300))
		pygame.display.flip()
	
	#print 'len(battle_array) =', len(battle_array)
	#print "battle_array is"
	#print battle_array
			
def main():
	pygame.init()	
	counters()
	pygame.mixer.init()
	sounda= pygame.mixer.Sound("test.wav")
	
	
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
		pygame.event.pump()
		keyinput = pygame.key.get_pressed()
		if keyinput[K_ESCAPE] or pygame.event.peek(QUIT):
            		break	

#Ok, ESC not pressed, check for cursor keys...
		if keyinput[K_1]:#play first card
			card1_sprite_position.left = 5
			card1_sprite_position.top = 30
			global card1_moved		
			card1_moved = 1
			sounda.play()
			
		if keyinput[K_2]:#play second card
			card2_sprite_position.left = 155
			card2_sprite_position.top = 30
			global card2_moved
			card2_moved = 1
			
		if keyinput[K_3]:#play third card
			card3_sprite_position.left = 305
			card3_sprite_position.top = 30	
			global card3_moved
			card3_moved = 1
			
		if keyinput[K_4]:#play fourth card
			card4_sprite_position.left = 455
			card4_sprite_position.top = 30	
			global card4_moved	
			card4_moved = 1
			
		if keyinput[K_0]: #0 resets any move made
			background.fill ((250, 250, 250), (0, 300, 300, 25))
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
			pygame.display.flip()
			
		if keyinput[K_6]: #6 monsters attack!
				
				battle (card1_moved, card2_moved, card3_moved)
		
# In case changes were made to the position, redraw everything in it's new position...
		screen.blit(background, (0,0))
		screen.blit(card1, card1_sprite_position)
		screen.blit(card2, card2_sprite_position)
		screen.blit(card3, card3_sprite_position)
		screen.blit(card4, card4_sprite_position)
		#screen.blit(card1_default_top, (400,400))
		pygame.display.flip() 
	
# So we can run straight from the CLI...
if __name__ == '__main__':
    
    main()
    