require "selenium-webdriver"
require "webdrivers"

class FormPage
    $driver = Selenium::WebDriver.for :chrome
    $driver.navigate.to "https://formy-project.herokuapp.com/form"

    def fill_form(first_name, last_name, job_title, date)
        $driver.find_element(id: 'first-name').send_keys(first_name)

        $driver.find_element(id: 'last-name').send_keys(last_name)

        $driver.find_element(id: 'job-title').send_keys(job_title)

        $driver.find_element(id: 'radio-button-2').click

        $driver.find_element(id: 'checkbox-2').click

        $driver.find_element(css: 'option[value="2"]').click

        $driver.find_element(id: 'datepicker').send_keys(date)

        $driver.find_element(id: 'datepicker').send_keys :return

        $driver.find_element(css: '.btn.btn-lg.btn-primary').click
        
    end

    def quit_browser
        $driver.quit
    end

    def wait
        wait = Selenium::WebDriver::Wait.new(timeout: 10)
        wait.until {$driver.find_element(class:'alert').displayed?}
    end
end