Feature: User
  As a user, i want to search and book a ride.

  Scenario: Book a ride

  A user must be able to book a ride.

    Given I am an already existing user and I go to sign in page
    Then I provide my credentials username and password and sign in
    When  I press on rent a vehicle button
    Then  I should see list of rides available
    When I  select Add ride
    Then I should be redirected to the home page
