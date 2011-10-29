Given /^I am not a member of the "(.*)" project$/ do |project|
  Project.find({ :name => project })
  Project.members.should_not include(current_user)
end

When /^I go to the "(.*)" project page$/ do |project|
  visit projects_path
  click_link project
end

When /^I click "Join"$/ do
  click_button "Join"
end

Then /^I should see myself on the list of members$/ do
  page.should have_content(current_user.name)
end

