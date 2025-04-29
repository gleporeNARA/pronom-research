from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import requests

# create a new Firefox session
driver = webdriver.Firefox()
driver.implicitly_wait(30)
driver.maximize_window()

# Navigate to the application home page
driver.get("https://results.rmraces.live/Corrigan-Sports-Enterprises/events/2019/baltimore-running-festival/results")

# get the search textbox
#search_field = driver.find_element_by_id("lst-ib")
#search_field.clear()

## enter search keyword and submit
#search_field.send_keys("Selenium WebDriver Interview questions")
#search_field.submit()

# get the list of elements which are displayed after the search
# currently on result page using find_elements_by_class_name method
lists= driver.find_elements_by_class_name("table-responsive")

print ("Found table")
# get the number of elements found
#print ("Found " + str(len(lists)) + " searches:")

# iterate through each element and print the text that is
# name of the search

#i=0
#for listitem in lists:
   #print (listitem.get_attribute("innerHTML"))
   #i=i+1
   #if(i>10):
      #break

# close the browser window
driver.quit()
