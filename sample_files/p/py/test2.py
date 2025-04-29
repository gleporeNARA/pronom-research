#!/usr/bin/env python

#import everything
import os, pygame
from pygame.locals import *


#quick function to load an image
def load_image(name):
    path = os.path.join('/home/knoppix/games/', name)
    return pygame.image.load(path).convert()


#here's the full code
def main():
    pygame.init()
    screen = pygame.display.set_mode((800, 600))


    image = load_image('hawk.png')
    screen.blit(image, (5, 325))
    
    image2 = load_image('octopus.png')
    screen.blit(image2, (155, 325))
    
    image3 = load_image('tiger.png')
    screen.blit(image3, (305, 325))
    
    image4 = load_image('resource.png')
    screen.blit(image4, (455, 325))
    
    image5 = load_image('vertlinered.png')
    screen.blit(image5, (50, 30))
    
    image6 = load_image('vertlinered.png')
    screen.blit(image6, (100, 30))
    
    image7 = load_image('vertlinered.png')
    screen.blit(image7, (150, 30))
    
    image8 = load_image('vertlinered.png')
    screen.blit(image8, (200, 30))
    
    image9 = load_image('vertlinered.png')
    screen.blit(image9, (250, 30))
    
    image10 = load_image('vertlinered.png')
    screen.blit(image10, (300, 30))
    
    image11 = load_image('horcirblue.png')
    screen.blit(image11, (610, 355))
    
    image12 = load_image('horcirblue.png')
    screen.blit(image11, (610, 405))
    
    image13 = load_image('horcirblue.png')
    screen.blit(image11, (610, 455))


    #objects = []
   # for x in range(10):
       # o = GameObject(player, x*40, x)
       # objects.append(o)

    while 1:
        
        pygame.display.update()

if __name__ == '__main__': main()
