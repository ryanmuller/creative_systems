Feature: Project memberships
  Users should be able to join a project as a member
  So that they can be a part of that project

    Scenario: Join a project
    Given a project exists with a name of "Cat pictures"
    And I am signed in
    And I am not a member of the "Cat pictures" project
    When I go to the "Cat pictures" project page
    And I click "Join"
    Then I should see myself on the list of members


