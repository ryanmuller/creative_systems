Given /^there is a project called "(.*)"$/ do |project|
  Project.new(:name => project)
end

When /^I go to the projects page$/ do
  visit projects_path
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end
