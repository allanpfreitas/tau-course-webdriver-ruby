require 'selenium-webdriver'

driver = Selenium::Webdriver.for :chrome

driver.navigate.to "https://formy-project.herokuapp.com/keypress"

name = driver.find_element(id:'name')

name.send_keys('Allan Freitas')

button = driver.find_element(id:'button')

button.click
