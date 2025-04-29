# TODO LIST #
# Check for totals above 100 and stop moving slider/adding values
# Don't move sliders past 0
# Alert boxes (no more resources)
# Activate MAIN link, start, exit
# Change image color when resources low/comfort zone near
# Play card on mouse click (no "6") or add "Play" button
# Win conditions (all resources in comfort zone)



import os
import pygame
import pygame.image
from pygame.locals import *
import random
pygame.init()
modes = pygame.display.list_modes(16)
if not modes:
	print '16bit not supported'
else:
	print 'Found Resolution:', modes[0]
#pygame.display.set.mode(modes[0], FULLSCREEN, 16)
screen = pygame.display.set_mode(modes[0], HWSURFACE|DOUBLEBUF)
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
	def update(self, card, amt):

		screen.blit(backgroundimg, card.rect, card.rect)#remove initial image from screen
		#pygame.time.wait(2000)
		card.rect.top += amt #move the image in the buffer
		#ballsprite.draw(screen) #draws new image to screen
		#pygame.display.update()#reload the image to screen

def counters():
	global slider_strength, slider_intelligence, slider_habitat, slider_demeanor, slider_ability, slider_comp, slider_mat, slider_dev, ballsprite
	
	
	slider_strength= slider1([40, 230])
	slider_intelligence= slider1([112, 230])
	slider_habitat= slider1([185, 230])
	slider_demeanor= slider1([259, 230])
	slider_ability = slider1( [333, 230])
	slider_comp = slider2([670, 400])
	slider_mat = slider2([670, 440])
	slider_dev = slider2([670, 480])
	ballsprite = pygame.sprite.RenderPlain((slider_strength, slider_intelligence, slider_habitat, slider_demeanor, slider_ability, slider_comp, slider_mat, slider_dev))
	ballsprite.draw(screen)#prints sliders to screen
	font = pygame.font.Font(None, 14)
	text = font.render("50", 1, (155,155,155)) #prints days left on screen
	screen.blit(text, (70, 90))
	font = pygame.font.Font(None, 24)
	text = font.render("Proteus", 1, (155,155,155))
	screen.blit(text, (425, 0))
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

	moves_leftstr=str(int(moves_left))
	total_strengthstr=str(int(total_strength))	
	total_intelligencestr=str(int(total_intelligence))
	total_habitatstr=str(int(total_habitat))
	total_demeanorstr=str(int(total_demeanor))
	total_abilitystr=str(int(total_ability))
	total_compstr=str(int(total_comp))
	total_matstr=str(int(total_mat))
	total_devstr=str(int(total_dev))
	
	screen.fill ((0,0,0), (70, 90, 20, 15))#clear moves area
	screen.fill ((0,0,0), (45, 362, 25, 20))#clear strength area
	screen.fill ((0,0,0), (115, 362, 20, 20))#clear intelligence area
	screen.fill ((0,0,0), (115, 362, 20, 20))#clear habitat area
	screen.fill ((0,0,0), (259, 362, 20, 20))#clear demeanor area
	screen.fill ((0,0,0), (115, 362, 20, 20))#clear ability area
	screen.fill ((0,0,0), (755, 400, 25, 20))#clear comp area
	screen.fill ((0,0,0), (755, 440, 25, 20))#clear mat area
	screen.fill ((0,0,0), (755, 480, 25, 20))#clear dev area
	
	font = pygame.font.Font(None, 14)
	text = font.render(moves_leftstr, 1, (155,155,155))
	screen.blit(text, (70, 90))
	font = pygame.font.Font(None, 18)
	text = font.render(total_strengthstr, 1, (155,155,155))
 	screen.blit(text, (45, 362))
	text = font.render(total_intelligencestr, 1, (155,155,155))
	screen.blit(text, (115, 362))
	text = font.render(total_habitatstr, 1, (155,155,155))
	screen.blit(text, (185, 362))
	text = font.render(total_demeanorstr, 1, (155,155,155))
	screen.blit(text, (259, 362))
	text = font.render(total_abilitystr, 1, (155,155,155))
	screen.blit(text, (333, 362))
	text = font.render(total_compstr, 1, (155,155,155))
	screen.blit(text, (755,400))
	text = font.render(total_matstr, 1, (155,155,155))
	screen.blit(text, (755,440))
	text = font.render(total_devstr, 1, (155,155,155))
	screen.blit(text, (755,480))
	pygame.display.update()	
	#print "made it to end of add"
def shuffledeal():

	global  card1, card2, card3, card4, card5, card6, card7, card8, sound_play, sound_deal, card1_dealt, card2_dealt, card3_dealt, card4_dealt, sound_play, sound_deal, sound_attack
	#sound_play= pygame.mixer.Sound("play.wav")
	#sound_deal= pygame.mixer.Sound("deal.wav")
	#sound_attack=pygame.mixer.Sound("attack.wav")
	#sound_deal.play()
	
	screen.blit(screen, (0,0))
	card1 = Card('bear.png', -5, 1, 1, 0, 0, "Bear", -5,0,0, 0)
	card2 = Card('deer.png', -1, 5, 3, 1, 4, "Deer", 0, 0,-10,0)
	card3 = Card('elephant.png', -7, 1, -1, -4, -2, "Elephant", 0, 0, -15, 0)
	card4 = Card('fox.png', 1, 3, -5, 2, 4, "Fox", 0, -10, 0, 0)
	card5 = Card('gazelle.png', -2, -3, -8, 1, 3, "Gazelle", -10,0,0, 0)
	card6 = Card('gorilla.png', -6, -6, -3, -6, -2, "Gorilla", 0, 0,0,0)
	card7 = Card('greyhound.png', 1,2, -6, -4, -1, "Greyhound", 0, -5, 0, 0)
	card8 = Card('shark.png', -4, 7, -8, -4, -7, "Shark", -15, 0, 0, 0)
	card9 = Card('warthog.png', 4, 7, 2, -4, -7, "Warthog", 0,0,-15, 0)
	card10 = Card('wolf.png', -3, 3, 8, 4, -2, "Wolf", 0, -15,0,0)
	card11 = Card('snakehead.png', 5, 3, -10, -10, -7, "Snakehead", -15, 0, 0, 0)
	card12 = Card('ostrich.png', -4, -3, -8, -4, 7, "Ostrich", 0, -15, 0, 0)
	card13 = Card('python.png', -3, 5, 8, 2, 3, "Python", -20,0,0, 0)
	card14 = Card('tiger.png', -6, 3, -1, -4, -5, "Tiger", 0, 0,-5,0)
	card15 = Card('coopershawk.png', -4, -3, -1, -4, -7, "Coopers' Hawk", 0, 0, -10, 0)
	card16 = Card('compresource.png', 0, 0, 0, 0, 0, "Resource", 10, 0, 0, 0)
	card17 = Card('matresource.png', 0, 0, 0, 0, 0, "Resource", 0, 10, 0, 0)
	card18 = Card('devresource.png', 0, 0, 0, 0, 0, "Resource", 0, 0, 10, 0)
	
	card_deck = [card1, card2, card3, card4, card5, card6, card7, card8, card9, card10, card11, card12, card13, card14, card15, card16, card17, card18]
	random.shuffle(card_deck)
	card1_dealt = card_deck[0]
	card2_dealt = card_deck[1]
	card3_dealt = card_deck[2]
	card4_dealt = card_deck[3]
	screen.blit(backgroundimg, card1_dealt.rect, card1_dealt.rect)
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
			
def check_score(total_comp, total_mat, total_dev):
	if total_comp <= 90:
		caution1 = caution([600,520])
		screen.blit(caution1.image, caution1.rect)
	#if total_comp <= 90:
		#total_comp = 0
		#slider2.update(slider_comp, slider_comp, card1_dealt.comp)
		#print total_comp
	else:
		#caution1.kill()
		print "greater than 80"
		#screen.blit(backgroundimg, caution1.rect, caution1.rect)
	if total_mat <=50:
		caution1 = caution([600,520])
		screen.blit(caution1.image, caution1.rect)
	if total_dev <=50:
		caution1 = caution([600,520])
		screen.blit(caution1.image, caution1.rect)
	
class slider1(pygame.sprite.Sprite):
	def __init__(self, initial_position):
		pygame.sprite.Sprite.__init__(self)
		self.image, self.rect = load_png(slider_img)
		self.rect.topleft = initial_position

	def update(self, card, amt):

		screen.blit(backgroundimg, card.rect, card.rect)#remove initial image from screen
		#pygame.time.wait(2000)
		card.rect.top += amt #move the image in the buffer
		ballsprite.draw(screen) #draws new image to screen
		pygame.display.update()#reload the image to screen
		
class slider2(pygame.sprite.Sprite):
	def __init__(self, initial_position):
		pygame.sprite.Sprite.__init__(self)
		self.image, self.rect = load_png(slider_img)
		self.rect.topleft = initial_position

	def update(self, card, amt):

		screen.blit(backgroundimg, card.rect, card.rect)#remove initial image from screen
		#pygame.time.wait(2000)
		card.rect.left += amt #move the image in the buffer
		ballsprite.draw(screen) #draws new image to screen
		pygame.display.update()#reload the image to screen
						
def move_sliders(card1_moved, card2_moved, card3_moved, card4_moved):
	if (card1_moved == 1):
		#print "card1 dealt moved "
		slider1.update(slider_strength, slider_strength, card1_dealt.strength)
		slider1.update(slider_intelligence, slider_intelligence, card1_dealt.intelligence)
		slider1.update(slider_habitat, slider_habitat, card1_dealt.habitat)
		slider1.update(slider_demeanor, slider_demeanor, card1_dealt.demeanor)
		slider1.update(slider_ability, slider_ability, card1_dealt.ability)
		slider2.update(slider_comp, slider_comp, card1_dealt.comp)
		slider2.update(slider_mat, slider_mat, card1_dealt.mat)
		slider2.update(slider_dev, slider_dev, card1_dealt.dev)
	if (card2_moved == 1):
		#print "card2 dealt moved"
		slider1.update(slider_strength, slider_strength, card2_dealt.strength)
		slider1.update(slider_intelligence, slider_intelligence, card2_dealt.intelligence)
		slider1.update(slider_habitat, slider_habitat, card2_dealt.habitat)
		slider1.update(slider_demeanor, slider_demeanor, card2_dealt.demeanor)
		slider1.update(slider_ability, slider_ability, card2_dealt.ability)
		slider2.update(slider_comp, slider_comp, card2_dealt.comp)
		slider2.update(slider_mat, slider_mat, card2_dealt.mat)
		slider2.update(slider_dev, slider_dev, card2_dealt.dev)
	if (card3_moved == 1):
		#print "card3 dealt moved"
		slider1.update(slider_strength, slider_strength, card3_dealt.strength)
		slider1.update(slider_intelligence, slider_intelligence, card3_dealt.intelligence)
		slider1.update(slider_habitat, slider_habitat, card3_dealt.habitat)
		slider1.update(slider_demeanor, slider_demeanor, card3_dealt.demeanor)
		slider1.update(slider_ability, slider_ability, card3_dealt.ability)
		slider2.update(slider_comp, slider_comp, card3_dealt.comp)
		slider2.update(slider_mat, slider_mat, card3_dealt.mat)
		slider2.update(slider_dev, slider_dev, card3_dealt.dev)
	if (card4_moved == 1):
		#print "card3 dealt moved"
		slider1.update(slider_strength, slider_strength, card4_dealt.strength)
		slider1.update(slider_intelligence, slider_intelligence, card4_dealt.intelligence)
		slider1.update(slider_habitat, slider_habitat, card4_dealt.habitat)
		slider1.update(slider_demeanor, slider_demeanor, card4_dealt.demeanor)
		slider1.update(slider_ability, slider_ability, card4_dealt.ability)
		slider2.update(slider_comp, slider_comp, card4_dealt.comp)
		slider2.update(slider_mat, slider_mat, card4_dealt.mat)
		slider2.update(slider_dev, slider_dev, card4_dealt.dev)
				
def play():
	#global caution1
	#caution1 = caution([600,520])
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
		
			if event.type == MOUSEBUTTONDOWN:
                        	#sound_play.play()
				pos = pygame.mouse.get_pos()
				mouseRect=[[pos[0],pos[1]],[0,0]]
				mouseRect=Rect(mouseRect)
				#print mouseRect
				m=mouseRect.collidelist(card_collide)
				#print m		
		
				if m == 0:
				#if event.type is KEYDOWN and event.key == K_1: #play first card
					#pygame.display.update(card1_dealt)
                			card1_dealt.rect.topleft = (play_area_x,play_area_y)
					card1_fill = screen.fill ((0,0,0), (8,deal_area_y, card_width, card_height))
					screen.blit(card1_dealt.image, card1_dealt.rect.topleft)
					card1_dealt.moved = 1
					moves_left = moves_left -1
					pygame.display.update(card1_dealt)
					pygame.display.update(card1_fill)
					
				#sound_play.play()
				if m==1:
			#if event.type is KEYDOWN and event.key == K_2:#play second card
					card2_dealt.rect.topleft = (play_area_x,play_area_y)
					card2_fill = screen.fill ((0,0,0), (152,deal_area_y, card_width, card_height))
					screen.blit(card2_dealt.image, card2_dealt.rect)
					card2_dealt.moved = 1
					moves_left = moves_left -1
					pygame.display.update(card2_dealt)
					pygame.display.update(card2_fill)
				#sound_play.play()
				if m==2:
				#if event.type is KEYDOWN and event.key == K_3:#play third card
					card3_dealt.rect.topleft = (play_area_x,play_area_y)
					card3_fill = screen.fill ((0,0,0), (292,deal_area_y, card_width, card_height))
					screen.blit(card3_dealt.image, card3_dealt.rect)	
					card3_dealt.moved = 1
					moves_left = moves_left -1
					pygame.display.update(card3_dealt)
					pygame.display.update(card3_fill)
				#sound_play.play()
				if m==3:
				#if event.type is KEYDOWN and event.key == K_4:#play fourth card
					card4_dealt.rect.topleft = (play_area_x,play_area_y)
					card4_fill = screen.fill ((0,0,0), (435,deal_area_y, card_width, card_height))
					screen.blit(card4_dealt.image, card4_dealt.rect)
					card4_dealt.moved = 1
					moves_left = moves_left -1
					pygame.display.update(card4_dealt)
					pygame.display.update(card4_fill)
				#sound_play.play()
			
			if event.type is KEYDOWN and event.key == K_6: #6 monsters attack!
				add (card1_dealt.strength, card2_dealt.strength, card3_dealt.strength, card4_dealt.strength, card1_dealt.intelligence, card2_dealt.intelligence, card3_dealt.intelligence, card4_dealt.intelligence, card1_dealt.habitat, card2_dealt.habitat, card3_dealt.habitat, card4_dealt.habitat, card1_dealt.demeanor, card2_dealt.demeanor, card3_dealt.demeanor, card4_dealt.demeanor, card1_dealt.ability, card2_dealt.ability, card3_dealt.ability, card4_dealt.ability, card1_dealt.moved, card2_dealt.moved, card3_dealt.moved, card4_dealt.moved, card1_dealt.name, card2_dealt.name, card3_dealt.name, card4_dealt.name, card1_dealt.comp, card2_dealt.comp, card3_dealt.comp, card4_dealt.comp, card1_dealt.mat, card2_dealt.mat, card3_dealt.mat, card4_dealt.mat, card1_dealt.dev, card2_dealt.dev, card3_dealt.dev, card4_dealt.dev)
				move_sliders(card1_dealt.moved, card2_dealt.moved, card3_dealt.moved, card4_dealt.moved)
				
				#sound_attack.play()
				screen.fill ((0,0,0), (8,deal_area_y, card_width, card_height))
				screen.fill ((0,0,0), (152,deal_area_y, card_width, card_height))
				screen.fill ((0,0,0), (292,deal_area_y, card_width, card_height))
				screen.fill ((0,0,0), (435,deal_area_y, card_width, card_height))
				screen.fill ((0,0,0), (play_area_x,play_area_y, card_width,card_height))
				check_score(total_comp, total_mat, total_dev)
				shuffledeal()
				card1.moved = 0
				card2.moved = 0
				card3.moved = 0
				card4.moved = 0
				pygame.display.update()		
				
screen.blit(screen, (0,0))
pygame.display.update() 

def main():
	pygame.init()
	counters()
	shuffledeal()
	
	play()
	#pygame.mixer.init()
	#pygame.mouse.set_visible(0)
if __name__ == '__main__':
    
    main()