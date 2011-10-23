Feature: Sign up
  I should be able to sign up to be a cat

    Background:
      Given I am not logged in
      And I am on the home page
      And I go to the sign up page

    Scenario: User signs up with valid info
      When I sign up with valid info
      Then I should see a welcome message
      
    Scenario: User signs up with invalid email
      When I sign up with an invalid email
      Then I should see "Email is invalid"

    Scenario: User signs up without password
      When I sign up without a password
      Then I should see "Password can't be blank"

    Scenario: User signs up without password confirmation
      When I sign up without password confirmation
      Then I should see "Password doesn't match confirmation"

    Scenario: User signs up with mismatched password and confirmation
      When I sign up with mismatched password and confirmation
      Then I should see "Password doesn't match confirmation"

