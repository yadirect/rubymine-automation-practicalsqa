Feature: Basic Authentication

  @login
  Scenario: User with valid credentials can login
    Given I open a browser
    When I login with a "admin" username and "admin" password
    Then  I verify Pruby ractical SQA page is loaded