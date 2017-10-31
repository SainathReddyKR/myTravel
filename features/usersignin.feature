Feature: User
  As a user, i want to sign in.

  Scenario: Sign in into the website

  A user must be able to sign in.

    Given I am a user
    And there is a login option in page
    Then I provide username and password
    And I click on the sign in button
    Then I should be getting an email to confirm my emailid
    When I click on confirmation link
    Then I should be logged into the system sucessfully