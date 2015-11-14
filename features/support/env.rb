require 'rubygems'
require 'selenium-webdriver'
require 'cucumber'
require 'spreadsheet'
require 'gmail'
require 'net/imap'


 $driver = Selenium::WebDriver.for :firefox
# $driver = Selenium::WebDriver.for :chrome
# $driver = Selenium::WebDriver.for :safari
$dropdown = Selenium::WebDriver:: Support:: Select



def click_button_w_text(text)
 btn = $driver.find_element(:xpath, "//button[text() = '"+text+"']")
 btn.click
end


def array_sort_verification(array_one)

 if array_one.sort != array_one
  raise 'Array is not sorted!'
 end
end

AfterStep do
 $driver.manage.timeouts.implicit_wait = 15
end


# Before do
#   $driver.Delete_all_cookies
# end


After do
  $driver.close
  $driver.quit
end