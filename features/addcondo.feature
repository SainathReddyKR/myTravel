Feature: User
  As a user, i want to add a new condo as owner to provide as rental condo for others.

  Scenario: Adding condo for rent

  A user must be able to add a condo for rent.

    Given I am an registered user and I go to sign in page
    Then I provide my email and password and sign in
    Then I select add condo on home page
    And I enter Name of the Condo
    And I enter Rent bahts or month
    And I enter Address
    And I enter Contract months
    And I enter Area sqm
    And I enter Number of Bedrooms
    And I enter Number of Bathrooms
    And I enter Number of Kitchens
    And I select the services in my Condo
    And I select nearby supermarkets
    And I submit form by selecting postadd button
    Then I should be redirected to the condo details page and should be able to see my add