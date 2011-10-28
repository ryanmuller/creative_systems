When /^I go to the admin page$/ do
  visit contribution_preferences_path
end

When /^I add the preference "(.*)"$/ do |cp|
  fill_in("Name", { :with => cp })
  click_button("Add")
end


