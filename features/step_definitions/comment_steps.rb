Given /^I'm a member of the project "(.*)"$/ do |project|
  Given %{a project exists with a name of "#{project}"}
  visit projects_path
  click_link project
  click_button "Join"
end


When /^I leave the comment "(.*)"$/ do |comment|
  fill_in("Leave a comment", { :with => comment })
  click_button("Submit")
end

Then /^I should see the comment "(.*)"$/ do |comment|
  within('#comments') do
    page.should have_content(comment)
  end
end


