Given /^there is a project called "(.*)"$/ do |project|
  Project.new(:name => project)
end

When /^I go to the projects page$/ do
  visit projects_path
end

When /^I go to the "(.*)" project page$/ do |project|
  visit projects_path
  click_link project
end

Then /^I should see the project "([^"]*)"$/ do |text|
  page.should have_content(text)
end
