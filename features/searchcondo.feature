Feature: User
  As a user, i want to search and book a ride.

  Scenario: Book a ride

  A user must be able to book a ride.

    Given I am an old registered user and I go to sign in page
    Then I give username and password and sign in
    When  I press on view details  button
    Then  I should see condo details
    When I  select rent condo
    Then I should be redirected to the root page
