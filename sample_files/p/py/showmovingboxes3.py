import pygame, os
from pygame.locals import *

screen = pygame.display.set_mode((800,600), HWSURFACE|DOUBLEBUF)
backgroundimg = pygame.image.load("background.png").convert()
screen.blit(backgroundimg, (0,0))
pygame.display.flip()

class card1(pygame.sprite.Sprite):
	def __init__(self, color, initial_position):
		pygame.sprite.Sprite.__init__(self)
		self.image = pygame.Surface([45, 7])
		self.image.fill(color)
		self.rect = self.image.get_rect()
		self.rect.topleft = initial_position

	def update(self,  amt):
		self.rect.top += amt
		
class card2(pygame.sprite.Sprite):
	def __init__(self, color, initial_position):
		pygame.sprite.Sprite.__init__(self)
		self.image = pygame.Surface([45, 7])
		self.image.fill(color)
		self.rect = self.image.get_rect()
		self.rect.topleft = initial_position

	def update(self,  amt):
		self.rect.top += amt		
pygame.init()		
boxes1 = pygame.sprite.RenderUpdates()
boxes2 = pygame.sprite.RenderUpdates()
slider_strength= boxes1.add(card1([255, 0, 0], [40, 225]))
slider_intelligence= boxes2.add(card2([255, 0, 0], [140, 225]))	
def move_box(amt):
	  for b in boxes1:
			boxes1.update(amt)
   			rectlist = boxes1.draw(screen)
    			pygame.display.update(rectlist)
    			boxes1.clear(screen, backgroundimg)
move_box(0)
move_box(0)
while 1:
	pygame.event.pump()
	keyinput = pygame.key.get_pressed()
	if keyinput[K_ESCAPE] or pygame.event.peek(QUIT):
           		break
   		
	for event in pygame.event.get():
		if event.type is KEYDOWN and event.key == K_1: 
               			move_box(10)
pygame.display.update()

