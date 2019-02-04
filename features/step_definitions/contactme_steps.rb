  path = "C:/Users/root/RubymineProjects/rubymine-automation-practicalsqa/drivers/chromedriver.exe"

Given(/^I navigate to Contact Me page$/) do
  @browser = Selenium::WebDriver.for :chrome, driver_path: path
  url1 = "http://www.old.practicalsqa.net/wp-login.php?redirect_to=http%3A%2F%2Fwww.old.practicalsqa.net%2F&reauth=1"
  @browser.navigate.to url1
end

When(/^I login with user name "([^"]*)" and password "([^"]*)"$/) do |username, password|
  @browser.find_element(xpath: "//input[@id = 'user_login']").send_key username
  @browser.find_element(xpath: "//input[@id = 'user_pass']").send_key password
  @browser.find_element(xpath: "//input[@id = 'wp-submit']").click
end

When(/^I verify Contact Me page loaded$/) do
  url2 = "http://www.old.practicalsqa.net/contact-me/"
  @browser.navigate.to url2
  @browser.find_element(xpath: "//h1[@class = 'entry-title' and text()='Contact Me']" )
end

Then(/^I write my comment "([^"]*)"$/) do |arg|
  @browser.find_element(id: "comment").send_keys arg
end

And(/^I click on Post Comment button$/) do
  @browser.find_element(id: "submit").click
end
