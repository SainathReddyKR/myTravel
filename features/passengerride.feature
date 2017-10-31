Feature: User
  As a user, i want to add a new ride as passenger.

  Scenario: Adding ride

  A user must be able to add a ride.

    Given I am an old user and I go to sign in page
    Then I enter my username and password and sign in
    Then I select  add ride on homepage
    And I select type of Vehicle
    And add vehicle Model
   And I select the fuel type
   And I enter the rent
    And I enter Number of seats
    And I enter pickup location
    And I enter the Pickup Address here
    And I enter whether I deliver the vehicle to User preferred location
    And I enter the Mileage
    And I select the features of your Vehicle
    And I  select what the customers are restricted from
    And I submit form by seleting postadd
    Then I should be redirected to the new ride page and see my ride