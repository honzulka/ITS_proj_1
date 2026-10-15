Feature: Membership management
  As an administrator I want to manage teams and members so that club structure is maintained

  Background:
    Given I am logged in as administrator

  # col. 1
  Scenario: Create a new team
    Given I am on the teams page
    When I fill the team name
    And I fill the team note
    And I submit the new team form
    Then the newly created team appears in the team list

  # col. 2
  Scenario: Create a new member
    Given I am on the members page
    When I start creating a new member
    And I fill in the required member details:
      | Field       | Value |
      | First name  | John  |
      | Last name   | Smith |
    And I optionally fill in the optional fields:
      | Field                  | Value                    |
      | Primary email          | john.smith@email.com     |
      | Primary phone number   | +420123456789            |
      | Date of birth          | 04/27/2001               |
      | Address                | 123 Street, City         |
      | Secondary email        | john.smith_sec@email.com |
      | Secondary phone number | +420987654321            |
      | Birth number           | 010427/1234              |
      | Football ID            | 123456789                |
      | Member status          | Active                   |
    And I submit the new member form
    Then a confirmation message about member creation is displayed
    And the newly created member appears in the members list

  # col. 3
  Scenario: Assign member to team
    Given I am on the members page
    When I open a member detail
    And I fill the team assignment details:
      | Field        | Value       |
      | Team name    | Dorost      |
      | Start date   | 04/04/2025  |
    And I optionally fill in the optional fields:
      | Field      | Value     |
      | End date   | 08/08/2026|
      | Note       | Any text  |
    And I confirm the team assignment
    Then a confirmation message about team assignment is displayed
    And the member should be listed in the assigned team

  # col. 4
  Scenario: Filter members by team
    Given I am on the members page
    When I filter members by team "A muži"
    Then only members from team "A muži" are displayed

  # col. 5
  Scenario: Edit member information
    Given I am on the members page
    When I open a member detail
    And I modify member information
    And I save the member changes
    Then a confirmation message about member update is displayed
    And the updated member information is visible in the members list

