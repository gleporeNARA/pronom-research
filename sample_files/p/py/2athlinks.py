import os
import re
import urllib
import pandas as pd
import urllib
import random
from selenium import webdriver
import time

# We're going to loop through all the events on Athlinks, and collect all the athlete information
baseUrl = "https://www.athlinks.com/Events/"
browser = webdriver.Firefox()

# Run on a small subset first to test:

eventId = 28649
eventUrl = baseUrl + eventId


# Go to main event page
browser.get(eventUrl)
time.sleep(random.randrange(3, 4))

# Download main page
fileName = eventId + "_Page_1"
source = browser.execute_script('return document.documentElement.innerHTML')
f = open('%s.html' % fileName,'w')
f.write(source.encode('utf-8'))
f.close()


# Determine how many 'Overall' results pages there :
nOverallPages = browser.find_elements_by_xpath("//option[contains(text(),'Overall ')]")

# If there's more than one page, loop through them and download those pages as well
if len(nOverallPages) > 1:
    for page in range(2, len(nOverallPages)+1):
        nextPageUrl = baseUrl + eventId + "/Courses/" + str(int(random.random()*1000)) + "?view=O&filter=A" + str(page)
        browser.get(nextPageUrl)
        fileName = eventId + "_Page_" + str(page)
        time.sleep(random.randrange(3, 4))
        source = browser.execute_script('return document.documentElement.innerHTML')
        f = open('%s.html' % fileName,'w')
        f.write(source.encode('utf-8'))
        f.close()
        
    
