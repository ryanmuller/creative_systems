Feature: Sign out
  A signed in user should be able to sign out

    Scenario: User signs out
      Given the following user exists: 
        | email         | name              | password |
        | user@test.com | "Testy McUserton" | please   |
      When I sign in as "user@test.com/please"
      Then I should be signed in
      And I sign out
      Then I should see "Signed out"
      When I return next time
      Then I should be signed out
