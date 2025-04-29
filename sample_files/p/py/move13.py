import os
import pygame
import pygame.image
from pygame.locals import *
import random
	
screen = pygame.display.set_mode((800,600), HWSURFACE|DOUBLEBUF)
background = pygame.Surface(screen.get_size())
background.fill((255,255,255))

global start_time, start_strength
start_strength = 0
start_time = 0
start_mat = 0
start_comp = 0
start_dev = 0
start_intelligence = 0
total_strength = 0
total_intelligence = 0
total_comp = 100
total_mat = 100
total_dev = 100
moves_left = 50


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
        self.mat = material
        self.dev = dev
        self.moved = moved

class Slider(pygame.sprite.Sprite):
    def __init__(self, colour, xheight, yheight):
        pygame.sprite.Sprite.__init__(self)
        self.rect = pygame.Rect((0,0,95,5)) #size of slider 100px by 5 px
        self.image = pygame.Surface((xheight,yheight))
        self.image.fill(colour) 
                
def counters():
	font = pygame.font.Font(None, 24)
	text = font.render("Proteus", 1, (0, 0, 0))
	background.blit(text, (350, 0))
	font = pygame.font.Font(None, 24)
	text = font.render("Moves Remaining: ", 1, (0, 0, 0))
	background.blit(text, (610, 0))
	text = font.render("Strength", 1, (0, 0, 0))
	background.blit(text, (65, 15))
	text = font.render("Intelligence", 1, (0, 0, 0))
	background.blit(text, (155, 15))
	text = font.render("Computation", 1, (0, 0, 0))
	background.blit(text, (625,435))
	text = font.render("Materials", 1, (0, 0, 0))
	background.blit(text, (625,495))
	text = font.render("Devices", 1, (0, 0, 0))
	background.blit(text, (625,545))
	pygame.draw.line (background, (0,0,0), (50,20), (50,300), 2)
	pygame.draw.line (background, (0,0,0), (150,20), (150,300), 2) 
	pygame.draw.line (background, (0,0,0), (250,20), (250,300), 2)
	pygame.draw.line (background, (0,0,0), (350,20), (350,300), 2) 
	pygame.draw.line (background, (0,0,0), (450,20), (450,300), 2) 
	
	pygame.draw.line (background, (0,0,0), (625,425), (790,425), 2)
	pygame.draw.line (background, (0,0,0), (625,475), (790,475), 2)
	pygame.draw.line (background, (0,0,0), (625,525), (790,525), 2)
	pygame.draw.line (background, (0,0,0), (625,575), (790,575), 2) 
	
	
	
	pygame.display.flip()

# Define battle structure
def add(card1_strength, card2_strength, card3_strength, card4_strength, card1_intelligence, card2_intelligence, card3_intelligence, card4_intelligence, card1_moved, card2_moved, card3_moved, card4_moved, card1_name, card2_name, card3_name, card4_name, card1_comp, card2_comp, card3_comp, card4_comp, card1_mat, card2_mat, card3_mat, card4_mat, card1_dev, card2_dev, card3_dev, card4_dev):
	
	global total_strength, total_intelligence, total_comp, total_dev, total_mat
	slider_strength = Slider((255,0,0), 95, 5) #color of slider
	slider_intelligence = Slider((0,255,0), 95, 5) #color of slider
	slider_comp = Slider((255,100,0), 5, 50) #color of slider, plus height and width
	slider_mat = Slider((255,255,0),5, 50) #color of slider
	slider_dev = Slider((255,0,255),5, 50) #color of slider
	
	if (card1_moved == 1):
		total_strength = total_strength + start_strength + card1_strength
		total_intelligence = total_intelligence + start_intelligence + card1_intelligence
		total_comp = total_comp + start_comp + card1_comp
		total_mat = total_mat + start_mat + card1_mat
		total_dev = total_dev + start_dev + card1_dev
	if (card2_moved == 1):
		total_strength = total_strength + start_strength + card2_strength
		total_intelligence = total_intelligence + start_intelligence + card2_intelligence
		total_comp = total_comp + start_comp + card2_comp
		total_mat = total_mat + start_mat + card2_mat
		total_dev = total_dev + start_dev + card2_dev
	if (card3_moved == 1):
		total_strength = total_strength + start_strength + card3_strength
		total_intelligence = total_intelligence + start_intelligence + card3_intelligence
		total_comp = total_comp + start_comp + card3_comp
		total_mat = total_mat + start_mat + card3_mat
		total_dev = total_dev + start_dev + card3_dev
	if (card4_moved == 1):
		total_strength = total_strength + start_strength + card4_strength
		total_intelligence = total_intelligence + start_intelligence + card4_intelligence
		total_comp = total_comp + start_comp + card4_comp
		total_mat = total_mat + start_mat + card4_mat
		total_dev = total_dev + start_dev + card4_dev
		
	default_strength_height=50	
	default_intelligence_height=60
	default_comp_height=600
	default_mat_height=600
	default_dev_height=600
	#remove_strength_slider = default_strength_height + total_strength
	#print remove_strength_slider
	#background.fill ((0, 255, 255), (53, remove_strength_slider, 95, 5))
	
	background.blit(slider_strength.image, (53,(default_strength_height + total_strength)))	
	background.blit(slider_intelligence.image, (153,(default_intelligence_height + total_intelligence)))
	
	background.blit(slider_comp.image, ((default_comp_height + total_comp),425))
	background.blit(slider_mat.image, ((default_mat_height + total_mat), 475))
	background.blit(slider_dev.image, ((default_dev_height + total_dev), 525))

	moves_leftstr=str(int(moves_left))	
	total_intelligencestr=str(int(total_intelligence))
	total_strengthstr=str(int(total_strength))
	total_compstr=str(int(total_comp))
	total_matstr=str(int(total_mat))
	total_devstr=str(int(total_dev))
	
	background.fill ((255, 255, 255), (750, 0, 50, 30))#clear moves area
	background.fill ((255, 255, 255), (65, 35, 50, 20))#clear strength area
	background.fill ((255, 255, 255), (155, 35, 50, 20))#clear intelligence area
	background.fill ((255, 255, 255), (755, 435, 50, 20))#clear comp area
	background.fill ((255, 255, 255), (755, 495, 50, 20))#clear mat area
	background.fill ((255, 255, 255), (755, 545, 50, 20))#clear dev area
	
	font = pygame.font.Font(None, 24)
	text = font.render(moves_leftstr, 1, (0, 0, 0))
	background.blit(text, (760, 0))
	font = pygame.font.Font(None, 24)
	text = font.render(total_strengthstr, 1, (0, 0, 0))
	background.blit(text, (65, 35))
	text = font.render(total_intelligencestr, 1, (0, 0, 0))
	background.blit(text, (155, 35))
	text = font.render(total_compstr, 1, (0, 0, 0))
	background.blit(text, (755,435))
	text = font.render(total_matstr, 1, (0, 0, 0))
	background.blit(text, (755,495))
	text = font.render(total_devstr, 1, (0, 0, 0))
	background.blit(text, (755,545))
	pygame.display.flip()
				
def main():
	
	pygame.init()	
	
	counters()
	shuffledeal()
	pygame.mixer.init()
	sounda= pygame.mixer.Sound("test.wav")
		
#Now "blit" the background and our sprite onto the screen...
def shuffledeal():
	global moves_left
	screen.blit(background, (0,0))
	card1 = Card((5,375), 'hawk.png', 5, -5, "air", "hawk", -10, 0, 0, 0)
	card2 = Card((155,375), 'tiger.png', 15, 15, "land", "tiger", 0, -10, 0, 0)
	card3 = Card((305,375), 'octopus.png', 20, 10, "water", "octopus", 0, 0, -10, 0)
	card4 = Card((455,375), 'resource.png', 0, 0, "space", "resource", 10, 10, 20, 0)
	card5 = Card((5,375), 'hawk1.png', 5, -5, "air", "hawk", -10, 0, 0, 0)
	card6 = Card((155,375), 'tiger1.png', 15, 15, "land", "tiger", 0, -10, 0, 0)
	card7 = Card((305,375), 'octopus1.png', 20, 10, "water", "octopus", 0, 0, -10, 0)
	card8 = Card((455,375), 'resource1.png', 0, 0, "space", "resource", 10, 10, 20, 0)
	card_deck = [card1, card2, card3, card4, card5, card6, card7, card8]
	random.shuffle(card_deck)
	card1_dealt = card_deck[0]
	card2_dealt = card_deck[1]
	card3_dealt = card_deck[2]
	card4_dealt = card_deck[3]
	background.blit(card1_dealt.image, card1.rect)
	background.blit(card2_dealt.image, card2.rect)
	background.blit(card3_dealt.image, card3.rect)
	background.blit(card4_dealt.image, card4.rect)
	
#Now display the screen buffer we've been blitting things to...
	pygame.display.flip()
	
#Infinite loop to keep the window open until ESC or "Close Window" widget is pressed...
	while 1:
		pygame.event.pump()
		keyinput = pygame.key.get_pressed()
		if keyinput[K_ESCAPE] or pygame.event.peek(QUIT):
            		break	

#Ok, ESC not pressed, check for keys...
		for event in pygame.event.get():
			if event.type is KEYDOWN and event.key == K_1: #save it
                                    
				card1_dealt.rect.topleft = (620,180)
				background.fill ((255, 255, 255), (5, 375, 150, 600))
				background.blit(card1_dealt.image, card1_dealt.rect.topleft)
				card1.moved = 1
				moves_left = moves_left -1
			#sounda.play()
			
			if event.type is KEYDOWN and event.key == K_2:#play second card
				card2_dealt.rect.topleft = (620,180)
				background.fill ((255, 255, 255), (620, 180, 150, 210))
				background.blit(card2_dealt.image, card2_dealt.rect)
				card2.moved = 1
				moves_left = moves_left -1
			#sounda.play()
			
			if event.type is KEYDOWN and event.key == K_3:#play third card
				card3_dealt.rect.topleft = (620,180)
				background.fill ((255, 255, 255), (620, 180, 150, 210))
				background.blit(card3_dealt.image, card3_dealt.rect)	
				card3.moved = 1
				moves_left = moves_left -1
			#sounda.play()
			
			if event.type is KEYDOWN and event.key == K_4:#play fourth card
				card4_dealt.rect.topleft = (620,180)
				background.fill ((255, 255, 255), (620, 180, 150, 210))
				background.blit(card4_dealt.image, card4_dealt.rect)
				card4.moved = 1
				moves_left = moves_left -1
			#sounda.play()
			
			if event.type is KEYDOWN and event.key == K_0:#0 resets any move made
				background.fill ((255, 255, 255), (620, 180, 150, 210))
				shuffledeal()
				card1.moved = 0
				card2.moved = 0
				card3.moved = 0
				card4.moved = 0
				pygame.display.flip()
			
			if event.type is KEYDOWN and event.key == K_6: #6 monsters attack!
				add (card1.strength, card2.strength, card3.strength, card4.strength, card1.intelligence, card2.intelligence, card3.intelligence, card4.intelligence, card1.moved, card2.moved, card3.moved, card4.moved, card1.name, card2.name, card3.name, card4.name, card1.comp, card2.comp, card3.comp, card4.comp, card1.mat, card2.mat, card3.mat, card4.mat, card1.dev, card2.dev, card3.dev, card4.dev)
				background.fill ((255, 255, 255), (620, 180, 150, 210))
				background.fill ((255, 255, 255), (0, 375, 620, 310))
				shuffledeal()
				card1.moved = 0
				card2.moved = 0
				card3.moved = 0
				card4.moved = 0
		
# In case changes were made to the position, redraw everything in it's new position...
		screen.blit(background, (0,0))
		
		pygame.display.flip() 
	
# So we can run straight from the CLI...
if __name__ == '__main__':
    
    main()
    