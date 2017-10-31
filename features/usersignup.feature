Feature: User
  As a user, i want to register in the website using email confirmation .

  Scenario: Sign in into the website

  A user must be able to register in the website

    Given I am a non existing user
    When I visit the website
    Then I click on the link to sign up
    Then I should enter my details in the form
    And I submit the form
    Then I am successfully signed up