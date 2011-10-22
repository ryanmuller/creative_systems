When /^I go to the homepage$/ do
  visit root_path
end

Then /^I should see a link to "([^"]*)"$/ do |text|
  within('#navigation') do
    page.should have_content(text)
  end
end


