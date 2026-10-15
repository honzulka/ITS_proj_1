Feature: User management
  As an administrator I want to manage users and their roles so that access control is enforced

  Background:
    Given I am logged in as administrator

  # col. 6
  Scenario: Create a new user
    Given I am on the users page
    When I start creating a new user
    And I fill in the required user details:
    | Field    | Value              |
    | Email    | user@test.com      |
    | Password | password123        |
    | Role     | Player             |
    And I submit the new user form
    Then the newly created user appears in the users list

  # col. 7
  Scenario: Assign user to member
    Given I am on the users page
    And user "user@test.com" exists
    When I open user detail for "user@test.com)"
    And I assign the user to member "John Smith"
    And I chose "on my own" option
    And I save the user changes by clicking "link member" button
    Then the user "user@test.com" is linked to member "John Smith"

  # col. 8
  Scenario: Change user role
    Given I am on the users page
    And user "user@test.com" exists
    When I click "edit" button for "user@test.com"
    And I change the user role to "Trainer"
    And I save the user changes
    Then user "user@test.com" should have role "Trainer"

  # col. 9
  Scenario: User without permission cannot access user management
    Given I am logged in as regular user
    When I try to access the users page
    Then access to the users page should be denied

