require "selenium-webdriver"

driver = Selenium::Webdriver.for :chrome
driver.navigate.to "https://formy-project.herokuapp.com/dropdown"

dropdown = driver.find_element(id: 'dropdownMenuButton')
dropdown.click

autocomplete_item = drive.find_element(id: 'autocomplete')
autocomplete_item.click
