Given /^I am not a member of the "(.*)" project$/ do |project|
  p = Project.where("name = ?", project).first
  p.memberships.should be_empty
end

Given /^I am a member of the "(.*)" project$/ do |project|
  visit projects_path
  click_link project
  click_button "Join"
end

When /^I go to the "(.*)" project page$/ do |project|
  visit projects_path
  click_link project
end

When /^I click "Join"$/ do
  click_button "Join"
end

Then /^I should see myself on the list of members$/ do
  page.should have_content("Testy McUserton")
end

When /^I click "Leave"$/ do
  click_button "Leave"
end

Then /^I should not see myself on the list of members$/ do
  page.should_not have_content("Testy McUserton")
end



