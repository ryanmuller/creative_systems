Feature: Edit User
  As a registered user of the website
  I want to edit my user profile
  so I can change my username

    Scenario: I sign in and edit my account
      Given the following user exists:
        | email         | name              | password |
        | user@test.com | "Testy McUserton" | please   |
      When I sign in as "user@test.com/please"
      And I go to edit my account
      And I change my name to "baz" 
      And I go to my profile
      Then I should see "User: baz"
