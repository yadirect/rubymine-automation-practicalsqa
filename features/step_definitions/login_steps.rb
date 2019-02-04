  path = "drivers/chromedriver.exe"
  # path = "C:/Users/root/RubymineProjects/rubymine-automation-practicalsqa/drivers/chromedriver.exe"
  # path = "drivers/geckodriver.exe"
  # path = "C:/Users/root/RubymineProjects/rubymine-automation-practicalsqa/drivers/geckodriver.exe"

Given(/^I open a browser$/) do
  @browser = Selenium::WebDriver.for :chrome, driver_path: path
  # @browser = Selenium::WebDriver.for :firefox, driver_path: path
  url = "http://www.old.practicalsqa.net/wp-login.php?redirect_to=http%3A%2F%2Fwww.old.practicalsqa.net%2F&reauth=1"
  @browser.navigate.to url
end

When(/^I login with a "([^"]*)" username and "([^"]*)" password$/) do |username, password|
  @browser.find_element(xpath: "//input[@id = 'user_login']").send_key username
  @browser.find_element(xpath: "//input[@id = 'user_pass']").send_key password
  @browser.find_element(xpath: "//input[@id = 'wp-submit']").click
end

Then(/^I verify Pruby ractical SQA page is loaded$/) do
  @browser.find_element(xpath: "//h1[@class = 'site-title']" )
end