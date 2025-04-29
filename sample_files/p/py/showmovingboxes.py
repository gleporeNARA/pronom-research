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

class Slider(pygame.sprite.Sprite):
	def __init__(self,  image):
		pygame.sprite.Sprite.__init__(self)
		#self.rect = pygame.Rect((0,0,45,3)) #size of slider 100px by 5 px
		self.image, self.rect = load_png(image)
		self.area = screen.get_rect()
	def update(self):
		self.rect.top -= 1
		     
def counters():
		
	#backgroundimg = pygame.image.load("background.png").convert()
	#screen.blit(backgroundimg, (0,0))
	font = pygame.font.Font("/usr/share/fonts/ttf/western/a_d_mono.ttf", 14)
	text = font.render("50", 1, (155,155,155))
	screen.blit(text, (70, 90))
		
	global slider_strength, slider_intelligence,  slider_demeanor, slider_comp, slider_mat, slider_dev
	slider_strength = Slider(('horred.png')) 
	slider_intelligence = Slider(('horred.png')) 
	slider_demeanor = Slider(('horred.png'))
	slider_comp = Slider(('vertblue.png')) 
	slider_mat = Slider(('vertblue.png')) 
	slider_dev = Slider(('vertblue.png')) 
	
	global default_strength_height, default_intelligence_height, default_demeanor_height, default_comp_height, default_mat_height, default_dev_height
	default_strength_height=235	
	default_intelligence_height=235
	default_demeanor_height=235
	default_comp_height=600
	default_mat_height=600
	default_dev_height=600
	#screen.blit(slider_strength.image, (40,(default_strength_height + total_strength)))	
	#screen.blit(slider_intelligence.image, (113,(default_intelligence_height + total_intelligence)))
	#screen.blit(slider_demeanor.image, (260,(default_demeanor_height + total_demeanor)))
	
	screen.blit(slider_comp.image, ((default_comp_height + total_comp),400))
	screen.blit(slider_mat.image, ((default_mat_height + total_mat), 435))
	screen.blit(slider_dev.image, ((default_dev_height + total_dev), 475))

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

	def update(self, name, strength, intelligence, demeanor):
		print strength
		print name
		print intelligence
		print demeanor
 		self.rect.top += strength

def add(card1_strength, card2_strength, card3_strength, card4_strength, card1_intelligence, card2_intelligence, card3_intelligence, card4_intelligence, card1_demeanor, card2_demeanor, card3_demeanor, card4_demeanor, card1_moved, card2_moved, card3_moved, card4_moved, card1_name, card2_name, card3_name, card4_name, card1_comp, card2_comp, card3_comp, card4_comp, card1_mat, card2_mat, card3_mat, card4_mat, card1_dev, card2_dev, card3_dev, card4_dev):
	
	global total_strength, total_intelligence, total_demeanor, total_comp, total_dev, total_mat
	
	
	if (card1_moved == 1):
		total_strength = total_strength + start_strength + card1_strength
		total_intelligence = total_intelligence + start_intelligence + card1_intelligence
		total_demeanor = total_demeanor + start_demeanor + card1_demeanor
		total_comp = total_comp + start_comp + card1_comp
		total_mat = total_mat + start_mat + card1_mat
		total_dev = total_dev + start_dev + card1_dev
	if (card2_moved == 1):
		total_strength = total_strength + start_strength + card2_strength
		total_intelligence = total_intelligence + start_intelligence + card2_intelligence
		total_demeanor = total_demeanor + start_demeanor + card2_demeanor
		total_comp = total_comp + start_comp + card2_comp
		total_mat = total_mat + start_mat + card2_mat
		total_dev = total_dev + start_dev + card2_dev
	if (card3_moved == 1):
		total_strength = total_strength + start_strength + card3_strength
		total_intelligence = total_intelligence + start_intelligence + card3_intelligence
		total_demeanor = total_demeanor + start_demeanor + card3_demeanor
		total_comp = total_comp + start_comp + card3_comp
		total_mat = total_mat + start_mat + card3_mat
		total_dev = total_dev + start_dev + card3_dev
	if (card4_moved == 1):
		total_strength = total_strength + start_strength + card4_strength
		total_intelligence = total_intelligence + start_intelligence + card4_intelligence
		total_demeanor = total_demeanor + start_demeanor + card4_demeanor
		total_comp = total_comp + start_comp + card4_comp
		total_mat = total_mat + start_mat + card4_mat
		total_dev = total_dev + start_dev + card4_dev

	screen.blit(slider_comp.image, ((default_comp_height + total_comp),400))
	screen.blit(slider_mat.image, ((default_mat_height + total_mat), 435))
	screen.blit(slider_dev.image, ((default_dev_height + total_dev), 475))

	moves_leftstr=str(int(moves_left))	
	total_intelligencestr=str(int(total_intelligence))
	total_demeanorstr=str(int(total_demeanor))
	total_strengthstr=str(int(total_strength))
	total_compstr=str(int(total_comp))
	total_matstr=str(int(total_mat))
	total_devstr=str(int(total_dev))
	
	screen.fill ((0,0,0,), (70, 90, 20, 15))#clear moves area
	screen.fill ((0,0,0), (45, 362, 20, 20))#clear strength area
	screen.fill ((0,0,0), (115, 362, 20, 20))#clear intelligence area
	screen.fill ((0,0,0), (265, 362, 20, 20))#clear demeanor area
	screen.fill ((0,0,0), (755,400, 25, 20))#clear comp area
	screen.fill ((0,0,0), (755, 440, 25, 20))#clear mat area
	screen.fill ((0,0,0), (755, 480, 25, 20))#clear dev area
	
	font = pygame.font.Font("/usr/share/fonts/ttf/western/a_d_mono.ttf", 14)
	text = font.render(moves_leftstr, 1, (155,155,155))
	screen.blit(text, (70, 90))
	font = pygame.font.Font("/usr/share/fonts/ttf/western/a_d_mono.ttf", 18)
	text = font.render(total_strengthstr, 1, (155,155,155))
 	screen.blit(text, (45, 362))
	text = font.render(total_intelligencestr, 1, (155,155,155))
	screen.blit(text, (115, 362))
	text = font.render(total_demeanorstr, 1, (155,155,155))
	screen.blit(text, (265, 362))
	text = font.render(total_compstr, 1, (155,155,155))
	screen.blit(text, (755,400))
	text = font.render(total_matstr, 1, (155,155,155))
	screen.blit(text, (755,440))
	text = font.render(total_devstr, 1, (155,155,155))
	screen.blit(text, (755,480))
	pygame.display.flip()	
	#print "made it to end of add"
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
def move_box(name, strength, intelligence, demeanor):
	
    	for b in boxes:
			boxes.update(name, strength, intelligence, demeanor)
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
				move_box(slider_strength, card1_dealt.strength, card1_dealt.intelligence, card1_dealt.demeanor)
		#sound_play.play()
	#print "this far"	
			if event.type is KEYDOWN and event.key == K_2:#play second card
				card2_dealt.rect.topleft = (play_area_x,play_area_y)
				screen.fill ((0,0,0), (152,deal_area_y, card_width, card_height))
				screen.blit(card2_dealt.image, card2_dealt.rect)
				card2_dealt.moved = 1
				moves_left = moves_left -1
				move_box(slider_strength, card2_dealt.strength, card2_dealt.intelligence, card2_dealt.demeanor)
	 	#sound_play.play()
		
			if event.type is KEYDOWN and event.key == K_3:#play third card
				card3_dealt.rect.topleft = (play_area_x,play_area_y)
				screen.fill ((0,0,0), (292,deal_area_y, card_width, card_height))
				screen.blit(card3_dealt.image, card3_dealt.rect)	
				card3_dealt.moved = 1
				moves_left = moves_left -1
				move_box(slider_strength, card3_dealt.strength, card3_dealt.intelligence, card3_dealt.demeanor)
	 	#sound_play.play()
	
			if event.type is KEYDOWN and event.key == K_4:#play fourth card
				card4_dealt.rect.topleft = (play_area_x,play_area_y)
				screen.fill ((0,0,0), (435,deal_area_y, card_width, card_height))
				screen.blit(card4_dealt.image, card4_dealt.rect)
				card4_dealt.moved = 1
				moves_left = moves_left -1
				move_box(slider_strength, card4_dealt.strength, card4_dealt.intelligence, card4_dealt.demeanor)
	 	#sound_play.play()
	
			if event.type is KEYDOWN and event.key == K_0:#0 resets any move made
				screen.fill ((0,0,0), (play_area_x,play_area_y, card_width, card_height))
				screen.fill ((0,0,0), (8,deal_area_y, card_width, card_height))
				screen.fill ((0,0,0), (152,deal_area_y, card_width, card_height))
				screen.fill ((0,0,0), (292,deal_area_y, card_width, card_height))
				screen.fill ((0,0,0), (435,deal_area_y, card_width, card_height))
				shuffledeal()
				card1.moved = 0
				card2.moved = 0
				card3.moved = 0
				card4.moved = 0
				pygame.display.flip()
		
			if event.type is KEYDOWN and event.key == K_6: #6 monsters attack!
				add (card1_dealt.strength, card2_dealt.strength, card3_dealt.strength, card4_dealt.strength, card1_dealt.intelligence, card2_dealt.intelligence, card3_dealt.intelligence, card4_dealt.intelligence, card1_dealt.demeanor, card2_dealt.demeanor, card3_dealt.demeanor, card4_dealt.demeanor, card1_dealt.moved, card2_dealt.moved, card3_dealt.moved, card4_dealt.moved, card1_dealt.name, card2_dealt.name, card3_dealt.name, card4_dealt.name, card1_dealt.comp, card2_dealt.comp, card3_dealt.comp, card4_dealt.comp, card1_dealt.mat, card2_dealt.mat, card3_dealt.mat, card4_dealt.mat, card1_dealt.dev, card2_dealt.dev, card3_dealt.dev, card4_dealt.dev)
				#sound_attack.play()
				screen.fill ((0,0,0), (8,deal_area_y, card_width, card_height))
				screen.fill ((0,0,0), (152,deal_area_y, card_width, card_height))
				screen.fill ((0,0,0), (292,deal_area_y, card_width, card_height))
				screen.fill ((0,0,0), (435,deal_area_y, card_width, card_height))
				screen.fill ((0,0,0), (play_area_x,play_area_y, card_width,card_height))
				shuffledeal()
				card1.moved = 0
				card2.moved = 0
				card3.moved = 0
				card4.moved = 0
			screen.blit(screen, (0,0))
			pygame.display.flip() 
pygame.display.update()

def main():
	pygame.init()
	counters()
	shuffledeal()
	play()
	pygame.mixer.init()	
if __name__ == '__main__':
    
    main()