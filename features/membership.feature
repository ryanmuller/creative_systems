Feature: Project memberships
  Users should be able to join a project as a member
  So that they can be a part of that project

    Background: 
      Given a project exists with a name of "Cat pictures"
      And the following user exists:
          | email         | name              | password |
          | user@test.com | "Testy McUserton" | please   |
      And I sign in as "user@test.com/please"

    Scenario: Join a project
      Given I am not a member of the "Cat pictures" project
      When I go to the "Cat pictures" project page
      And I click "Join"
      Then I should see myself on the list of members


    Scenario: Leave a project
      Given I am a member of the "Cat pictures" project
      When I go to the "Cat pictures" project page
      And I click "Leave"
      Then I should not see myself on the list of members
