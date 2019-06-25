require "selenium-webdriver"

driver = Selenium::Webdriver.for :chrome
driver.navigate.to "https://formy-project.herokuapp.com/datepicker"

datefield = driver.find_element(id: 'datepicker')
datefield.send_keys('03/27/2019')
datefield.send_keys :return