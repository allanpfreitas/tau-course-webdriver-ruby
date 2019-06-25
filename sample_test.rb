require "selenium-webdriver"
#require 'webdrivers'

driver = Selenium::Webdriver.for :chrome

driver.navigate.to "http://google.com"

element = driver.find_element(name: 'q')

element.click

element.send_keys "hello ateliware"

element.submit

driver.quit