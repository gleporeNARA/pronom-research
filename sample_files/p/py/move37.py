# TODO LIST #
# Check for totals above 100 and stop moving slider/adding values ###PARTIALLY DONE###
# Don't move sliders past 0 ###PARTIALLY DONE###
# Alert boxes (no more resources) ###PARTIALLY DONE###
# Activate MAIN link, start, exit
# Change image color when resources low/comfort zone near
# Play card on mouse click (no "6") or add "Play" button  ###DONE###
# Win conditions (all resources in comfort zone)  ###PARTIALLY DONE###

import os, pygame, random
import pygame.image
from pygame.locals import *

pygame.init()
screen = pygame.display.set_mode((800,600), HWSURFACE|DOUBLEBUF|FULLSCREEN)
backgroundimg = pygame.image.load("background.png").convert()
screen.blit(backgroundimg, (0,0))

start_strength = 0
start_intelligence = 0
start_habitat = 0
start_demeanor=0
start_ability = 0
start_time = 0
start_mat = 0
start_comp = 0
start_dev = 0
total_strength = 0
total_intelligence = 0
total_habitat = 0
total_demeanor=0
total_ability =0 
total_comp = 100
total_mat = 100
total_dev = 100
play_area_x = 583
play_area_y = 143
card_width = 100
card_height = 140
deal_area_y = 398
slider_img = "bluediamond.png"

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
    def __init__(self, imgname, strength, intelligence, ability, habitat, demeanor, name, comp, material, dev, moved):

        pygame.sprite.Sprite.__init__(self)
        self.image, self.rect = load_png(imgname)
        #self.rect.topleft = initial_position
        self.strength = strength 
        self.intelligence = intelligence
	self.ability =ability
        self.habitat = habitat
	self.demeanor=demeanor
        self.name = name
        self.comp = comp
        self.mat = material
        self.dev = dev
        self.moved = moved

def counters():
	global slider_strength, slider_intelligence, slider_habitat, slider_demeanor, slider_ability, slider_comp, slider_mat, slider_dev 
	
	slider_strength= slider1([40, 230])
	slider_intelligence= slider1([112, 230])
	slider_habitat= slider1([185, 230])
	slider_demeanor= slider1([259, 230])
	slider_ability = slider1( [333, 230])
	slider_comp = slider2([670, 440])
	slider_mat = slider2([670, 400])
	slider_dev = slider2([670, 480])
	draw_sliders = pygame.sprite.RenderPlain((slider_strength, slider_intelligence, slider_habitat, slider_demeanor, slider_ability, slider_comp, slider_mat, slider_dev))
	draw_sliders.draw(screen)#prints sliders to screen
	font = pygame.font.Font(None, 24)
	text = font.render("Proteus", 1, (155,155,155))
	screen.blit(text, (425, 0))
	font = pygame.font.Font(None, 24)
	text = font.render("50", 1, (155,155,155))
	screen.blit(text, (70, 90))
	
	font = pygame.font.Font(None, 18)
	text = font.render("0", 1, (155,155,155))
	screen.blit(backgroundimg, [45, 362, 25, 15], [45, 362, 25, 15])
 	screen.blit(text, (45, 362))
	text = font.render("0", 1, (155,155,155))
	screen.blit(backgroundimg, [115, 362, 20, 15], [115, 362, 20, 15])
	screen.blit(text, (115, 362))
	text = font.render("0", 1, (155,155,155))
	screen.blit(backgroundimg, [185, 362, 20, 15], [185, 362, 20, 15])
	screen.blit(text, (185, 362))
	text = font.render("0", 1, (155,155,155))
	screen.blit(backgroundimg, [265, 362, 20, 15], [265, 362, 20, 15])
	screen.blit(text, (265, 362))
	text = font.render("0", 1, (155,155,155))
	screen.blit(backgroundimg, [333, 362, 20, 15], [333, 362, 20, 15])
	screen.blit(text, (333, 362))
	text = font.render("100", 1, (155,155,155))
	screen.blit(backgroundimg, [755, 440, 25, 15], [755, 440, 25, 15])
	screen.blit(text, (755,440))
	text = font.render("100", 1, (155,155,155))
	screen.blit(backgroundimg, [755, 400, 25, 15], [755, 400, 25, 15])
	screen.blit(text, (755,400))
	text = font.render("100", 1, (155,155,155))
	screen.blit(backgroundimg, [755, 480, 25, 15], [755, 480, 25, 15])
	screen.blit(text, (755,480))

	pygame.display.update()

def add(card1_strength, card2_strength, card3_strength, card4_strength, card1_intelligence, card2_intelligence, card3_intelligence, card4_intelligence, card1_habitat, card2_habitat, card3_habitat, card4_habitat, card1_demeanor, card2_demeanor, card3_demeanor, card4_demeanor, card1_ability, card2_ability, card3_ability, card4_ability, card1_moved, card2_moved, card3_moved, card4_moved, card1_name, card2_name, card3_name, card4_name, card1_comp, card2_comp, card3_comp, card4_comp, card1_mat, card2_mat, card3_mat, card4_mat, card1_dev, card2_dev, card3_dev, card4_dev):
	
	global total_strength, total_intelligence, total_habitat, total_demeanor, total_ability, total_comp, total_dev, total_mat
	
	if (card1_moved == 1):
		total_strength = total_strength + start_strength + card1_strength
		total_intelligence = total_intelligence + start_intelligence + card1_intelligence
		total_habitat = total_habitat + start_habitat + card1_habitat
		total_demeanor = total_demeanor + start_demeanor + card1_demeanor
		total_ability = total_ability + start_ability + card1_ability
		total_comp = total_comp + start_comp + card1_comp
		total_mat = total_mat + start_mat + card1_mat
		total_dev = total_dev + start_dev + card1_dev
	if (card2_moved == 1):
		total_strength = total_strength + start_strength + card2_strength
		total_intelligence = total_intelligence + start_intelligence + card2_intelligence
		total_habitat = total_habitat + start_habitat + card2_habitat
		total_demeanor = total_demeanor + start_demeanor + card2_demeanor
		total_ability = total_ability + start_ability + card2_ability
		total_comp = total_comp + start_comp + card2_comp
		total_mat = total_mat + start_mat + card2_mat
		total_dev = total_dev + start_dev + card2_dev
	if (card3_moved == 1):
		total_strength = total_strength + start_strength + card3_strength
		total_intelligence = total_intelligence + start_intelligence + card3_intelligence
		total_habitat = total_habitat + start_habitat + card3_habitat
		total_demeanor = total_demeanor + start_demeanor + card3_demeanor
		total_ability = total_ability + start_ability + card3_ability
		total_comp = total_comp + start_comp + card3_comp
		total_mat = total_mat + start_mat + card3_mat
		total_dev = total_dev + start_dev + card3_dev
	if (card4_moved == 1):
		total_strength = total_strength + start_strength + card4_strength
		total_intelligence = total_intelligence + start_intelligence + card4_intelligence
		total_habitat = total_habitat + start_habitat + card4_habitat
		total_demeanor = total_demeanor + start_demeanor + card4_demeanor
		total_ability = total_ability + start_ability + card4_ability
		total_comp = total_comp + start_comp + card4_comp
		total_mat = total_mat + start_mat + card4_mat
		total_dev = total_dev + start_dev + card4_dev
		
		
	total_score = total_strength+total_intelligence+total_habitat+total_demeanor+total_ability
	total_scorestr=str(int(total_score))
	moves_leftstr=str(int(moves_left))
	total_strengthstr=str(int(total_strength))	
	total_intelligencestr=str(int(total_intelligence))
	total_habitatstr=str(int(total_habitat))
	total_demeanorstr=str(int(total_demeanor))
	total_abilitystr=str(int(total_ability))
	total_compstr=str(int(total_comp))
	total_matstr=str(int(total_mat))
	total_devstr=str(int(total_dev))
	
	font = pygame.font.Font(None, 24)
	text = font.render(moves_leftstr, 1, (155,155,155))
	screen.blit(backgroundimg, [70, 90, 20, 20], [70, 90, 20, 20])
	screen.blit(text, (70, 90))
	font = pygame.font.Font(None, 18)
	text = font.render(total_strengthstr, 1, (155,155,155))
	screen.blit(backgroundimg, [45, 362, 25, 15], [45, 362, 25, 15])
 	screen.blit(text, (45, 362))
	text = font.render(total_intelligencestr, 1, (155,155,155))
	screen.blit(backgroundimg, [115, 362, 20, 15], [115, 362, 20, 15])
	screen.blit(text, (115, 362))
	text = font.render(total_habitatstr, 1, (155,155,155))
	screen.blit(backgroundimg, [185, 362, 20, 15], [185, 362, 20, 15])
	screen.blit(text, (185, 362))
	text = font.render(total_demeanorstr, 1, (155,155,155))
	screen.blit(backgroundimg, [265, 362, 20, 15], [265, 362, 20, 15])
	screen.blit(text, (265, 362))
	text = font.render(total_abilitystr, 1, (155,155,155))
	screen.blit(backgroundimg, [333, 362, 20, 15], [333, 362, 20, 15])
	screen.blit(text, (333, 362))
	text = font.render(total_compstr, 1, (155,155,155))
	screen.blit(backgroundimg, [755, 440, 25, 15], [755, 440, 25, 15])
	screen.blit(text, (755,440))
	text = font.render(total_matstr, 1, (155,155,155))
	screen.blit(backgroundimg, [755, 400, 25, 15], [755, 400, 25, 15])
	screen.blit(text, (755,400))
	text = font.render(total_devstr, 1, (155,155,155))
	screen.blit(backgroundimg, [755, 480, 25, 15], [755, 480, 25, 15])
	screen.blit(text, (755,480))
	text = font.render(total_scorestr, 1, (155,155,155))
	screen.blit(backgroundimg, [755, 100, 25, 15], [755, 100, 25, 15])
	screen.blit(text, (755,100))
	pygame.display.update()	
	
	#print "made it to end of add"

def shuffledeal():

	global  card1, card2, card3, card4, card5, card6, card7, card8, sound_play, sound_deal, card1_dealt, card2_dealt, card3_dealt, card4_dealt, sound_play, sound_deal, sound_attack
	#sound_play= pygame.mixer.Sound("play.wav")
	#sound_deal= pygame.mixer.Sound("deal.wav")
	#sound_attack=pygame.mixer.Sound("attack.wav")
	#sound_deal.play()
	
	screen.blit(screen, (0,0))
	card1 = Card('bear.png', 5, -1, -1, 0, 0, "Bear", -5,0,0, 0)
	card2 = Card('deer.png', 1, -5, -3, -1, -4, "Deer", 0, 0,-10,0)
	card3 = Card('elephant.png', 7, -1, 1, 4, 2, "Elephant", 0, 0, -15, 0)
	card4 = Card('fox.png', -1, -3, 5, -2, -4, "Fox", 0, -10, 0, 0)
	card5 = Card('gazelle.png', 2, 3, --8, -1, -3, "Gazelle", -10,0,0, 0)
	card6 = Card('gorilla.png', 10, 10, 10, 10, 10, "Gorilla", 0, 0,0,0)
	card7 = Card('greyhound.png', -1,-2, 6, 4, 1, "Greyhound", 0, -5, 0, 0)
	card8 = Card('shark.png', -10, -10, -10, -10, -10, "Shark", -15, 0, 0, 0)
	card9 = Card('warthog.png', -4, -7, -2, 4, 7, "Warthog", 0,0,-10, 0)
	card10 = Card('wolf.png', 3, -3, -8, -4, 2, "Wolf", 0, -15,0,0)
	card11 = Card('snakehead.png', -5,3, 10, 10, 7, "Snakehead", -15, 0, 0, 0)
	card12 = Card('ostrich.png', 4, 3, 8, 4, -7, "Ostrich", 0, -15, 0, 0)
	card13 = Card('python.png', 3,-5, -8, -2, -3, "Python", -20,0,0, 0)
	card14 = Card('tiger.png', 6, -3, 1, 4, 5, "Tiger", 0, 0,-5,0)
	card15 = Card('coopershawk.png', 4, 3, 1, 4, 7, "Coopers' Hawk", 0, 0, -10, 0)
	card16 = Card('compresource.png', 0, 0, 0, 0, 0, "Resource", 10, 0, 0, 0)
	card17 = Card('matresource.png', 0, 0, 0, 0, 0, "Resource", 0, 10, 0, 0)
	card18 = Card('devresource.png', 0, 0, 0, 0, 0, "Resource", 0, 0, 10, 0)
	
	card_deck = [card1, card2, card3, card4, card5, card6, card7, card8, card9, card10, card11, card12, card13, card14, card15, card16, card17, card18]
	random.shuffle(card_deck)
	card1_dealt = card_deck[0]
	card2_dealt = card_deck[1]
	card3_dealt = card_deck[2]
	card4_dealt = card_deck[3]
	card1_dealt.rect.topleft=(11,deal_area_y)
	card2_dealt.rect.topleft=(155,deal_area_y)
	card3_dealt.rect.topleft=(295,deal_area_y)
	card4_dealt.rect.topleft=(438,deal_area_y)
	screen.blit(card1_dealt.image, card1_dealt.rect.topleft)
	screen.blit(card2_dealt.image, card2_dealt.rect.topleft)
	screen.blit(card3_dealt.image, card3_dealt.rect.topleft)
	screen.blit(card4_dealt.image, card4_dealt.rect.topleft)
	global card_collide
	card_collide = [card1_dealt.rect, card2_dealt.rect, card3_dealt.rect, card4_dealt.rect]
	pygame.display.flip()
	#print "made it to end of shuffle"

class caution(pygame.sprite.Sprite):
	def __init__(self, position):
		pygame.sprite.Sprite.__init__(self)
		self.image, self.rect = load_png("reddiamond.png")
		self.rect.topleft = position

def check_score(total_str, total_int, total_habitat, total_demeanor, total_ability):
	if total_str >= 30 and total_int >= 30 and total_habitat >= 30 and total_demeanor >= 30 \
	and total_ability >= 30 and total_comp >= 0 and total_mat >= 0 and total_dev >= 0:
		font = pygame.font.Font(None, 96)
		text = font.render("Winner", 1, (155,155,155))
		screen.blit(text, (350,150))
						
	if total_str <= -100 or total_int <= -100 or total_habitat <= -100 \
	or total_demeanor <= -100 or total_ability <= -100:
		font = pygame.font.Font(None, 96)
		text = font.render("Loser", 1, (155,155,155))
		screen.blit(text, (350,150))

	if total_comp <= 0 or total_mat <= 0 or total_dev <= 0:
		font = pygame.font.Font(None, 96)
		text = font.render("Loser", 1, (155,155,155))
		screen.blit(text, (350,150))
			
def check_resources(total_comp, total_mat, total_dev):
	
	caution1 = caution([575,520])
	caution2 = caution([600,520])
	caution3 = caution([625,520])

	if total_comp <= 30:
		screen.blit(backgroundimg, caution1.rect, caution1.rect)
		screen.blit(caution1.image, caution1.rect)	
		pygame.display.update()
	else:
		screen.blit(backgroundimg, caution1.rect, caution1.rect)
		pygame.display.update()

	if total_mat <= 30:
		screen.blit(backgroundimg, caution2.rect, caution2.rect)
		screen.blit(caution2.image, caution2.rect)	
		pygame.display.update()
	else:
		screen.blit(backgroundimg, caution2.rect, caution2.rect)
		pygame.display.update()

	if total_dev <= 30:
		screen.blit(backgroundimg, caution3.rect, caution3.rect)
		screen.blit(caution3.image, caution3.rect)	
		pygame.display.update()
	else:
		screen.blit(backgroundimg, caution3.rect, caution3.rect)
		pygame.display.update()
	
class slider1(pygame.sprite.Sprite):
	def __init__(self, initial_position):
		pygame.sprite.Sprite.__init__(self)
		self.image, self.rect = load_png(slider_img)
		self.rect.topleft = initial_position

	def update(self, card, amt):

		screen.blit(backgroundimg, card.rect, card.rect)#remove initial image from screen
		card.rect.top += -amt #move the image in the buffer
		screen.blit(card.image, card.rect) #copy image back to buffer
		pygame.display.update()#reload the image to screen

class slider2(pygame.sprite.Sprite):
	def __init__(self, initial_position):
		pygame.sprite.Sprite.__init__(self)
		self.image, self.rect = load_png(slider_img)
		self.rect.topleft = initial_position

	def update(self, card, amt):

		screen.blit(backgroundimg, card.rect, card.rect)#remove initial image from screen
		card.rect.left += amt #move the image in the buffer
		screen.blit(card.image, card.rect) #copy image back to buffer
		pygame.display.update()#reload the image to screen
						
def move_sliders(card1_moved, card2_moved, card3_moved, card4_moved):
	
	if (card1_moved == 1):
		#print "card1 dealt moved "
		screen.blit(backgroundimg, card1_dealt.rect, card1_dealt.rect)
		slider1.update(slider_strength, slider_strength, card1_dealt.strength)
		slider1.update(slider_intelligence, slider_intelligence, card1_dealt.intelligence)
		slider1.update(slider_habitat, slider_habitat, card1_dealt.habitat)
		slider1.update(slider_demeanor, slider_demeanor, card1_dealt.demeanor)
		slider1.update(slider_ability, slider_ability, card1_dealt.ability)
		slider2.update(slider_comp, slider_comp, card1_dealt.comp)
		slider2.update(slider_mat, slider_mat, card1_dealt.mat)
		slider2.update(slider_dev, slider_dev, card1_dealt.dev)
		card1.moved = 0
	if (card2_moved == 1):
		#print "card2 dealt moved"
		screen.blit(backgroundimg, card2_dealt.rect, card2_dealt.rect)
		slider1.update(slider_strength, slider_strength, card2_dealt.strength)
		slider1.update(slider_intelligence, slider_intelligence, card2_dealt.intelligence)
		slider1.update(slider_habitat, slider_habitat, card2_dealt.habitat)
		slider1.update(slider_demeanor, slider_demeanor, card2_dealt.demeanor)
		slider1.update(slider_ability, slider_ability, card2_dealt.ability)
		slider2.update(slider_comp, slider_comp, card2_dealt.comp)
		slider2.update(slider_mat, slider_mat, card2_dealt.mat)
		slider2.update(slider_dev, slider_dev, card2_dealt.dev)
		card2.moved = 0
	if (card3_moved == 1):
		#print "card3 dealt moved"
		screen.blit(backgroundimg, card3_dealt.rect, card3_dealt.rect)
		slider1.update(slider_strength, slider_strength, card3_dealt.strength)
		slider1.update(slider_intelligence, slider_intelligence, card3_dealt.intelligence)
		slider1.update(slider_habitat, slider_habitat, card3_dealt.habitat)
		slider1.update(slider_demeanor, slider_demeanor, card3_dealt.demeanor)
		slider1.update(slider_ability, slider_ability, card3_dealt.ability)
		slider2.update(slider_comp, slider_comp, card3_dealt.comp)
		slider2.update(slider_mat, slider_mat, card3_dealt.mat)
		slider2.update(slider_dev, slider_dev, card3_dealt.dev)
		card3.moved = 0
	if (card4_moved == 1):
		#print "card3 dealt moved"
		screen.blit(backgroundimg, card4_dealt.rect, card4_dealt.rect)
		slider1.update(slider_strength, slider_strength, card4_dealt.strength)
		slider1.update(slider_intelligence, slider_intelligence, card4_dealt.intelligence)
		slider1.update(slider_habitat, slider_habitat, card4_dealt.habitat)
		slider1.update(slider_demeanor, slider_demeanor, card4_dealt.demeanor)
		slider1.update(slider_ability, slider_ability, card4_dealt.ability)
		slider2.update(slider_comp, slider_comp, card4_dealt.comp)
		slider2.update(slider_mat, slider_mat, card4_dealt.mat)
		slider2.update(slider_dev, slider_dev, card4_dealt.dev)
		card4.moved = 0

def timing():
	time = pygame.time.get_ticks()
	font = pygame.font.Font(None, 18)
	time = time/1000
	timestr=str(int(time))
	text = font.render(timestr, 1, (155,155,155))
	screen.blit(backgroundimg, [455, 280, 25, 15], [455, 280, 25, 15])
	screen.blit(text, (455,280))
	pygame.display.update()	
						
def play():

	global moves_left
	moves_left = 50
#Ok, ESC not pressed, check for keys...
	while 1:
		timing()
		pygame.event.pump()
		keyinput = pygame.key.get_pressed()
		#event = pygame.event.get([KEYDOWN])
		if keyinput[K_ESCAPE] or pygame.event.peek(QUIT):
            		break
    		
		for event in pygame.event.get():
		
			if event.type == MOUSEBUTTONDOWN:
                        	#sound_play.play()
				pos = pygame.mouse.get_pos()
				mouseRect=[[pos[0],pos[1]],[0,0]]
				mouseRect=Rect(mouseRect)
				m=mouseRect.collidelist(card_collide)
						
				if m == 0:
									
					screen.blit(backgroundimg, card1_dealt.rect, card1_dealt.rect)
                			card1_dealt.rect.topleft = (play_area_x,play_area_y)
					screen.blit(card1_dealt.image, card1_dealt.rect.topleft)
					card1_dealt.moved = 1
					moves_left = moves_left -1
					pygame.display.update()
					pygame.time.wait(750)
					add(card1_dealt.strength, card2_dealt.strength, card3_dealt.strength, card4_dealt.strength, card1_dealt.intelligence, card2_dealt.intelligence, card3_dealt.intelligence, card4_dealt.intelligence, card1_dealt.habitat, card2_dealt.habitat, card3_dealt.habitat, card4_dealt.habitat, card1_dealt.demeanor, card2_dealt.demeanor, card3_dealt.demeanor, card4_dealt.demeanor, card1_dealt.ability, card2_dealt.ability, card3_dealt.ability, card4_dealt.ability, card1_dealt.moved, card2_dealt.moved, card3_dealt.moved, card4_dealt.moved, card1_dealt.name, card2_dealt.name, card3_dealt.name, card4_dealt.name, card1_dealt.comp, card2_dealt.comp, card3_dealt.comp, card4_dealt.comp, card1_dealt.mat, card2_dealt.mat, card3_dealt.mat, card4_dealt.mat, card1_dealt.dev, card2_dealt.dev, card3_dealt.dev, card4_dealt.dev)
					move_sliders(card1_dealt.moved, card2_dealt.moved, card3_dealt.moved, card4_dealt.moved)
					#sound_attack.play()
					check_resources(total_comp, total_mat, total_dev)
					check_score(total_strength, total_intelligence, total_habitat, total_demeanor, total_ability)
					shuffledeal()
					pygame.display.update()	
				
				#sound_play.play()
				if m==1:
			
					screen.blit(backgroundimg, card2_dealt.rect, card2_dealt.rect)
                			card2_dealt.rect.topleft = (play_area_x,play_area_y)
					screen.blit(card2_dealt.image, card2_dealt.rect.topleft)
					card2_dealt.moved = 1
					moves_left = moves_left -1
					pygame.display.update()
					pygame.time.wait(750)
					add(card1_dealt.strength, card2_dealt.strength, card3_dealt.strength, card4_dealt.strength, card1_dealt.intelligence, card2_dealt.intelligence, card3_dealt.intelligence, card4_dealt.intelligence, card1_dealt.habitat, card2_dealt.habitat, card3_dealt.habitat, card4_dealt.habitat, card1_dealt.demeanor, card2_dealt.demeanor, card3_dealt.demeanor, card4_dealt.demeanor, card1_dealt.ability, card2_dealt.ability, card3_dealt.ability, card4_dealt.ability, card1_dealt.moved, card2_dealt.moved, card3_dealt.moved, card4_dealt.moved, card1_dealt.name, card2_dealt.name, card3_dealt.name, card4_dealt.name, card1_dealt.comp, card2_dealt.comp, card3_dealt.comp, card4_dealt.comp, card1_dealt.mat, card2_dealt.mat, card3_dealt.mat, card4_dealt.mat, card1_dealt.dev, card2_dealt.dev, card3_dealt.dev, card4_dealt.dev)
					move_sliders(card1_dealt.moved, card2_dealt.moved, card3_dealt.moved, card4_dealt.moved)
					#sound_attack.play()
					check_resources(total_comp, total_mat, total_dev)
					check_score(total_strength, total_intelligence, total_habitat, total_demeanor, total_ability)
					shuffledeal()
					pygame.display.update()	

				#sound_play.play()
				if m==2:
				
					screen.blit(backgroundimg, card3_dealt.rect, card3_dealt.rect)
                			card3_dealt.rect.topleft = (play_area_x,play_area_y)
					screen.blit(card3_dealt.image, card3_dealt.rect.topleft)
					card3_dealt.moved = 1
					moves_left = moves_left -1
					pygame.display.update()
					pygame.time.wait(750)
					add(card1_dealt.strength, card2_dealt.strength, card3_dealt.strength, card4_dealt.strength, card1_dealt.intelligence, card2_dealt.intelligence, card3_dealt.intelligence, card4_dealt.intelligence, card1_dealt.habitat, card2_dealt.habitat, card3_dealt.habitat, card4_dealt.habitat, card1_dealt.demeanor, card2_dealt.demeanor, card3_dealt.demeanor, card4_dealt.demeanor, card1_dealt.ability, card2_dealt.ability, card3_dealt.ability, card4_dealt.ability, card1_dealt.moved, card2_dealt.moved, card3_dealt.moved, card4_dealt.moved, card1_dealt.name, card2_dealt.name, card3_dealt.name, card4_dealt.name, card1_dealt.comp, card2_dealt.comp, card3_dealt.comp, card4_dealt.comp, card1_dealt.mat, card2_dealt.mat, card3_dealt.mat, card4_dealt.mat, card1_dealt.dev, card2_dealt.dev, card3_dealt.dev, card4_dealt.dev)
					move_sliders(card1_dealt.moved, card2_dealt.moved, card3_dealt.moved, card4_dealt.moved)
					#sound_attack.play()
					check_resources(total_comp, total_mat, total_dev)
					check_score(total_strength, total_intelligence, total_habitat, total_demeanor, total_ability)
					shuffledeal()
					pygame.display.update()	
				#sound_play.play()
				if m==3:
			
					screen.blit(backgroundimg, card4_dealt.rect, card4_dealt.rect)
                			card4_dealt.rect.topleft = (play_area_x,play_area_y)
					screen.blit(card4_dealt.image, card4_dealt.rect.topleft)
					card4_dealt.moved = 1
					moves_left = moves_left -1
					pygame.display.update()
					pygame.time.wait(750)
					add(card1_dealt.strength, card2_dealt.strength, card3_dealt.strength, card4_dealt.strength, card1_dealt.intelligence, card2_dealt.intelligence, card3_dealt.intelligence, card4_dealt.intelligence, card1_dealt.habitat, card2_dealt.habitat, card3_dealt.habitat, card4_dealt.habitat, card1_dealt.demeanor, card2_dealt.demeanor, card3_dealt.demeanor, card4_dealt.demeanor, card1_dealt.ability, card2_dealt.ability, card3_dealt.ability, card4_dealt.ability, card1_dealt.moved, card2_dealt.moved, card3_dealt.moved, card4_dealt.moved, card1_dealt.name, card2_dealt.name, card3_dealt.name, card4_dealt.name, card1_dealt.comp, card2_dealt.comp, card3_dealt.comp, card4_dealt.comp, card1_dealt.mat, card2_dealt.mat, card3_dealt.mat, card4_dealt.mat, card1_dealt.dev, card2_dealt.dev, card3_dealt.dev, card4_dealt.dev)
					move_sliders(card1_dealt.moved, card2_dealt.moved, card3_dealt.moved, card4_dealt.moved)
					#sound_attack.play()
					check_resources(total_comp, total_mat, total_dev)
					check_score(total_strength, total_intelligence, total_habitat, total_demeanor, total_ability)
					shuffledeal()
					pygame.display.update()	
					#sound_play.play()

			if event.type is KEYDOWN and event.key == K_6: #6 monsters attack!
					add (card1_dealt.strength, card2_dealt.strength, card3_dealt.strength, card4_dealt.strength, card1_dealt.intelligence, card2_dealt.intelligence, card3_dealt.intelligence, card4_dealt.intelligence, card1_dealt.habitat, card2_dealt.habitat, card3_dealt.habitat, card4_dealt.habitat, card1_dealt.demeanor, card2_dealt.demeanor, card3_dealt.demeanor, card4_dealt.demeanor, card1_dealt.ability, card2_dealt.ability, card3_dealt.ability, card4_dealt.ability, card1_dealt.moved, card2_dealt.moved, card3_dealt.moved, card4_dealt.moved, card1_dealt.name, card2_dealt.name, card3_dealt.name, card4_dealt.name, card1_dealt.comp, card2_dealt.comp, card3_dealt.comp, card4_dealt.comp, card1_dealt.mat, card2_dealt.mat, card3_dealt.mat, card4_dealt.mat, card1_dealt.dev, card2_dealt.dev, card3_dealt.dev, card4_dealt.dev)
					move_sliders(card1_dealt.moved, card2_dealt.moved, card3_dealt.moved, card4_dealt.moved)
					shuffledeal()
					
					pygame.display.update() 
				
screen.blit(screen, (0,0))
pygame.display.update() 

def main():
	pygame.init()
	counters()
	shuffledeal()
	
	play()
	
	pygame.mixer.init()
	#pygame.mouse.set_visible(0)
if __name__ == '__main__':
    
    main()