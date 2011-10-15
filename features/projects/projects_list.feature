Feature: List projects
  In order to view the current projects
  A user
  Should be able to list projects

    Scenario: Viewing projects
      Given I am a user
      And there is a project called Cat Pictures
      When I go to the projects page
      Then I should see "Projects"
      And I should see "Cat Pictures"
