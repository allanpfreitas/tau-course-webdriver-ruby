require "selenium-webdriver"

driver = Selenium::Webdriver.for :chrome
driver.navigate.to "https://formy-project.herokuapp.com/radiobutton"

first_radio = driver.find_element(id: 'radio-button-1')
first_radio.click

radio_button_2 = driver.find_element(css: 'input[value="option2"]')
radio_button_2.click

radio_button_3 = driver.find_element(xpath: '/html/body/div/div[3]/label')
radio_button_3.click