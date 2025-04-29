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

WebDriverWait(driver, 100000).until(EC.element_to_be_clickable((By.XPATH, '//*[@id="resultsPerPageSelect"]'))).click()
#driver.find_element_by_xpath("//*[@id="resultsPerPageSelect"/option[text()='option_text']").click()
driver.find_element_by_xpath("//select[@id='resultsPerPageSelect']/option[text()='All']").click()
#results_number=driver.find_element_by_name('//*[@id="resultsPerPageSelect"]/option[7]')

#results_number.click()
page_count = 0
time.sleep(5) 
soup2 = BeautifulSoup(driver.page_source, 'html.parser')
table = soup2.find('table', attrs={ "class" : "results"})
headers = [header.text for header in table.find_all('th')]
print ("headers are " + str(headers))
rows = []
for row in table.find_all('tr'):
    rows.append([val.text for val in row.find_all('td')])
        
with open('runsignup.csv', 'a') as f:
    writer = csv.writer(f, delimiter='|')
    writer.writerow(headers)
    writer.writerows(row for row in rows if row)

driver.quit()
os.system("./init2.py runsignup.csv")
