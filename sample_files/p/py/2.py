from bs4 import BeautifulSoup
from selenium import webdriver
import pandas as pd
import time

browser = webdriver.Firefox()
browser.get('http://results.nyrr.org/event/M2017/finishers')
html = browser.page_source
soup = BeautifulSoup(html, "lxml")
#table = soup.find("div", attrs={"ng-show": "eventFinishers.length > 0"})
#table2 = table.findAll("div", {"class": "cmd-finisher ng-scope", "ng-repeat": "eventFinisher in eventFinishers"})

for j in range (0,10):
    #Scroll down the page to load more posts
    browser.execute_script("window.scrollTo(0, document.body.scrollHeight);")
    time.sleep(10)
    j=j+1
    browser.find_element_by_css_selector('a.button-load-more').click()
    

    table = soup.find("div", attrs={"ng-show": "eventFinishers.length > 0"})
    table2 = table.findAll("div", {"class": "cmd-finisher ng-scope", "ng-repeat": "eventFinisher in eventFinishers"})

    print(table2[j].text)
