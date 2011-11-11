Feature: Comments
  I should be able to leave comments on stuff to share my awesome and unique viewpoint

    Scenario: Commenting on projects
      Given a project exists with a name of "Cat Pictures"
      When I go to the "Cat Pictures" project page
      And I leave the comment "this project is sweet"
      Then I should see the comment "this project is sweet"

