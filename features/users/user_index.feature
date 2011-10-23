Feature: List users
  As a user
  I want to see all the cats

  Background: 
    Given I am signed in

  Scenario: View list of users
    Given the following users exists:
      | name | email         |
      | cat  | cat1@test.com |
      | cat2 | cat2@test.com |
    When I go to the list of users
    Then I should see "cat" 
    And I should see "cat2"

