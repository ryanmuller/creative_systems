Feature: Comments
  I should be able to leave comments on stuff to share my awesome and unique viewpoint

    Background: 
      Given a project exists with a name of "Cat pictures"
      And the following user exists:
          | email         | name              | password |
          | user@test.com | "Testy McUserton" | please   |
      And I sign in as "user@test.com/please"

    Scenario: Commenting on projects
      Given I am a member of the "Cat pictures" project
      When I go to the "Cat pictures" project page
      And I leave the comment "this project is sweet"
      Then I should see the comment "this project is sweet"

