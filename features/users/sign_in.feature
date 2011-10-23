Feature: Sign in
  In order to get access to protected sections of the site
  A user
  Should be able to sign in

   Background:
    Given I am not logged in
    And the following user exists: 
      | email         | name              | password |
      | user@test.com | "Testy McUserton" | please   |

    Scenario: User is not signed up
      Given no user exists with an email of "user2@test.com"
      When I go to the sign in page
      And I sign in as "user2@test.com/please"
      Then I should see "Invalid email or password."
      And I go to the home page
      And I should be signed out

    Scenario: User enters wrong password
      When I go to the sign in page
      And I sign in as "user@test.com/wrongpassword"
      Then I should see "Invalid email or password."
      And I go to the home page
      And I should be signed out

    Scenario: User signs in successfully with email
      When I go to the sign in page
      And I sign in as "user@test.com/please"
      Then I should see "Signed in successfully."
      And I should be signed in
      When I return next time
      Then I should be already signed in

