Feature: Edit User
  As a registered user of the website
  I want to edit my user profile
     
    Background:
      Given the following user exists:
        | email         | name              | password |
        | user@test.com | "Testy McUserton" | please   |
      When I sign in as "user@test.com/please"
      And I go to edit my account


    Scenario: I change my name
      When I change my name to "baz" 
      And I go to my profile
      Then I should see "User: baz"

    Scenario: I change my contribution preference
      Given the contribution preference "User research"
      When I select "no" for the contribution preference "User research"
      And I go to my profile
      Then I should see "User research: no"


