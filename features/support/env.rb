require 'capybara/cucumber'
require 'test-unit'
require "selenium/webdriver"

# Capybara.register_driver :chrome do |app|
# 	Capybara::Selenium::Driver.new(app,
#   :browser => :chrome,
#   :profile => profile,
#   :args => ["--window-size=10000,10000"]
# )
#   # profile = Selenium::WebDriver::Chrome::Profile.new
#   # profile['extensions.password_manager_enabled'] = false
#   # Capybara::Selenium::Driver.new(app, :browser => :chrome, profile: profile)
# end

#Capybara.app_host = "http://www.gmail.com"
Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Driver::Selenium.new(app,
    :browser => :remote,
    :url => "http://127.0.0.1:4444/wd/hub",
    :desired_capabilities => :internet_explorer)
end

# Capybara.javascript_driver = :chrome


# Capybara.register_driver :chrome do |app|
#   profile = Selenium::WebDriver::Chrome::Profile.new
#   profile["download.default_directory"] = "C:/Ruby22-x64/bin/chromedriver.exe"
#   Capybara::Selenium::Driver.new(app, :browser => :chrome, :profile => profile)
# end

# Capybara.default_driver = Capybara.javascript_driver = :chrome
#require 'selenium-webdriver'
# Specify the driver path
#chromedriver_path = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"browsers","chromedriver.exe")

#Selenium::WebDriver::Chrome.driver_path = chromedriver_path
