Feature: List projects
  In order to view the current projects
  As a user
  I should be able to see a list of projects

    Scenario: Viewing projects
      Given a project exists with a name of "Cat Pictures"
      And a project exists with a name of "Grooming station"
      When I go to the projects page
      Then I should see the project "Cat Pictures"
      And I should see the project "Grooming station"

