When /^I go to the admin page$/ do
  visit admin_path
end

When /^I add the preference "(.*)"$/ do |cp|
  fill_in("Preference", { :with => cp })
  click_button("Add")
end


