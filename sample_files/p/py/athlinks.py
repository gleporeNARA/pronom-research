#!/usr/bin/env python3
from selenium import webdriver
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.support.ui import Select
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.common.exceptions import NoSuchElementException
from selenium.common.exceptions import NoAlertPresentException
driver = webdriver.Firefox()
import time
import sys
import csv
import os

my_race = sys.argv[1]
driver.get(my_race)
driver.maximize_window()

page_count = 1

time.sleep(2) 

while True:
    try:

        time.sleep(2) 
        for element in driver.find_elements_by_xpath("//div[@id='eventResults_1582238']"):
            spl = element.text.split("\n") # split into list of individual items
            a=str(("\n".join(["|".join(spl[i:i+11]) for i in range(0,len(spl),11)]))) # join into chunks of 11 and add a newline to separate the output
            print (a)
        #with open('athlinks.csv', 'a') as f:
            #writer = csv.writer(f, delimiter='|')
            #writer.writerow(headers)
            #writer.writerows(row for row in rows if row)
        
        #driver.implicitly_wait(1) 
        print ("Looking for button " + str(page_count))
        driver.find_element_by_link_text(str(page_count)).click() 
        #next_button = driver.find_element_by_link_text(str(page_count))
        #next_button = driver.find_element_by_id("pager")
        #next_button.click
        #next_button = driver.find_element_by_link_text("&gt;")
        #next_button.click
        page_count+=1
        #if next_button.is_enabled():
            
            #print ("Fetching page " + str(page_count))
            #driver.execute_script("arguments[0].click();", next_button)
        #else:
            #print ("Next is not enabled")
            #break
    except NoSuchElementException:
        print ("Element not found")
        #break
     
driver.quit()


#os.chdir("/home/lepore/data/striders/results")
#os.system("./init2.py athlinks.csv")
