gem 'selenium-webdriver', '=2.53.4'
require 'selenium-webdriver'
require_relative 'login_page'

driver = Selenium::WebDriver.for :firefox
driver.get "http://vdb-stage.herokuapp.com/"

login_page = LoginPage.new(driver)
login_page.login("mfinn@happyfuncorp.com", "happiness4U")

sleep(10)
# Make sure to kill the driver when you're done, or the browser never closes
driver.quit