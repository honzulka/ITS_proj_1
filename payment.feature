Feature: Payment management
  As an administrator I want to manage member payments so that membership fees are tracked

  Background:
    Given I am logged in as administrator

  # col. 10
  Scenario: Create a required payment
    Given I am on the payments page
    When I click on the "Operations" button
    And I start creating a new payment
    And I fill in the required payment details:
      | Field        | Value            |
      | Amount       | 2000             |
      | Date         | 06/30/2026       |
      | Reason       | CASH             |
    And I fill optional field note
    And I submit the new payment form
    Then the new payment appears in the payments list as an unpaired transaction

