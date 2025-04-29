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
from bs4 import BeautifulSoup
import sys

my_race = sys.argv[1]
driver.get(my_race)
driver.maximize_window()

race=driver.find_element_by_xpath('/html/body/div[2]/div/div[2]/div[3]/div[2]/ul/li[2]/a')
time.sleep(2)

WebDriverWait(driver, 100000).until(EC.element_to_be_clickable((By.XPATH, '/html/body/div[2]/div/div[2]/div[3]/div[2]/ul/li[2]/a'))).click()
race.click()

marathon=driver.find_element_by_link_text("Results")
marathon.click()
race=driver.find_element_by_xpath('/html/body/div[2]/div/div[2]/div[3]/div[2]/div[3]/div/div[1]/div[1]/span[4]/select')
race.click()
results_number=driver.find_element_by_xpath('/html/body/div[2]/div/div[2]/div[3]/div[2]/div[3]/div/div[1]/div[1]/span[4]/select/option[3]')
results_number.click()

soup = BeautifulSoup(driver.page_source, 'html.parser')
header = [element.get_text() for element in soup.find_all('th')]
print (header)

while True:
    try:

        time.sleep(1) 
        SMRtable = driver.find_element_by_xpath("/html/body/div[2]/div/div[2]/div[3]/div[2]/div[3]/div/div[2]/table")

        for i in SMRtable.find_elements_by_xpath('.//tr'):

            table_row = (i.get_attribute('innerHTML'))
            soup = BeautifulSoup(table_row, 'html.parser')
            name= soup("td", {'class' : 'ui-widget-content bazu-name' })
            for row in name:
                a_cells = soup.find_all('a')
                for a_cell in a_cells:
                    print (a_cell.text, end =" ")
                    print ("|", end =" ")
                print ("\n")

    
        driver.implicitly_wait(1) 
        element = driver.find_element_by_xpath("/html/body/div[2]/div/div[2]/div[3]/div[2]/div[3]/div/div[1]/div[3]/a[3]")
        element = driver.find_element_by_xpath("/html/body/div[2]/div/div[2]/div[3]/div[2]/div[3]/div/div[1]/div[3]/a[3][not(contains(@class, 'disabled'))]")
        #element = driver.find_element_by_link_text("Next")
        
        if element.is_enabled():
            #print ("Next is enabled")
            driver.execute_script("arguments[0].click();", element)
        else:
            #print ("Next is not enabled")
            break
    except NoSuchElementException:
        #print ("Element not found")
        break
    
driver.quit()
