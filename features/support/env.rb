require 'rubygems'
require 'selenium-webdriver'
require 'cucumber'
require 'spreadsheet'

# $driver = Selenium::WebDriver.for :firefox
# $driver = Selenium::WebDriver.for :chrome
$driver = Selenium::WebDriver.for :safari
$dropdown = Selenium::WebDriver:: Support:: Select

def click_button_w_text(text)
 btn = $driver.find_element(:xpath, "//button[text() = '"+text+"']")
 btn.click
end