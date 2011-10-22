Feature: Navigation
  In order to use the site
  A user
  Should be able to navigate to different sections

    Scenario: User wants to see a list of People
      When I go to the homepage
      Then I should see a link to "People"

    Scenario: User wants to see a list of Projects
      When I go to the homepage
      Then I should see a link to "Projects"
