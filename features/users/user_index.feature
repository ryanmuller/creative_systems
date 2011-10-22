Feature: List users
  As a user
  I want to see all the cats

  Scenario: View list of users
    Given there is a user named "cat" with an email "cat@cat.com" and password "meow"
    And there is a user named "cat2" with an email "cat2@cat.com" and password "purr"
    When I go to the homepage
    And I click on "People"
    Then I should see "cat" 
    And I should see "cat2"

