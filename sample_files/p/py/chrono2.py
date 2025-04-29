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
import csv
import os

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
page_count = 0

while True:
    try:

        time.sleep(1) 
        #SMRtable = driver.find_element_by_xpath("/html/body/div[2]/div/div[2]/div[3]/div[2]/div[3]/div/div[2]/table")
        soup2 = BeautifulSoup(driver.page_source, 'html.parser')
        table = soup2.find('table', attrs={ "class" : "bazu-results-table ui-widget-content ui-corner-bottom dataTable"})
        headers = [header.text for header in table.find_all('th')]
        rows = []
        for row in table.find_all('tr'):
            rows.append([val.text for val in row.find_all('td')])
        
        with open('chrono_results.csv', 'a') as f:
            writer = csv.writer(f, delimiter='|')
            writer.writerow(headers)
            writer.writerows(row for row in rows if row)
        
        driver.implicitly_wait(1) 
        element = driver.find_element_by_xpath("/html/body/div[2]/div/div[2]/div[3]/div[2]/div[3]/div/div[1]/div[3]/a[3]")
        element = driver.find_element_by_xpath("/html/body/div[2]/div/div[2]/div[3]/div[2]/div[3]/div/div[1]/div[3]/a[3][not(contains(@class, 'disabled'))]")
        #element = driver.find_element_by_link_text("Next")
        
        if element.is_enabled():
            page_count+=1
            print ("Fetching page " + str(page_count))
            driver.execute_script("arguments[0].click();", element)
        else:
            #print ("Next is not enabled")
            break
    except NoSuchElementException:
        #print ("Element not found")
        break
    
driver.quit()
#os.chdir("/home/lepore/data/striders/results")
os.system("./init2.py chrono_results.csv")
