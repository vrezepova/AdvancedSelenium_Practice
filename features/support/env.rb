require 'rubygems'
require 'selenium-webdriver'
require 'cucumber'

# $driver = Selenium::WebDriver.for :firefox
# $driver = Selenium::WebDriver.for :chrome
$driver = Selenium::WebDriver.for :safari
$dropdown = Selenium::WebDriver:: Support:: Select

