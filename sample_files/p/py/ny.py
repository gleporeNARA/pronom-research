from selenium import webdriver
import urllib
browser = webdriver.Chrome('chromedriver')


browser.get('http://results.nyrr.org/event/M2019/finishers')
browser.maximize_window()

gender_menu = browser.find_element_by_xpath("//div[@class='dropdown dropdown-main short-filter']")
gender_menu.click()
gender_menu.find_element_by_xpath("//ul[@role='menu']/li[3]").click()

age_menu = browser.find_element_by_xpath("//div[@class='dropdown dropdown-main short-filter ages-filter']")
age_menu.click()
ages = age_menu.find_elements_by_css_selector('ul[role="menu"]>li>a')
for age in ages:
    if age.text == 'AGE: 20-24':
        age.click()
        break
