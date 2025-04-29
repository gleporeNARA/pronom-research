import os
import pygame
import pygame.image
from pygame.locals import *
import random
pygame.init()
screen = pygame.display.set_mode((800,600), HWSURFACE|DOUBLEBUF)
backgroundimg = pygame.image.load("background.png").convert()
screen.blit(backgroundimg, (0,0))
global start_time, start_strength
start_strength = 0
start_intelligence = 0
start_demeanor=0
start_time = 0
start_mat = 0
start_comp = 0
start_dev = 0
total_strength = 0
total_intelligence = 0
total_demeanor=0
total_comp = 100
total_mat = 100
total_dev = 100
play_area_x = 583
play_area_y = 143
card_width = 100
card_height = 140
deal_area_y = 398
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
def counters():
		
	#backgroundimg = pygame.image.load("background.png").convert()
	#screen.blit(backgroundimg, (0,0))
	font = pygame.font.Font("/usr/share/fonts/ttf/western/a_d_mono.ttf", 14)
	text = font.render("50", 1, (155,155,155))
	screen.blit(text, (70, 90))
		
class Card(pygame.sprite.Sprite):
    def __init__(self, initial_position, imgname, strength, intelligence, demeanor, habitat, name, comp, material, dev, moved):

        pygame.sprite.Sprite.__init__(self)
        self.image, self.rect = load_png(imgname)
        self.rect.topleft = initial_position
        self.strength = strength 
        self.intelligence = intelligence
	self.demeanor=demeanor
        self.habitat = habitat
        self.name = name
        self.comp = comp
        self.mat = material
        self.dev = dev
        self.moved = moved	

	font = pygame.font.Font("/usr/share/fonts/ttf/western/a_d_mono.ttf", 24)
	text = font.render("Proteus", 1, (155,155,155))
	screen.blit(text, (425, 0))
	global boxes
	boxes = pygame.sprite.RenderUpdates()
	slider_strength= boxes.add(UpDownBox([255, 0, 0], [40, 225]))
	slider_intelligence = boxes.add(UpDownBox([255, 0, 0], [140, 225]))
	slider_demeanor = boxes.add(UpDownBox([255, 0, 0], [240, 225]))
	
	#screen.blit(slider_strength, (40, 225)
	pygame.display.flip()

	    
class UpDownBox(pygame.sprite.Sprite):
	def __init__(self, color, initial_position):
		pygame.sprite.Sprite.__init__(self)
		self.image = pygame.Surface([45, 7])
		self.image.fill(color)
		self.rect = self.image.get_rect()
		self.rect.topleft = initial_position

	def update(self, name, strength):
		print strength
		print name
		#print intelligence
		#print demeanor
 		self.rect.top += strength

slider_strength= boxes.add(UpDownBox([255, 0, 0], [40, 225]))
def shuffledeal():

	global  card1, card2, card3, card4, card5, card6, card7, card8, sound_play, sound_deal, card1_dealt, card2_dealt, card3_dealt, card4_dealt, sound_play, sound_deal, sound_attack
	sound_play= pygame.mixer.Sound("play.wav")
	sound_deal= pygame.mixer.Sound("deal.wav")
	sound_attack=pygame.mixer.Sound("attack.wav")
	#sound_deal.play()
	
	screen.blit(screen, (0,0))
	card1 = Card((11,deal_area_y), 'bear.png', -10, -5, 10, "air", "hawk", -15,0,0, 0)
	card2 = Card((155,deal_area_y), 'deer.png', 10, 15, -20, "land", "tiger", 0, -15,0,0)
	card3 = Card((295,deal_area_y), 'elephant.png', -10, -10, -20, "water", "octopus", 0, 0, -10, 0)
	card4 = Card((438,deal_area_y), 'fox.png', 10, 10, -20, "water", "resource", 10, 10, 10, 0)
	card5 = Card((11,deal_area_y), 'gazelle.png', -10, -5, 10, "air", "hawk", -15,0,0, 0)
	card6 = Card((155,deal_area_y), 'gorilla.png', 10, 15, 20, "land", "tiger", 0, -15,0,0)
	card7 = Card((295,deal_area_y), 'greyhound.png', -10, 10, -20, "water", "octopus", 0, 0, -10, 0)
	card8 = Card((438,deal_area_y), 'shark.png', 10, 0, 5, "space", "resource", 10, 10, 10, 0)
	card9 = Card((11,deal_area_y), 'warthog.png', -10, -5, 10, "air", "hawk", -15,0,0, 0)
	card10 = Card((155,deal_area_y), 'wolf.png', 10, 15, -20, "land", "tiger", 0, -15,0,0)
	card11 = Card((295,deal_area_y), 'snakehead.png', -10, -10, -20, "water", "octopus", 0, 0, -10, 0)
	card12 = Card((438,deal_area_y), 'ostrich.png', 10, 10, -20, "water", "resource", 10, 10, 10, 0)
	card13 = Card((11,deal_area_y), 'python.png', -10, -5, 10, "air", "hawk", -15,0,0, 0)
	card14 = Card((155,deal_area_y), 'tiger.png', 10, 15, 20, "land", "tiger", 0, -15,0,0)
	card15 = Card((295,deal_area_y), 'coopershawk.png', -10, 10, -20, "water", "octopus", 0, 0, -10, 0)
	
	
	card_deck = [card1, card2, card3, card4, card5, card6, card7, card8, card9, card10, card11, card12, card13, card14, card15]
	random.shuffle(card_deck)
	card1_dealt = card_deck[0]
	card2_dealt = card_deck[1]
	card3_dealt = card_deck[2]
	card4_dealt = card_deck[3]
	
	screen.blit(card1_dealt.image, card1.rect)
	screen.blit(card2_dealt.image, card2.rect)
	screen.blit(card3_dealt.image, card3.rect)
	screen.blit(card4_dealt.image, card4.rect)
	pygame.display.flip()
	#print "made it to end of shuffle"
def move_box(name, strength):
	
    	for b in boxes:
			boxes.update(name, strength)
   			rectlist = boxes.draw(screen)
    			pygame.display.update(rectlist)
    			boxes.clear(screen, backgroundimg)
			screen.blit(b.image, b.rect)
			
def play():
	global moves_left
	moves_left = 50
#Ok, ESC not pressed, check for keys...
	while 1:
		pygame.event.pump()
		keyinput = pygame.key.get_pressed()
		#event = pygame.event.get([KEYDOWN])
		if keyinput[K_ESCAPE] or pygame.event.peek(QUIT):
            		break
    		
		for event in pygame.event.get():
			if event.type is KEYDOWN and event.key == K_1: #play first card
                		card1_dealt.rect.topleft = (play_area_x,play_area_y)
				screen.fill ((0,0,0), (8,deal_area_y, card_width, card_height))
				screen.blit(card1_dealt.image, card1_dealt.rect.topleft)
				card1_dealt.moved = 1
				moves_left = moves_left -1
				move_box(slider_strength, card1_dealt.strength)

pygame.display.update()

def main():
	pygame.init()
	counters()
	shuffledeal()
	play()
	pygame.mixer.init()	
if __name__ == '__main__':
    
    main()