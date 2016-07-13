# Capybara.app_host = "file:///C:/Users/539285/Desktop/Google.html"
# require 'selenium-webdriver'
require 'test-unit'
When(/^I go to the blog$/) do
  # visit "file:///C:/Users/539285/Desktop/Google.html"
 

  @driver = Selenium::WebDriver.for :ie
#   @driver.navigate.to "http://google.com"

# @element = @driver.find_element(:id, 'lst-ib')
# @element.send_keys('aspyct')
@driver.get "http://www.gmail.com"
sleep(5);
#assert_equal @driver.title, "Gmail: Email from Google"

end

Then(/^I should see articles$/) do
  # fill_in('q',:with => "CCUU") # express the regexp above with the code you wish you had
 #@element.send_keys "selenium webdriver"

# button = @driver.find_element(:name, 'btnG')
# button.click

loginBox = @driver.find_element(:id, "Email")
		loginBox.send_keys("gvk14times@gmail.com")
		 nextBtn = @driver.find_element(:id, "next")
		nextBtn.click()   
		sleep(10);
		pwBox = @driver.find_element(:id, "Passwd")
		pwBox.send_keys("gvk9491535808")
		signinBtn = @driver.find_element(:id, "signIn")
		signinBtn.click()
		#@driver.quit
		#assert_match @driver.title, "gvk14times@gmail.com - Gmail" 

# @driver.quit
end


# input = browser.find_element(:id, 'gbqfq')
# > input.send_keys('aspyct')
# > button = browser.find_element(:id, 'gbqfb')
# > button.click

#gvk14times@gmail.com - Gmail