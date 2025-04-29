import os
import pygame
import pygame.image
from pygame.locals import *
#from box import Box
	
screen = pygame.display.set_mode((800,600), HWSURFACE|DOUBLEBUF)
background = pygame.Surface(screen.get_size())
background.fill((255,255,255))

global start_time, start_strength
start_strength = 0
start_time = 0
start_materials = 0
start_comp = 0
start_device = 0


def load_png(name):
    fullname = os.path.join('', name)
    try:
        image = pygame.image.load(name)
	if image.get_alpha is None:
		print "no alpha"
		image = image.convert()
	else:
		image = image.convert_alpha()
    except pygame.error, message:
        print 'Cannot load image:', name
        raise SystemExit, message
    return image, image.get_rect()
    
class Card(pygame.sprite.Sprite):
    def __init__(self, initial_position, imgname, strength, intelligence, habitat, name, comp, material, dev, moved):

        pygame.sprite.Sprite.__init__(self)
        self.image, self.rect = load_png(imgname)
        self.rect.topleft = initial_position
        self.strength = strength 
        self.intelligence = intelligence
        self.habitat = habitat
        self.name = name
        self.comp = comp
        self.material = material
        self.dev = dev
        self.moved = moved
        
def counters():
	font = pygame.font.Font(None, 24)
	text = font.render("Time Remaining", 1, (0, 0, 0))
	background.blit(text, (640, 10))
	pygame.display.flip()

# Define battle structure
def add(card1_moved, card2_moved, card3_moved, card4_moved, card1_name, card2_name, card3_name, card4_name, card1_strength, card2_strength, card3_strength, card4_strength):
	
	total_strength = 0
	if (card1_moved == 1):
		total_strength = total_strength + start_strength + card1_strength
	if (card2_moved == 1):
		total_strength = total_strength + start_strength + card2_strength
	if (card3_moved == 1):
		total_strength = total_strength + start_strength + card3_strength
	if (card4_moved == 1):
		total_strength = total_strength + start_strength + card4_strength
	print start_strength #0
	print total_strength #1
	total_strength=str(int(total_strength))
	strength1=str(int(card1_strength))
	strength2=str(int(card2_strength))
	strength3=str(int(card3_strength))
	strength4=str(int(card4_strength))
	
	message = total_strength + " wins"
	font = pygame.font.Font(None, 24)
	text = font.render(message, 1, (0, 0, 0))
	screen.fill ((250, 250, 250), (0, 300, 300, 25))
	background.blit(text, (10, 300))
	pygame.display.flip()
	
				
def main():
	
	
	pygame.init()	
	counters()
	pygame.mixer.init()
	sounda= pygame.mixer.Sound("test.wav")
		
#Now "blit" the background and our sprite onto the screen...
	screen.blit(background, (0,0))
	card1 = Card((5,375), 'hawk.png', 1, 1, "air", "hawk", -10, 0, 0, 0)
	card2 = Card((155,375), 'tiger.png', 2, 2, "land", "tiger", 0, -10, 0, 0)
	card3 = Card((305,375), 'octopus.png', 3, 3, "water", "octopus", 0, 0, -10, 0)
	card4 = Card((455,375), 'resource.png', 4, 4, "space", "resource", 0, 20, 0, 0)
	background.blit(card1.image, card1.rect)
	background.blit(card2.image, card2.rect)
	background.blit(card3.image, card3.rect)
	background.blit(card4.image, card4.rect)
	
#Now display the screen buffer we've been blitting things to...
	pygame.display.flip()
	
#Infinite loop to keep the window open until ESC or "Close Window" widget is pressed...
	while 1:
		pygame.event.pump()
		keyinput = pygame.key.get_pressed()
		if keyinput[K_ESCAPE] or pygame.event.peek(QUIT):
            		break	

#Ok, ESC not pressed, check for keys...
		if keyinput[K_1]:#play first card
			card1.rect.topleft = (5,30)
			background.fill ((255, 255, 255), (5, 375, 150, 600))
			background.blit(card1.image, card1.rect.topleft)
			card1.moved = 1
			#font = pygame.font.Font(None, 16)
			#text = font.render((card1.name), 1, (10, 10, 10))
			#textpos = (640,50)
			#background.blit(text, textpos)
			#sounda.play()
			
		if keyinput[K_2]:#play second card
			card2.rect.topleft = (155,30)
			background.fill ((255, 255, 255), (155, 375, 150, 600))
			background.blit(card2.image, card2.rect)
			card2.moved = 1
			
		if keyinput[K_3]:#play third card
			card3.rect.topleft = (305,30)
			background.fill ((255, 255, 255), (305, 375, 150, 600))
			background.blit(card3.image, card3.rect)	
			card3.moved = 1
			
		if keyinput[K_4]:#play fourth card
			card4.rect.topleft = (455,30)
			background.fill ((255, 255, 255), (455, 375, 150, 600))
			background.blit(card4.image, card4.rect)
			card4.moved = 1
			
		if keyinput[K_0]: #0 resets any move made
			background.fill ((255, 255, 255), (0, 0, 640, 600))
			background.blit(card1.image, (5,375))
			background.blit(card2.image, (155,375))
			background.blit(card3.image, (305,375))
			background.blit(card4.image, (455,375))
			card1.moved = 0
			card2.moved = 0
			card3.moved = 0
			card4.moved = 0
			pygame.display.flip()
			
		if keyinput[K_6]: #6 monsters attack!
				
				add (card1.moved, card2.moved, card3.moved, card4.moved, card1.name, card2.name, card3.name, card4.name, card1.strength, card2.strength, card3.strength, card4.strength)
		
# In case changes were made to the position, redraw everything in it's new position...
		screen.blit(background, (0,0))
		
		pygame.display.flip() 
	
# So we can run straight from the CLI...
if __name__ == '__main__':
    
    main()
    