require "selenium-webdriver"

driver = Selenium::Webdriver.for :chrome
driver.navigate.to "https://formy-project.herokuapp.com/autocomplete"

autocomplete = driver.find_element(id: 'autocomplete')
autocomplete.send_keys('Rua Pasteur, 463 - Batel, Curitiba - State of Paraná, Brazil')

#Implicit implicit
driver.manage.timeouts.implicit_wait = 5

#Explicit wait = wait until a specific condition happens, better option
wait = Selenium::Webdriver::Wait.new(timeout: 5)
wait.until { driver.find_element(class: 'pac-item').displayed? }


autocomple_result = driver.find_element(class: 'pac-item')
autocomple_result.click





