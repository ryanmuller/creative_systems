Feature: Contribution preferences
  As an admin of the site
  I want to be able to specify which contribution preferences a user can set.

    Scenario: I add a CP
      Given I am signed in
      When I go to the admin page
      And I add the preference "User research"
      Then I should see "User research"

