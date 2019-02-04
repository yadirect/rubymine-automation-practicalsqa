Feature: Contact me

  @contactmetest
  Scenario: Leaving a comment in contact me page
    Given I navigate to Contact Me page
    When I login with user name "admin" and password "admin"
    When I verify Contact Me page loaded
    Then I write my comment "Hello world id977"
    And I click on Post Comment button